-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation post_salesOrder_id__id__createDropshipping
module WeclappAPI.Operations.Post_salesOrder_id__id__createDropshipping where

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

-- | > POST /salesOrder/id/{id}/createDropshipping
-- 
-- 
post_salesOrder_id__id__createDropshipping :: forall m . WeclappAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ id
  -> Post_salesOrder_id__id__createDropshippingRequestBody -- ^ The request body to send
  -> WeclappAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Post_salesOrder_id__id__createDropshippingResponse) -- ^ Monadic computation which returns the result of the operation
post_salesOrder_id__id__createDropshipping id
                                           body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either Post_salesOrder_id__id__createDropshippingResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Post_salesOrder_id__id__createDropshippingResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 Post_salesOrder_id__id__createDropshippingResponseBody200)
                                                                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (WeclappAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/salesOrder/id/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ WeclappAPI.Common.stringifyModel id)) GHC.Base.++ "/createDropshipping"))) GHC.Base.mempty (GHC.Maybe.Just body) WeclappAPI.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/salesOrder\/id\/{id}\/createDropshipping.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data Post_salesOrder_id__id__createDropshippingRequestBody = Post_salesOrder_id__id__createDropshippingRequestBody {
  -- | supplierId
  post_salesOrder_id__id__createDropshippingRequestBodySupplierId :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Post_salesOrder_id__id__createDropshippingRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("supplierId" Data.Aeson.Types.ToJSON..= post_salesOrder_id__id__createDropshippingRequestBodySupplierId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("supplierId" Data.Aeson.Types.ToJSON..= post_salesOrder_id__id__createDropshippingRequestBodySupplierId obj)
instance Data.Aeson.Types.FromJSON.FromJSON Post_salesOrder_id__id__createDropshippingRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Post_salesOrder_id__id__createDropshippingRequestBody" (\obj -> GHC.Base.pure Post_salesOrder_id__id__createDropshippingRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "supplierId"))
-- | Create a new 'Post_salesOrder_id__id__createDropshippingRequestBody' with all required fields.
mkPost_salesOrder_id__id__createDropshippingRequestBody :: Data.Text.Internal.Text -- ^ 'post_salesOrder_id__id__createDropshippingRequestBodySupplierId'
  -> Post_salesOrder_id__id__createDropshippingRequestBody
mkPost_salesOrder_id__id__createDropshippingRequestBody post_salesOrder_id__id__createDropshippingRequestBodySupplierId = Post_salesOrder_id__id__createDropshippingRequestBody{post_salesOrder_id__id__createDropshippingRequestBodySupplierId = post_salesOrder_id__id__createDropshippingRequestBodySupplierId}
-- | Represents a response of the operation 'post_salesOrder_id__id__createDropshipping'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Post_salesOrder_id__id__createDropshippingResponseError' is used.
data Post_salesOrder_id__id__createDropshippingResponse =
   Post_salesOrder_id__id__createDropshippingResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | Post_salesOrder_id__id__createDropshippingResponse200 Post_salesOrder_id__id__createDropshippingResponseBody200 -- ^ createDropshipping response
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/salesOrder\/id\/{id}\/createDropshipping.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data Post_salesOrder_id__id__createDropshippingResponseBody200 = Post_salesOrder_id__id__createDropshippingResponseBody200 {
  -- | result
  post_salesOrder_id__id__createDropshippingResponseBody200Result :: (GHC.Maybe.Maybe PurchaseOrder)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Post_salesOrder_id__id__createDropshippingResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("result" Data.Aeson.Types.ToJSON..= post_salesOrder_id__id__createDropshippingResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("result" Data.Aeson.Types.ToJSON..= post_salesOrder_id__id__createDropshippingResponseBody200Result obj)
instance Data.Aeson.Types.FromJSON.FromJSON Post_salesOrder_id__id__createDropshippingResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Post_salesOrder_id__id__createDropshippingResponseBody200" (\obj -> GHC.Base.pure Post_salesOrder_id__id__createDropshippingResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "result"))
-- | Create a new 'Post_salesOrder_id__id__createDropshippingResponseBody200' with all required fields.
mkPost_salesOrder_id__id__createDropshippingResponseBody200 :: Post_salesOrder_id__id__createDropshippingResponseBody200
mkPost_salesOrder_id__id__createDropshippingResponseBody200 = Post_salesOrder_id__id__createDropshippingResponseBody200{post_salesOrder_id__id__createDropshippingResponseBody200Result = GHC.Maybe.Nothing}
-- | > POST /salesOrder/id/{id}/createDropshipping
-- 
-- The same as 'post_salesOrder_id__id__createDropshipping' but accepts an explicit configuration.
post_salesOrder_id__id__createDropshippingWithConfiguration :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text -- ^ id
  -> Post_salesOrder_id__id__createDropshippingRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Post_salesOrder_id__id__createDropshippingResponse) -- ^ Monadic computation which returns the result of the operation
post_salesOrder_id__id__createDropshippingWithConfiguration config
                                                            id
                                                            body = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either Post_salesOrder_id__id__createDropshippingResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Post_salesOrder_id__id__createDropshippingResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  Post_salesOrder_id__id__createDropshippingResponseBody200)
                                                                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (WeclappAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/salesOrder/id/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ WeclappAPI.Common.stringifyModel id)) GHC.Base.++ "/createDropshipping"))) GHC.Base.mempty (GHC.Maybe.Just body) WeclappAPI.Common.RequestBodyEncodingJSON)
-- | > POST /salesOrder/id/{id}/createDropshipping
-- 
-- The same as 'post_salesOrder_id__id__createDropshipping' but returns the raw 'Data.ByteString.Char8.ByteString'.
post_salesOrder_id__id__createDropshippingRaw :: forall m . WeclappAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ id
  -> Post_salesOrder_id__id__createDropshippingRequestBody -- ^ The request body to send
  -> WeclappAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
post_salesOrder_id__id__createDropshippingRaw id
                                              body = GHC.Base.id (WeclappAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/salesOrder/id/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ WeclappAPI.Common.stringifyModel id)) GHC.Base.++ "/createDropshipping"))) GHC.Base.mempty (GHC.Maybe.Just body) WeclappAPI.Common.RequestBodyEncodingJSON)
-- | > POST /salesOrder/id/{id}/createDropshipping
-- 
-- The same as 'post_salesOrder_id__id__createDropshipping' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
post_salesOrder_id__id__createDropshippingWithConfigurationRaw :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text -- ^ id
  -> Post_salesOrder_id__id__createDropshippingRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
post_salesOrder_id__id__createDropshippingWithConfigurationRaw config
                                                               id
                                                               body = GHC.Base.id (WeclappAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/salesOrder/id/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ WeclappAPI.Common.stringifyModel id)) GHC.Base.++ "/createDropshipping"))) GHC.Base.mempty (GHC.Maybe.Just body) WeclappAPI.Common.RequestBodyEncodingJSON)
