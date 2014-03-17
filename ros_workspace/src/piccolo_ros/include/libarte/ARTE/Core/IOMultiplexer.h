// ==========================================================================
// Copyright (C) 2013 Força Aérea Portuguesa - Academia                     =
// Centro de Investigação da Academiafa da Força Aérea                      =
// Granja do Marques, Academia, Pero-Pinheiro                               =
// ==========================================================================
// Project: ARTE-Debug@build
// Date:    Mar 14, 2013                                
// Author:  posilva                                
// -------------------------------------------------------------------------=
// Change Log:                                                         
// -------------------------------------------------------------------------=
// Date       / Author              /Description                          
// ==========================================================================
// Description: IOMultiplexer.h
// 
// ==========================================================================

#ifndef IOMULTIPLEXER_H_
#define IOMULTIPLEXER_H_
#include <stddef.h>
#include <sys/select.h>
#include <list>
namespace Core
{
  enum PollStatus{

  };
  class IOMultiplexer
  {
  public:
    IOMultiplexer();
    virtual
    ~IOMultiplexer();


    void add(int* descriptor);
    void remove(int *descriptor);
    bool poll(int timeout);
    bool isReady(int*descriptor);
  private:
    std::list<int> fileDescritorsList_;
    fd_set setfd_;
    fd_set readfd_;
  };

} /* namespace Core */
#endif /* IOMULTIPLEXER_H_ */
