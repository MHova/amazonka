-- Module      : Network.AWS.ImportExport.V2010_06_01
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | AWS Import/Export accelerates moving large amounts of data into and out of
-- AWS using portable storage devices for transport. AWS transfers your data
-- directly onto and off of storage devices using Amazon’s high-speed internal
-- network and bypassing the Internet. For significant data sets, AWS
-- Import/Export is often faster than Internet transfer and more cost
-- effective than upgrading your connectivity.
module Network.AWS.ImportExport.V2010_06_01 (module Export) where

import Network.AWS.ImportExport.V2010_06_01.CancelJob as Export
import Network.AWS.ImportExport.V2010_06_01.CreateJob as Export
import Network.AWS.ImportExport.V2010_06_01.GetStatus as Export
import Network.AWS.ImportExport.V2010_06_01.ListJobs as Export
import Network.AWS.ImportExport.V2010_06_01.Types as Export
import Network.AWS.ImportExport.V2010_06_01.UpdateJob as Export
