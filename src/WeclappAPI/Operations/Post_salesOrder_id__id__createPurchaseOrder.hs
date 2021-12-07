-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation post_salesOrder_id__id__createPurchaseOrder
module WeclappAPI.Operations.Post_salesOrder_id__id__createPurchaseOrder where

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

-- | > POST /salesOrder/id/{id}/createPurchaseOrder
-- 
-- 
post_salesOrder_id__id__createPurchaseOrder :: forall m . WeclappAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ id
  -> Post_salesOrder_id__id__createPurchaseOrderRequestBody -- ^ The request body to send
  -> WeclappAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Post_salesOrder_id__id__createPurchaseOrderResponse) -- ^ Monadic computation which returns the result of the operation
post_salesOrder_id__id__createPurchaseOrder id
                                            body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either Post_salesOrder_id__id__createPurchaseOrderResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Post_salesOrder_id__id__createPurchaseOrderResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    Post_salesOrder_id__id__createPurchaseOrderResponseBody200)
                                                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (WeclappAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/salesOrder/id/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ WeclappAPI.Common.stringifyModel id)) GHC.Base.++ "/createPurchaseOrder"))) GHC.Base.mempty (GHC.Maybe.Just body) WeclappAPI.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/salesOrder\/id\/{id}\/createPurchaseOrder.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data Post_salesOrder_id__id__createPurchaseOrderRequestBody = Post_salesOrder_id__id__createPurchaseOrderRequestBody {
  -- | supplierId
  post_salesOrder_id__id__createPurchaseOrderRequestBodySupplierId :: Data.Text.Internal.Text
  -- | warehouseId
  , post_salesOrder_id__id__createPurchaseOrderRequestBodyWarehouseId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Post_salesOrder_id__id__createPurchaseOrderRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("supplierId" Data.Aeson.Types.ToJSON..= post_salesOrder_id__id__createPurchaseOrderRequestBodySupplierId obj : "warehouseId" Data.Aeson.Types.ToJSON..= post_salesOrder_id__id__createPurchaseOrderRequestBodyWarehouseId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("supplierId" Data.Aeson.Types.ToJSON..= post_salesOrder_id__id__createPurchaseOrderRequestBodySupplierId obj) GHC.Base.<> ("warehouseId" Data.Aeson.Types.ToJSON..= post_salesOrder_id__id__createPurchaseOrderRequestBodyWarehouseId obj))
instance Data.Aeson.Types.FromJSON.FromJSON Post_salesOrder_id__id__createPurchaseOrderRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Post_salesOrder_id__id__createPurchaseOrderRequestBody" (\obj -> (GHC.Base.pure Post_salesOrder_id__id__createPurchaseOrderRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "supplierId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "warehouseId"))
-- | Create a new 'Post_salesOrder_id__id__createPurchaseOrderRequestBody' with all required fields.
mkPost_salesOrder_id__id__createPurchaseOrderRequestBody :: Data.Text.Internal.Text -- ^ 'post_salesOrder_id__id__createPurchaseOrderRequestBodySupplierId'
  -> Post_salesOrder_id__id__createPurchaseOrderRequestBody
