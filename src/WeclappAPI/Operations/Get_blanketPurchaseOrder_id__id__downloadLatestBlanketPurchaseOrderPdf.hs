-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation get_blanketPurchaseOrder_id__id__downloadLatestBlanketPurchaseOrderPdf
module WeclappAPI.Operations.Get_blanketPurchaseOrder_id__id__downloadLatestBlanketPurchaseOrderPdf where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Either
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified Data.Vector
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Network.HTTP.Client
import qualified Network.HTTP.Client as Network.HTTP.Client.Request
import qualified Network.HTTP.Client as Network.HTTP.Client.Types
import qualified Network.HTTP.Simple
import qualified Network.HTTP.Types
import qualified Network.HTTP.Types as Network.HTTP.Types.Status
import qualified Network.HTTP.Types as Network.HTTP.Types.URI
import qualified WeclappAPI.Common
import WeclappAPI.Types

-- | > GET /blanketPurchaseOrder/id/{id}/downloadLatestBlanketPurchaseOrderPdf
-- 
-- 
get_blanketPurchaseOrder_id__id__downloadLatestBlanketPurchaseOrderPdf :: forall m . WeclappAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ id
  -> WeclappAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Get_blanketPurchaseOrder_id__id__downloadLatestBlanketPurchaseOrderPdfResponse) -- ^ Monadic computation which returns the result of the operation
get_blanketPurchaseOrder_id__id__downloadLatestBlanketPurchaseOrderPdf id = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either Get_blanketPurchaseOrder_id__id__downloadLatestBlanketPurchaseOrderPdfResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Get_blanketPurchaseOrder_id__id__downloadLatestBlanketPurchaseOrderPdfResponse200
                                                                                                                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (WeclappAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/blanketPurchaseOrder/id/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ WeclappAPI.Common.stringifyModel id)) GHC.Base.++ "/downloadLatestBlanketPurchaseOrderPdf"))) GHC.Base.mempty)
-- | Represents a response of the operation 'get_blanketPurchaseOrder_id__id__downloadLatestBlanketPurchaseOrderPdf'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Get_blanketPurchaseOrder_id__id__downloadLatestBlanketPurchaseOrderPdfResponseError' is used.
data Get_blanketPurchaseOrder_id__id__downloadLatestBlanketPurchaseOrderPdfResponse =
   Get_blanketPurchaseOrder_id__id__downloadLatestBlanketPurchaseOrderPdfResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | Get_blanketPurchaseOrder_id__id__downloadLatestBlanketPurchaseOrderPdfResponse200 -- ^ downloadLatestBlanketPurchaseOrderPdf response
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | > GET /blanketPurchaseOrder/id/{id}/downloadLatestBlanketPurchaseOrderPdf
-- 
-- The same as 'get_blanketPurchaseOrder_id__id__downloadLatestBlanketPurchaseOrderPdf' but accepts an explicit configuration.
get_blanketPurchaseOrder_id__id__downloadLatestBlanketPurchaseOrderPdfWithConfiguration :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text -- ^ id
  -> m (Network.HTTP.Client.Types.Response Get_blanketPurchaseOrder_id__id__downloadLatestBlanketPurchaseOrderPdfResponse) -- ^ Monadic computation which returns the result of the operation
get_blanketPurchaseOrder_id__id__downloadLatestBlanketPurchaseOrderPdfWithConfiguration config
                                                                                        id = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either Get_blanketPurchaseOrder_id__id__downloadLatestBlanketPurchaseOrderPdfResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Get_blanketPurchaseOrder_id__id__downloadLatestBlanketPurchaseOrderPdfResponse200
                                                                                                                                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (WeclappAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/blanketPurchaseOrder/id/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ WeclappAPI.Common.stringifyModel id)) GHC.Base.++ "/downloadLatestBlanketPurchaseOrderPdf"))) GHC.Base.mempty)
-- | > GET /blanketPurchaseOrder/id/{id}/downloadLatestBlanketPurchaseOrderPdf
-- 
-- The same as 'get_blanketPurchaseOrder_id__id__downloadLatestBlanketPurchaseOrderPdf' but returns the raw 'Data.ByteString.Char8.ByteString'.
get_blanketPurchaseOrder_id__id__downloadLatestBlanketPurchaseOrderPdfRaw :: forall m . WeclappAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ id
  -> WeclappAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
get_blanketPurchaseOrder_id__id__downloadLatestBlanketPurchaseOrderPdfRaw id = GHC.Base.id (WeclappAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/blanketPurchaseOrder/id/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ WeclappAPI.Common.stringifyModel id)) GHC.Base.++ "/downloadLatestBlanketPurchaseOrderPdf"))) GHC.Base.mempty)
-- | > GET /blanketPurchaseOrder/id/{id}/downloadLatestBlanketPurchaseOrderPdf
-- 
-- The same as 'get_blanketPurchaseOrder_id__id__downloadLatestBlanketPurchaseOrderPdf' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
get_blanketPurchaseOrder_id__id__downloadLatestBlanketPurchaseOrderPdfWithConfigurationRaw :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text -- ^ id
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
get_blanketPurchaseOrder_id__id__downloadLatestBlanketPurchaseOrderPdfWithConfigurationRaw config
                                                                                           id = GHC.Base.id (WeclappAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/blanketPurchaseOrder/id/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ WeclappAPI.Common.stringifyModel id)) GHC.Base.++ "/downloadLatestBlanketPurchaseOrderPdf"))) GHC.Base.mempty)