// ==========================================================================
// Copyright (C) 2013 Força Aérea Portuguesa - Academia                     =
// Centro de Investigação da Academiafa da Força Aérea                      =
// Granja do Marques, Academia, Pero-Pinheiro                               =
// ==========================================================================
// Project: ARTE-Debug@build
// Date:    Mar 18, 2013                                
// Author:  posilva                                
// -------------------------------------------------------------------------=
// Change Log:                                                         
// -------------------------------------------------------------------------=
// Date       / Author              /Description                          
// ==========================================================================
// Description: ByteConverter.h
// 
// ==========================================================================

#ifndef BYTECONVERTER_H_
#define BYTECONVERTER_H_
#include<cstddef>
#include <arpa/inet.h>
namespace Core
{

  namespace Utils
  {
    class ByteConverter
    {
    public:
      inline static bool
      isLitteEndian()
      {
        return htonl(47) != (47);
      }

      inline static bool
      isBigEndian()
      {
        return !isLitteEndian();
      }

    };
  }
} /* namespace Core */
#endif /* BYTECONVERTER_H_ */
