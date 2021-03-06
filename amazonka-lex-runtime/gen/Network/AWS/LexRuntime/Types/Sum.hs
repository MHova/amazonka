{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.LexRuntime.Types.Sum
-- Copyright   : (c) 2013-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.LexRuntime.Types.Sum where

import           Network.AWS.Prelude

data ContentType =
    ApplicationVnd_Amazonaws_Card_Generic
    deriving (Eq,Ord,Read,Show,Enum,Bounded,Data,Typeable,Generic)

instance FromText ContentType where
    parser = takeLowerText >>= \case
        "application/vnd.amazonaws.card.generic" -> pure ApplicationVnd_Amazonaws_Card_Generic
        e -> fromTextError $ "Failure parsing ContentType from value: '" <> e
           <> "'. Accepted values: application/vnd.amazonaws.card.generic"

instance ToText ContentType where
    toText = \case
        ApplicationVnd_Amazonaws_Card_Generic -> "application/vnd.amazonaws.card.generic"

instance Hashable     ContentType
instance NFData       ContentType
instance ToByteString ContentType
instance ToQuery      ContentType
instance ToHeader     ContentType

instance FromJSON ContentType where
    parseJSON = parseJSONText "ContentType"

data DialogState
    = ConfirmIntent
    | ElicitIntent
    | ElicitSlot
    | Failed
    | Fulfilled
    | ReadyForFulfillment
    deriving (Eq,Ord,Read,Show,Enum,Bounded,Data,Typeable,Generic)

instance FromText DialogState where
    parser = takeLowerText >>= \case
        "confirmintent" -> pure ConfirmIntent
        "elicitintent" -> pure ElicitIntent
        "elicitslot" -> pure ElicitSlot
        "failed" -> pure Failed
        "fulfilled" -> pure Fulfilled
        "readyforfulfillment" -> pure ReadyForFulfillment
        e -> fromTextError $ "Failure parsing DialogState from value: '" <> e
           <> "'. Accepted values: confirmintent, elicitintent, elicitslot, failed, fulfilled, readyforfulfillment"

instance ToText DialogState where
    toText = \case
        ConfirmIntent -> "ConfirmIntent"
        ElicitIntent -> "ElicitIntent"
        ElicitSlot -> "ElicitSlot"
        Failed -> "Failed"
        Fulfilled -> "Fulfilled"
        ReadyForFulfillment -> "ReadyForFulfillment"

instance Hashable     DialogState
instance NFData       DialogState
instance ToByteString DialogState
instance ToQuery      DialogState
instance ToHeader     DialogState

instance FromJSON DialogState where
    parseJSON = parseJSONText "DialogState"
