-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation post_purchaseOrder_id__id__createIncomingGoods
module WeclappAPI.Operations.Post_purchaseOrder_id__id__createIncomingGoods where

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

-- | > POST /purchaseOrder/id/{id}/createIncomingGoods
-- 
-- 
post_purchaseOrder_id__id__createIncomingGoods :: forall m . WeclappAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ id
  -> Data.Aeson.Types.Internal.Object -- ^ The request body to send
  -> WeclappAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Post_purchaseOrder_id__id__createIncomingGoodsResponse) -- ^ Monadic computation which returns the result of the operation
post_purchaseOrder_id__id__createIncomingGoods id
                                               body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either Post_purchaseOrder_id__id__createIncomingGoodsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Post_purchaseOrder_id__id__createIncomingGoodsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             Post_purchaseOrder_id__id__createIncomingGoodsResponseBody200)
                                                                                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (WeclappAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/purchaseOrder/id/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ WeclappAPI.Common.stringifyModel id)) GHC.Base.++ "/createIncomingGoods"))) GHC.Base.mempty (GHC.Maybe.Just body) WeclappAPI.Common.RequestBodyEncodingJSON)
-- | Represents a response of the operation 'post_purchaseOrder_id__id__createIncomingGoods'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Post_purchaseOrder_id__id__createIncomingGoodsResponseError' is used.
data Post_purchaseOrder_id__id__createIncomingGoodsResponse =
   Post_purchaseOrder_id__id__createIncomingGoodsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | Post_purchaseOrder_id__id__createIncomingGoodsResponse200 Post_purchaseOrder_id__id__createIncomingGoodsResponseBody200 -- ^ createIncomingGoods response
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/purchaseOrder\/id\/{id}\/createIncomingGoods.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data Post_purchaseOrder_id__id__createIncomingGoodsResponseBody200 = Post_purchaseOrder_id__id__createIncomingGoodsResponseBody200 {
  -- | result
  post_purchaseOrder_id__id__createIncomingGoodsResponseBody200Result :: (GHC.Maybe.Maybe IncomingGoods)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Post_purchaseOrder_id__id__createIncomingGoodsResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("result" Data.Aeson.Types.ToJSON..= post_purchaseOrder_id__id__createIncomingGoodsResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("result" Data.Aeson.Types.ToJSON..= post_purchaseOrder_id__id__createIncomingGoodsResponseBody200Result obj)
instance Data.Aeson.Types.FromJSON.FromJSON Post_purchaseOrder_id__id__createIncomingGoodsResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Post_purchaseOrder_id__id__createIncomingGoodsResponseBody200" (\obj -> GHC.Base.pure Post_purchaseOrder_id__id__createIncomingGoodsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "result"))
-- | Create a new 'Post_purchaseOrder_id__id__createIncomingGoodsResponseBody200' with all required fields.
mkPost_purchaseOrder_id__id__createIncomingGoodsResponseBody200 :: Post_purchaseOrder_id__id__createIncomingGoodsResponseBody200
mkPost_purchaseOrder_id__id__createIncomingGoodsResponseBody200 = Post_purchaseOrder_id__id__createIncomingGoodsResponseBody200{post_purchaseOrder_id__id__createIncomingGoodsResponseBody200Result = GHC.Maybe.Nothing}
-- | > POST /purchaseOrder/id/{id}/createIncomingGoods
-- 
-- The same as 'post_purchaseOrder_id__id__createIncomingGoods' but accepts an explicit configuration.
post_purchaseOrder_id__id__createIncomingGoodsWithConfiguration :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text -- ^ id
  -> Data.Aeson.Types.Internal.Object -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Post_purchaseOrder_id__id__createIncomingGoodsResponse) -- ^ Monadic computation which returns the result of the operation
post_purchaseOrder_id__id__createIncomingGoodsWithConfiguration config
                                                                id
                                                                body = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either Post_purchaseOrder_id__id__createIncomingGoodsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Post_purchaseOrder_id__id__createIncomingGoodsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              Post_purchaseOrder_id__id__createIncomingGoodsResponseBody200)
                                                                                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (WeclappAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/purchaseOrder/id/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ WeclappAPI.Common.stringifyModel id)) GHC.Base.++ "/createIncomingGoods"))) GHC.Base.mempty (GHC.Maybe.Just body) WeclappAPI.Common.RequestBodyEncodingJSON)
-- | > POST /purchaseOrder/id/{id}/createIncomingGoods
-- 
-- The same as 'post_purchaseOrder_id__id__createIncomingGoods' but returns the raw 'Data.ByteString.Char8.ByteString'.
post_purchaseOrder_id__id__createIncomingGoodsRaw :: forall m . WeclappAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ id
  -> Data.Aeson.Types.Internal.Object -- ^ The request body to send
  -> WeclappAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
post_purchaseOrder_id__id__createIncomingGoodsRaw id
                                                  body = GHC.Base.id (WeclappAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/purchaseOrder/id/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ WeclappAPI.Common.stringifyModel id)) GHC.Base.++ "/createIncomingGoods"))) GHC.Base.mempty (GHC.Maybe.Just body) WeclappAPI.Common.RequestBodyEncodingJSON)
-- | > POST /purchaseOrder/id/{id}/createIncomingGoods
-- 
-- The same as 'post_purchaseOrder_id__id__createIncomingGoods' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
post_purchaseOrder_id__id__createIncomingGoodsWithConfigurationRaw :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text -- ^ id
  -> Data.Aeson.Types.Internal.Object -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
post_purchaseOrder_id__id__createIncomingGoodsWithConfigurationRaw config
                                                                   id
                                                                   body = GHC.Base.id (WeclappAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/purchaseOrder/id/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ WeclappAPI.Common.stringifyModel id)) GHC.Base.++ "/createIncomingGoods"))) GHC.Base.mempty (GHC.Maybe.Just body) WeclappAPI.Common.RequestBodyEncodingJSON)