{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.Sum
-- Copyright   : (c) 2013-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ElasticSearch.Types.Sum where

import           Network.AWS.Prelude

data ESPartitionInstanceType
    = C4_2XLarge_Elasticsearch
    | C4_4XLarge_Elasticsearch
    | C4_8XLarge_Elasticsearch
    | C4_Large_Elasticsearch
    | C4_XLarge_Elasticsearch
    | D2_2XLarge_Elasticsearch
    | D2_4XLarge_Elasticsearch
    | D2_8XLarge_Elasticsearch
    | D2_XLarge_Elasticsearch
    | I2_2XLarge_Elasticsearch
    | I2_XLarge_Elasticsearch
    | M3_2XLarge_Elasticsearch
    | M3_Large_Elasticsearch
    | M3_Medium_Elasticsearch
    | M3_XLarge_Elasticsearch
    | M4_10XLarge_Elasticsearch
    | M4_2XLarge_Elasticsearch
    | M4_4XLarge_Elasticsearch
    | M4_Large_Elasticsearch
    | M4_XLarge_Elasticsearch
    | R3_2XLarge_Elasticsearch
    | R3_4XLarge_Elasticsearch
    | R3_8XLarge_Elasticsearch
    | R3_Large_Elasticsearch
    | R3_XLarge_Elasticsearch
    | R4_16XLarge_Elasticsearch
    | R4_2XLarge_Elasticsearch
    | R4_4XLarge_Elasticsearch
    | R4_8XLarge_Elasticsearch
    | R4_Large_Elasticsearch
    | R4_XLarge_Elasticsearch
    | T2_Medium_Elasticsearch
    | T2_Micro_Elasticsearch
    | T2_Small_Elasticsearch
    deriving (Eq,Ord,Read,Show,Enum,Bounded,Data,Typeable,Generic)

instance FromText ESPartitionInstanceType where
    parser = takeLowerText >>= \case
        "c4.2xlarge.elasticsearch" -> pure C4_2XLarge_Elasticsearch
        "c4.4xlarge.elasticsearch" -> pure C4_4XLarge_Elasticsearch
        "c4.8xlarge.elasticsearch" -> pure C4_8XLarge_Elasticsearch
        "c4.large.elasticsearch" -> pure C4_Large_Elasticsearch
        "c4.xlarge.elasticsearch" -> pure C4_XLarge_Elasticsearch
        "d2.2xlarge.elasticsearch" -> pure D2_2XLarge_Elasticsearch
        "d2.4xlarge.elasticsearch" -> pure D2_4XLarge_Elasticsearch
        "d2.8xlarge.elasticsearch" -> pure D2_8XLarge_Elasticsearch
        "d2.xlarge.elasticsearch" -> pure D2_XLarge_Elasticsearch
        "i2.2xlarge.elasticsearch" -> pure I2_2XLarge_Elasticsearch
        "i2.xlarge.elasticsearch" -> pure I2_XLarge_Elasticsearch
        "m3.2xlarge.elasticsearch" -> pure M3_2XLarge_Elasticsearch
        "m3.large.elasticsearch" -> pure M3_Large_Elasticsearch
        "m3.medium.elasticsearch" -> pure M3_Medium_Elasticsearch
        "m3.xlarge.elasticsearch" -> pure M3_XLarge_Elasticsearch
        "m4.10xlarge.elasticsearch" -> pure M4_10XLarge_Elasticsearch
        "m4.2xlarge.elasticsearch" -> pure M4_2XLarge_Elasticsearch
        "m4.4xlarge.elasticsearch" -> pure M4_4XLarge_Elasticsearch
        "m4.large.elasticsearch" -> pure M4_Large_Elasticsearch
        "m4.xlarge.elasticsearch" -> pure M4_XLarge_Elasticsearch
        "r3.2xlarge.elasticsearch" -> pure R3_2XLarge_Elasticsearch
        "r3.4xlarge.elasticsearch" -> pure R3_4XLarge_Elasticsearch
        "r3.8xlarge.elasticsearch" -> pure R3_8XLarge_Elasticsearch
        "r3.large.elasticsearch" -> pure R3_Large_Elasticsearch
        "r3.xlarge.elasticsearch" -> pure R3_XLarge_Elasticsearch
        "r4.16xlarge.elasticsearch" -> pure R4_16XLarge_Elasticsearch
        "r4.2xlarge.elasticsearch" -> pure R4_2XLarge_Elasticsearch
        "r4.4xlarge.elasticsearch" -> pure R4_4XLarge_Elasticsearch
        "r4.8xlarge.elasticsearch" -> pure R4_8XLarge_Elasticsearch
        "r4.large.elasticsearch" -> pure R4_Large_Elasticsearch
        "r4.xlarge.elasticsearch" -> pure R4_XLarge_Elasticsearch
        "t2.medium.elasticsearch" -> pure T2_Medium_Elasticsearch
        "t2.micro.elasticsearch" -> pure T2_Micro_Elasticsearch
        "t2.small.elasticsearch" -> pure T2_Small_Elasticsearch
        e -> fromTextError $ "Failure parsing ESPartitionInstanceType from value: '" <> e
           <> "'. Accepted values: c4.2xlarge.elasticsearch, c4.4xlarge.elasticsearch, c4.8xlarge.elasticsearch, c4.large.elasticsearch, c4.xlarge.elasticsearch, d2.2xlarge.elasticsearch, d2.4xlarge.elasticsearch, d2.8xlarge.elasticsearch, d2.xlarge.elasticsearch, i2.2xlarge.elasticsearch, i2.xlarge.elasticsearch, m3.2xlarge.elasticsearch, m3.large.elasticsearch, m3.medium.elasticsearch, m3.xlarge.elasticsearch, m4.10xlarge.elasticsearch, m4.2xlarge.elasticsearch, m4.4xlarge.elasticsearch, m4.large.elasticsearch, m4.xlarge.elasticsearch, r3.2xlarge.elasticsearch, r3.4xlarge.elasticsearch, r3.8xlarge.elasticsearch, r3.large.elasticsearch, r3.xlarge.elasticsearch, r4.16xlarge.elasticsearch, r4.2xlarge.elasticsearch, r4.4xlarge.elasticsearch, r4.8xlarge.elasticsearch, r4.large.elasticsearch, r4.xlarge.elasticsearch, t2.medium.elasticsearch, t2.micro.elasticsearch, t2.small.elasticsearch"

instance ToText ESPartitionInstanceType where
    toText = \case
        C4_2XLarge_Elasticsearch -> "c4.2xlarge.elasticsearch"
        C4_4XLarge_Elasticsearch -> "c4.4xlarge.elasticsearch"
        C4_8XLarge_Elasticsearch -> "c4.8xlarge.elasticsearch"
        C4_Large_Elasticsearch -> "c4.large.elasticsearch"
        C4_XLarge_Elasticsearch -> "c4.xlarge.elasticsearch"
        D2_2XLarge_Elasticsearch -> "d2.2xlarge.elasticsearch"
        D2_4XLarge_Elasticsearch -> "d2.4xlarge.elasticsearch"
        D2_8XLarge_Elasticsearch -> "d2.8xlarge.elasticsearch"
        D2_XLarge_Elasticsearch -> "d2.xlarge.elasticsearch"
        I2_2XLarge_Elasticsearch -> "i2.2xlarge.elasticsearch"
        I2_XLarge_Elasticsearch -> "i2.xlarge.elasticsearch"
        M3_2XLarge_Elasticsearch -> "m3.2xlarge.elasticsearch"
        M3_Large_Elasticsearch -> "m3.large.elasticsearch"
        M3_Medium_Elasticsearch -> "m3.medium.elasticsearch"
        M3_XLarge_Elasticsearch -> "m3.xlarge.elasticsearch"
        M4_10XLarge_Elasticsearch -> "m4.10xlarge.elasticsearch"
        M4_2XLarge_Elasticsearch -> "m4.2xlarge.elasticsearch"
        M4_4XLarge_Elasticsearch -> "m4.4xlarge.elasticsearch"
        M4_Large_Elasticsearch -> "m4.large.elasticsearch"
        M4_XLarge_Elasticsearch -> "m4.xlarge.elasticsearch"
        R3_2XLarge_Elasticsearch -> "r3.2xlarge.elasticsearch"
        R3_4XLarge_Elasticsearch -> "r3.4xlarge.elasticsearch"
        R3_8XLarge_Elasticsearch -> "r3.8xlarge.elasticsearch"
        R3_Large_Elasticsearch -> "r3.large.elasticsearch"
        R3_XLarge_Elasticsearch -> "r3.xlarge.elasticsearch"
        R4_16XLarge_Elasticsearch -> "r4.16xlarge.elasticsearch"
        R4_2XLarge_Elasticsearch -> "r4.2xlarge.elasticsearch"
        R4_4XLarge_Elasticsearch -> "r4.4xlarge.elasticsearch"
        R4_8XLarge_Elasticsearch -> "r4.8xlarge.elasticsearch"
        R4_Large_Elasticsearch -> "r4.large.elasticsearch"
        R4_XLarge_Elasticsearch -> "r4.xlarge.elasticsearch"
        T2_Medium_Elasticsearch -> "t2.medium.elasticsearch"
        T2_Micro_Elasticsearch -> "t2.micro.elasticsearch"
        T2_Small_Elasticsearch -> "t2.small.elasticsearch"

instance Hashable     ESPartitionInstanceType
instance NFData       ESPartitionInstanceType
instance ToByteString ESPartitionInstanceType
instance ToQuery      ESPartitionInstanceType
instance ToHeader     ESPartitionInstanceType

instance ToJSON ESPartitionInstanceType where
    toJSON = toJSONText

instance FromJSON ESPartitionInstanceType where
    parseJSON = parseJSONText "ESPartitionInstanceType"

-- | The state of a requested change. One of the following:
--
--
--     * Processing: The request change is still in-process.    * Active: The request change is processed and deployed to the Elasticsearch domain.
--
data OptionState
    = Active
    | Processing
    | RequiresIndexDocuments
    deriving (Eq,Ord,Read,Show,Enum,Bounded,Data,Typeable,Generic)

instance FromText OptionState where
    parser = takeLowerText >>= \case
        "active" -> pure Active
        "processing" -> pure Processing
        "requiresindexdocuments" -> pure RequiresIndexDocuments
        e -> fromTextError $ "Failure parsing OptionState from value: '" <> e
           <> "'. Accepted values: active, processing, requiresindexdocuments"

instance ToText OptionState where
    toText = \case
        Active -> "Active"
        Processing -> "Processing"
        RequiresIndexDocuments -> "RequiresIndexDocuments"

instance Hashable     OptionState
instance NFData       OptionState
instance ToByteString OptionState
instance ToQuery      OptionState
instance ToHeader     OptionState

instance FromJSON OptionState where
    parseJSON = parseJSONText "OptionState"

-- | The type of EBS volume, standard, gp2, or io1. See <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-ebs Configuring EBS-based Storage> for more information.
--
--
data VolumeType
    = GP2
    | IO1
    | Standard
    deriving (Eq,Ord,Read,Show,Enum,Bounded,Data,Typeable,Generic)

instance FromText VolumeType where
    parser = takeLowerText >>= \case
        "gp2" -> pure GP2
        "io1" -> pure IO1
        "standard" -> pure Standard
        e -> fromTextError $ "Failure parsing VolumeType from value: '" <> e
           <> "'. Accepted values: gp2, io1, standard"

instance ToText VolumeType where
    toText = \case
        GP2 -> "gp2"
        IO1 -> "io1"
        Standard -> "standard"

instance Hashable     VolumeType
instance NFData       VolumeType
instance ToByteString VolumeType
instance ToQuery      VolumeType
instance ToHeader     VolumeType

instance ToJSON VolumeType where
    toJSON = toJSONText

instance FromJSON VolumeType where
    parseJSON = parseJSONText "VolumeType"
