{-# LANGUAGE DeriveGeneric     #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards   #-}
{-# LANGUAGE TemplateHaskell   #-}
{-# LANGUAGE TypeFamilies      #-}

-- Module      : Network.AWS.EC2.V2014_06_15.ResetImageAttribute
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | Resets an attribute of an AMI to its default value. Example This example
-- resets the launchPermission attribute for the specified AMI.
-- https://ec2.amazonaws.com/?Action=ResetImageAttribute
-- &amp;ImageId=ami-61a54008 &amp;Attribute=launchPermission &amp;AUTHPARAMS
-- &lt;ResetImageAttributeResponse
-- xmlns="http://ec2.amazonaws.com/doc/2014-02-01/"&gt;
-- &lt;requestId&gt;59dbff89-35bd-4eac-99ed-be587EXAMPLE&lt;/requestId&gt;
-- &lt;return&gt;true&lt;/return&gt; &lt;/ResetImageAttributeResponse&gt;.
module Network.AWS.EC2.V2014_06_15.ResetImageAttribute where

import Control.Lens.TH (makeLenses)
import Network.AWS.Request.Query
import Network.AWS.EC2.V2014_06_15.Types
import Network.AWS.Prelude

-- | Minimum specification for a 'ResetImageAttribute' request.
resetImageAttribute :: ResetImageAttributeName -- ^ '_riasAttribute'
                    -> Text -- ^ '_riasImageId'
                    -> ResetImageAttribute
resetImageAttribute p1 p2 = ResetImageAttribute
    { _riasAttribute = p1
    , _riasImageId = p2
    , _riasDryRun = Nothing
    }

data ResetImageAttribute = ResetImageAttribute
    { _riasAttribute :: ResetImageAttributeName
      -- ^ The attribute to reset (currently you can only reset the launch
      -- permission attribute).
    , _riasImageId :: Text
      -- ^ The ID of the AMI.
    , _riasDryRun :: Maybe Bool
      -- ^ 
    } deriving (Show, Generic)

makeLenses ''ResetImageAttribute

instance ToQuery ResetImageAttribute where
    toQuery = genericToQuery def

data ResetImageAttributeResponse = ResetImageAttributeResponse
    deriving (Eq, Show, Generic)

makeLenses ''ResetImageAttributeResponse

instance AWSRequest ResetImageAttribute where
    type Sv ResetImageAttribute = EC2
    type Rs ResetImageAttribute = ResetImageAttributeResponse

    request = post "ResetImageAttribute"
    response _ _ = return (Right ResetImageAttributeResponse)
