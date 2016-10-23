{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.FlushStageAuthorizersCache
-- Copyright   : (c) 2013-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Flushes all authorizer cache entries on a stage.
module Network.AWS.APIGateway.FlushStageAuthorizersCache
    (
    -- * Creating a Request
      flushStageAuthorizersCache
    , FlushStageAuthorizersCache
    -- * Request Lenses
    , fsacRestAPIId
    , fsacStageName

    -- * Destructuring the Response
    , flushStageAuthorizersCacheResponse
    , FlushStageAuthorizersCacheResponse
    ) where

import           Network.AWS.APIGateway.Types
import           Network.AWS.APIGateway.Types.Product
import           Network.AWS.Lens
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | Request to flush authorizer cache entries on a specified stage.
--
-- /See:/ 'flushStageAuthorizersCache' smart constructor.
data FlushStageAuthorizersCache = FlushStageAuthorizersCache'
    { _fsacRestAPIId :: !Text
    , _fsacStageName :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FlushStageAuthorizersCache' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fsacRestAPIId'
--
-- * 'fsacStageName'
flushStageAuthorizersCache
    :: Text -- ^ 'fsacRestAPIId'
    -> Text -- ^ 'fsacStageName'
    -> FlushStageAuthorizersCache
flushStageAuthorizersCache pRestAPIId_ pStageName_ =
    FlushStageAuthorizersCache'
    { _fsacRestAPIId = pRestAPIId_
    , _fsacStageName = pStageName_
    }

-- | The API identifier of the stage to flush.
fsacRestAPIId :: Lens' FlushStageAuthorizersCache Text
fsacRestAPIId = lens _fsacRestAPIId (\ s a -> s{_fsacRestAPIId = a});

-- | The name of the stage to flush.
fsacStageName :: Lens' FlushStageAuthorizersCache Text
fsacStageName = lens _fsacStageName (\ s a -> s{_fsacStageName = a});

instance AWSRequest FlushStageAuthorizersCache where
        type Rs FlushStageAuthorizersCache =
             FlushStageAuthorizersCacheResponse
        request = delete apiGateway
        response
          = receiveNull FlushStageAuthorizersCacheResponse'

instance Hashable FlushStageAuthorizersCache

instance NFData FlushStageAuthorizersCache

instance ToHeaders FlushStageAuthorizersCache where
        toHeaders
          = const
              (mconcat
                 ["Accept" =# ("application/json" :: ByteString)])

instance ToPath FlushStageAuthorizersCache where
        toPath FlushStageAuthorizersCache'{..}
          = mconcat
              ["/restapis/", toBS _fsacRestAPIId, "/stages/",
               toBS _fsacStageName, "/cache/authorizers"]

instance ToQuery FlushStageAuthorizersCache where
        toQuery = const mempty

-- | /See:/ 'flushStageAuthorizersCacheResponse' smart constructor.
data FlushStageAuthorizersCacheResponse a =
    FlushStageAuthorizersCacheResponse'
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FlushStageAuthorizersCacheResponse' with the minimum fields required to make a request.
--
flushStageAuthorizersCacheResponse
    :: FlushStageAuthorizersCacheResponse (a)
flushStageAuthorizersCacheResponse = FlushStageAuthorizersCacheResponse'

instance NFData FlushStageAuthorizersCacheResponse
