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
-- Module      : Network.AWS.ELBv2.CreateLoadBalancer
-- Copyright   : (c) 2013-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an Application load balancer.
--
-- To create listeners for your load balancer, use < CreateListener>. You can add security groups, subnets, and tags when you create your load balancer, or you can add them later using < SetSecurityGroups>, < SetSubnets>, and < AddTags>.
--
-- To describe your current load balancers, see < DescribeLoadBalancers>. When you are finished with a load balancer, you can delete it using < DeleteLoadBalancer>.
--
-- You can create up to 20 load balancers per region per account. You can request an increase for the number of load balancers for your account. For more information, see <http://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-limits.html Limits for Your Application Load Balancer> in the /Application Load Balancers Guide/.
module Network.AWS.ELBv2.CreateLoadBalancer
    (
    -- * Creating a Request
      createLoadBalancer
    , CreateLoadBalancer
    -- * Request Lenses
    , clbSecurityGroups
    , clbScheme
    , clbTags
    , clbName
    , clbSubnets

    -- * Destructuring the Response
    , createLoadBalancerResponse
    , CreateLoadBalancerResponse
    -- * Response Lenses
    , clbrsLoadBalancers
    , clbrsResponseStatus
    ) where

import           Network.AWS.ELBv2.Types
import           Network.AWS.ELBv2.Types.Product
import           Network.AWS.Lens
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | Contains the parameters for CreateLoadBalancer.
--
-- /See:/ 'createLoadBalancer' smart constructor.
data CreateLoadBalancer = CreateLoadBalancer'
    { _clbSecurityGroups :: !(Maybe [Text])
    , _clbScheme         :: !(Maybe LoadBalancerSchemeEnum)
    , _clbTags           :: !(Maybe (List1 Tag))
    , _clbName           :: !Text
    , _clbSubnets        :: ![Text]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreateLoadBalancer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clbSecurityGroups'
--
-- * 'clbScheme'
--
-- * 'clbTags'
--
-- * 'clbName'
--
-- * 'clbSubnets'
createLoadBalancer
    :: Text -- ^ 'clbName'
    -> CreateLoadBalancer
createLoadBalancer pName_ =
    CreateLoadBalancer'
    { _clbSecurityGroups = Nothing
    , _clbScheme = Nothing
    , _clbTags = Nothing
    , _clbName = pName_
    , _clbSubnets = mempty
    }

-- | The IDs of the security groups to assign to the load balancer.
clbSecurityGroups :: Lens' CreateLoadBalancer [Text]
clbSecurityGroups = lens _clbSecurityGroups (\ s a -> s{_clbSecurityGroups = a}) . _Default . _Coerce;

-- | The nodes of an Internet-facing load balancer have public IP addresses. The DNS name of an Internet-facing load balancer is publicly resolvable to the public IP addresses of the nodes. Therefore, Internet-facing load balancers can route requests from clients over the Internet.
--
-- The nodes of an internal load balancer have only private IP addresses. The DNS name of an internal load balancer is publicly resolvable to the private IP addresses of the nodes. Therefore, internal load balancers can only route requests from clients with access to the VPC for the load balancer.
--
-- The default is an Internet-facing load balancer.
clbScheme :: Lens' CreateLoadBalancer (Maybe LoadBalancerSchemeEnum)
clbScheme = lens _clbScheme (\ s a -> s{_clbScheme = a});

-- | One or more tags to assign to the load balancer.
clbTags :: Lens' CreateLoadBalancer (Maybe (NonEmpty Tag))
clbTags = lens _clbTags (\ s a -> s{_clbTags = a}) . mapping _List1;

-- | The name of the load balancer.
--
-- This name must be unique within your AWS account, can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, and must not begin or end with a hyphen.
clbName :: Lens' CreateLoadBalancer Text
clbName = lens _clbName (\ s a -> s{_clbName = a});

-- | The IDs of the subnets to attach to the load balancer. You can specify only one subnet per Availability Zone. You must specify subnets from at least two Availability Zones.
clbSubnets :: Lens' CreateLoadBalancer [Text]
clbSubnets = lens _clbSubnets (\ s a -> s{_clbSubnets = a}) . _Coerce;

instance AWSRequest CreateLoadBalancer where
        type Rs CreateLoadBalancer =
             CreateLoadBalancerResponse
        request = postQuery eLBv2
        response
          = receiveXMLWrapper "CreateLoadBalancerResult"
              (\ s h x ->
                 CreateLoadBalancerResponse' <$>
                   (x .@? "LoadBalancers" .!@ mempty >>=
                      may (parseXMLList "member"))
                     <*> (pure (fromEnum s)))

instance Hashable CreateLoadBalancer

instance NFData CreateLoadBalancer

instance ToHeaders CreateLoadBalancer where
        toHeaders = const mempty

instance ToPath CreateLoadBalancer where
        toPath = const "/"

instance ToQuery CreateLoadBalancer where
        toQuery CreateLoadBalancer'{..}
          = mconcat
              ["Action" =: ("CreateLoadBalancer" :: ByteString),
               "Version" =: ("2015-12-01" :: ByteString),
               "SecurityGroups" =:
                 toQuery
                   (toQueryList "member" <$> _clbSecurityGroups),
               "Scheme" =: _clbScheme,
               "Tags" =:
                 toQuery (toQueryList "member" <$> _clbTags),
               "Name" =: _clbName,
               "Subnets" =: toQueryList "member" _clbSubnets]

-- | Contains the output of CreateLoadBalancer.
--
-- /See:/ 'createLoadBalancerResponse' smart constructor.
data CreateLoadBalancerResponse a = CreateLoadBalancerResponse'
    { _clbrsLoadBalancers  :: !(Maybe [LoadBalancer])
    , _clbrsResponseStatus :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreateLoadBalancerResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clbrsLoadBalancers'
--
-- * 'clbrsResponseStatus'
createLoadBalancerResponse
    :: Int -- ^ 'clbrsResponseStatus'
    -> CreateLoadBalancerResponse (a)
createLoadBalancerResponse pResponseStatus_ =
    CreateLoadBalancerResponse'
    { _clbrsLoadBalancers = Nothing
    , _clbrsResponseStatus = pResponseStatus_
    }

-- | Information about the load balancer.
clbrsLoadBalancers :: Lens' (CreateLoadBalancerResponse (a)) [LoadBalancer]
clbrsLoadBalancers = lens _clbrsLoadBalancers (\ s a -> s{_clbrsLoadBalancers = a}) . _Default . _Coerce;

-- | The response status code.
clbrsResponseStatus :: Lens' (CreateLoadBalancerResponse (a)) Int
clbrsResponseStatus = lens _clbrsResponseStatus (\ s a -> s{_clbrsResponseStatus = a});

instance NFData CreateLoadBalancerResponse