mkPost_salesOrder_id__id__createPurchaseOrderRequestBody post_salesOrder_id__id__createPurchaseOrderRequestBodySupplierId = Post_salesOrder_id__id__createPurchaseOrderRequestBody{post_salesOrder_id__id__createPurchaseOrderRequestBodySupplierId = post_salesOrder_id__id__createPurchaseOrderRequestBodySupplierId,
                                                                                                                                                                                   post_salesOrder_id__id__createPurchaseOrderRequestBodyWarehouseId = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'post_salesOrder_id__id__createPurchaseOrder'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Post_salesOrder_id__id__createPurchaseOrderResponseError' is used.
data Post_salesOrder_id__id__createPurchaseOrderResponse =
   Post_salesOrder_id__id__createPurchaseOrderResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | Post_salesOrder_id__id__createPurchaseOrderResponse200 Post_salesOrder_id__id__createPurchaseOrderResponseBody200 -- ^ createPurchaseOrder response
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/salesOrder\/id\/{id}\/createPurchaseOrder.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data Post_salesOrder_id__id__createPurchaseOrderResponseBody200 = Post_salesOrder_id__id__createPurchaseOrderResponseBody200 {
  -- | result
  post_salesOrder_id__id__createPurchaseOrderResponseBody200Result :: (GHC.Maybe.Maybe PurchaseOrder)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Post_salesOrder_id__id__createPurchaseOrderResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("result" Data.Aeson.Types.ToJSON..= post_salesOrder_id__id__createPurchaseOrderResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("result" Data.Aeson.Types.ToJSON..= post_salesOrder_id__id__createPurchaseOrderResponseBody200Result obj)
instance Data.Aeson.Types.FromJSON.FromJSON Post_salesOrder_id__id__createPurchaseOrderResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Post_salesOrder_id__id__createPurchaseOrderResponseBody200" (\obj -> GHC.Base.pure Post_salesOrder_id__id__createPurchaseOrderResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "result"))
-- | Create a new 'Post_salesOrder_id__id__createPurchaseOrderResponseBody200' with all required fields.
mkPost_salesOrder_id__id__createPurchaseOrderResponseBody200 :: Post_salesOrder_id__id__createPurchaseOrderResponseBody200
mkPost_salesOrder_id__id__createPurchaseOrderResponseBody200 = Post_salesOrder_id__id__createPurchaseOrderResponseBody200{post_salesOrder_id__id__createPurchaseOrderResponseBody200Result = GHC.Maybe.Nothing}
-- | > POST /salesOrder/id/{id}/createPurchaseOrder
-- 
-- The same as 'post_salesOrder_id__id__createPurchaseOrder' but accepts an explicit configuration.
post_salesOrder_id__id__createPurchaseOrderWithConfiguration :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text -- ^ id
  -> Post_salesOrder_id__id__createPurchaseOrderRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Post_salesOrder_id__id__createPurchaseOrderResponse) -- ^ Monadic computation which returns the result of the operation
post_salesOrder_id__id__createPurchaseOrderWithConfiguration config
                                                             id
                                                             body = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either Post_salesOrder_id__id__createPurchaseOrderResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Post_salesOrder_id__id__createPurchaseOrderResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     Post_salesOrder_id__id__createPurchaseOrderResponseBody200)
                                                                                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (WeclappAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/salesOrder/id/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ WeclappAPI.Common.stringifyModel id)) GHC.Base.++ "/createPurchaseOrder"))) GHC.Base.mempty (GHC.Maybe.Just body) WeclappAPI.Common.RequestBodyEncodingJSON)
-- | > POST /salesOrder/id/{id}/createPurchaseOrder
-- 
-- The same as 'post_salesOrder_id__id__createPurchaseOrder' but returns the raw 'Data.ByteString.Char8.ByteString'.
post_salesOrder_id__id__createPurchaseOrderRaw :: forall m . WeclappAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ id
  -> Post_salesOrder_id__id__createPurchaseOrderRequestBody -- ^ The request body to send
  -> WeclappAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
post_salesOrder_id__id__createPurchaseOrderRaw id
                                               body = GHC.Base.id (WeclappAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/salesOrder/id/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ WeclappAPI.Common.stringifyModel id)) GHC.Base.++ "/createPurchaseOrder"))) GHC.Base.mempty (GHC.Maybe.Just body) WeclappAPI.Common.RequestBodyEncodingJSON)
-- | > POST /salesOrder/id/{id}/createPurchaseOrder
-- 
-- The same as 'post_salesOrder_id__id__createPurchaseOrder' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
post_salesOrder_id__id__createPurchaseOrderWithConfigurationRaw :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text -- ^ id
  -> Post_salesOrder_id__id__createPurchaseOrderRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
post_salesOrder_id__id__createPurchaseOrderWithConfigurationRaw config
                                                                id
                                                                body = GHC.Base.id (WeclappAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/salesOrder/id/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ WeclappAPI.Common.stringifyModel id)) GHC.Base.++ "/createPurchaseOrder"))) GHC.Base.mempty (GHC.Maybe.Just body) WeclappAPI.Common.RequestBodyEncodingJSON)
