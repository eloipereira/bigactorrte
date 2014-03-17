#!/usr/bin/env python
# encoding: utf-8
'''
NetworkGateway -- TCP Socket Multiplexer

NetworkGateway is a tool to connect 1 server to n clients

It defines classes_and_methods

@author:Pedro Marques da Silva
            
@copyright:  2013 Academia da Força Aérea. All rights reserved.
            
@license:    license

@contact:    posilva@academiafa.edu.pt
@deffield    updated: Updated
'''

from argparse import ArgumentParser, RawDescriptionHelpFormatter
import errno
import os
import select
import socket
import sys
    

__all__ = []
__version__ = 0.1
__date__ = '2013-07-09'
__updated__ = '2013-07-09'

DEBUG = 0
TESTRUN = 0
PROFILE = 0

class CLIError(Exception):
    '''Generic exception to raise and log different fatal errors.'''
    def __init__(self, msg):
        super(CLIError).__init__(type(self))
        self.msg = "E: %s" % msg
    def __str__(self):
        return self.msg
    def __unicode__(self):
        return self.msg

def main(argv=None):  # IGNORE:C0111
    '''Command line options.'''
    
    if argv is None:
        argv = sys.argv
    else:
        sys.argv.extend(argv)

    program_name = os.path.basename(sys.argv[0])
    program_version = "v%s" % __version__
    program_build_date = str(__updated__)
    program_version_message = '%%(prog)s %s (%s)' % (program_version, program_build_date)
    program_shortdesc = __import__('__main__').__doc__.split("\n")[1]
    program_license = '''%s

  Created by user_name on %s.
  Copyright 2013 organization_name. All rights reserved.
  
  Licensed under the Apache License 2.0
  http://www.apache.org/licenses/LICENSE-2.0
  
  Distributed on an "AS IS" basis without warranties
  or conditions of any kind, either express or implied.

USAGE
''' % (program_shortdesc, str(__date__))

    try:
        # Setup argument parser
        parser = ArgumentParser(description=program_license, formatter_class=RawDescriptionHelpFormatter)
        parser.add_argument("-s", "--server", dest="host", default="localhost",help="Host of the server to connect to ", metavar="HOST")
        parser.add_argument("-v", "--verbose", dest="verbose", action="count", help="set verbosity level ")
        parser.add_argument("-p", "--port", type=int, dest="port", default=2001,help="Connect to this port.  ", metavar="PORT")
        parser.add_argument("-l", "--listen", type=int,dest="listen_port", default=5000,help="Listen clients on this port.", metavar="LISTEN_PORT")
        parser.add_argument('-V', '--version', action='version', version=program_version_message)
        
        # Process arguments
        args = parser.parse_args()
        

        verbose = args.verbose
        port = args.port
        host = args.host
        listen_port = args.listen_port
        
        if verbose > 0:
            print("Verbose mode on")
           
        # gateway server 
        gateway = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        gateway.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
        gateway.bind(('', listen_port))
        gateway.listen(5)
        gateway.setblocking(0)
        if verbose>0:
            print"Server listening on to port", listen_port
        ADDR = (host, port)
        BUFSIZE = 4096
        
        # Client 
        server_client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        server_client.setblocking(0)
        rc = server_client.connect_ex((ADDR))
        if rc != errno.EINPROGRESS:
            print "connected to server:", ADDR
            pass
        if verbose>0:
            print "Connected to Server:", ADDR
        rlist = [gateway, server_client]
        clients = {}
        
        # Main Loop
        while True:
            try:
                in_list, out, excpt = select.select(rlist, [], [])
            except select.error, e:
                break
            except socket.error, e:
                break
        
            for sock in in_list:
                if sock == gateway:
                    client_sock, address = gateway.accept()
                    client_sock.setblocking(0)
                    rlist.append(client_sock)
                    clients[client_sock] = address
                    if verbose>0:
                        print  "New connection from client :", address
                elif sock == server_client:
                    message = sock.recv(BUFSIZE)
                    failed=[]
                    for c in clients:
                        try:
                            c.sendall(message)
                        except: 
                            failed.append(c)
                            print "failed to connect to client"
                        if verbose>0:
                            print  "Sent to all Clients:", len(clients) 
                           
                    for f in failed:
                        del clients[f]
                        rlist.remove(f)
                        f.close()
                else:
                    message = sock.recv(BUFSIZE)
                    if len(message):
                        server_client.sendall(message)
                        if verbose>0:
                            print  "Sent to server client ", len(message) 
                    else:
                        del clients[sock]
                        rlist.remove(sock)
                        sock.close()
                        if verbose>0:
                            print  "Kill client ", sock  
        # --
        gateway.close() 
        return 0
    except KeyboardInterrupt:
        ### handle keyboard interrupt ###
        return 0
    except Exception, e:
        if DEBUG or TESTRUN:
            raise(e)
        indent = len(program_name) * " "
        sys.stderr.write(program_name + ": " + repr(e) + "\n")
        sys.stderr.write(indent + "  for help use --help")
        return 2

if __name__ == "__main__":
    if DEBUG:
        sys.argv.append("-h")
        sys.argv.append("-v")
        sys.argv.append("-s")
    if TESTRUN:
        import doctest
        doctest.testmod()
    if PROFILE:
        import cProfile
        import pstats
        profile_filename = 'TCPGateway_profile.txt'
        cProfile.run('main()', profile_filename)
        statsfile = open("profile_stats.txt", "wb")
        p = pstats.Stats(profile_filename, stream=statsfile)
        stats = p.strip_dirs().sort_stats('cumulative')
        stats.print_stats()
        statsfile.close()
        sys.exit(0)
    sys.exit(main())
