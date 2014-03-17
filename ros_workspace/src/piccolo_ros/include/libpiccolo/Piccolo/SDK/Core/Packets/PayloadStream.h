// ==========================================================================
// Copyright (C) 2013 Força Aérea Portuguesa - Academia                     =
// Centro de Investigação da Academiafa da Força Aérea                      =
// Granja do Marques, Academia, Pero-Pinheiro                               =
// ==========================================================================
// Project: PiccoloSDK-Debug@build
// Date:    Feb 20, 2013                                
// Author:  posilva                                
// -------------------------------------------------------------------------=
// Change Log:                                                         
// -------------------------------------------------------------------------=
// Date       / Author              /Description                          
// ==========================================================================
// Description: PayloadStream.h
// 
// ==========================================================================

#ifndef PAYLOADSTREAM_H_
#define PAYLOADSTREAM_H_
#include <Piccolo/SDK/Core/Packets/Stream.h>
#include <Piccolo/SDK/SDK.h>


namespace Piccolo
{
  namespace SDK
  {
    namespace Core
    {
      namespace Packets
      {

        class PayloadStream : public Piccolo::SDK::Core::Packets::Stream
        {
        public:
          PayloadStream();
          virtual
          ~PayloadStream();
          Packet* getPacket();
          bool sendPacket(Packet*);
          void load(BYTE_VECTOR *payload);
        protected:
          void parse(BYTE_VECTOR *payload);
        };

      } /* namespace Packets */
    } /* namespace Core */
  } /* namespace SDK */
} /* namespace Piccolo */
#endif /* PAYLOADSTREAM_H_ */
