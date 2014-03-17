import errno
import select
import socket
port = 5000

gateway =  socket.socket(socket.AF_INET, socket.SOCK_STREAM)
gateway.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
gateway.bind(('',port))
gateway.listen(1)
gateway.setblocking(0)

HOST = 'localhost'
PORT = 2001    #our port from before
ADDR = (HOST,PORT)
BUFSIZE = 4096

server_client = socket.socket( socket.AF_INET,socket.SOCK_STREAM)
server_client.setblocking(0)
rc=server_client.connect_ex((ADDR))
if rc!=errno.EINPROGRESS:
    print "connected to server:", ADDR
    pass
rlist = [gateway,server_client]
clients = {}

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
    elif sock == server_client:
        message = sock.recv(BUFSIZE)
        for c in clients:
            c.sendall(message)
        else:
            message = sock.recv(BUFSIZE)
            if len(message):
                server_client.sendall(message)
            else:
                del clients[sock]
                rlist.remove(sock)
                sock.close()
#--
gateway.close()
