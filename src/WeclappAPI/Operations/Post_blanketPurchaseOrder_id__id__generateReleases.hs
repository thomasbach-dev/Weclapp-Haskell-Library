-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation post_blanketPurchaseOrder_id__id__generateReleases
module WeclappAPI.Operations.Post_blanketPurchaseOrder_id__id__generateReleases where

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

-- | > POST /blanketPurchaseOrder/id/{id}/generateReleases
-- 
-- 
post_blanketPurchaseOrder_id__id__generateReleases :: forall m . WeclappAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ id
  -> Post_blanketPurchaseOrder_id__id__generateReleasesRequestBody -- ^ The request body to send
  -> WeclappAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Post_blanketPurchaseOrder_id__id__generateReleasesResponse) -- ^ Monadic computation which returns the result of the operation
post_blanketPurchaseOrder_id__id__generateReleases id
                                                   body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either Post_blanketPurchaseOrder_id__id__generateReleasesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Post_blanketPurchaseOrder_id__id__generateReleasesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         Post_blanketPurchaseOrder_id__id__generateReleasesResponseBody200)
                                                                                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (WeclappAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/blanketPurchaseOrder/id/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ WeclappAPI.Common.stringifyModel id)) GHC.Base.++ "/generateReleases"))) GHC.Base.mempty (GHC.Maybe.Just body) WeclappAPI.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/blanketPurchaseOrder\/id\/{id}\/generateReleases.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data Post_blanketPurchaseOrder_id__id__generateReleasesRequestBody = Post_blanketPurchaseOrder_id__id__generateReleasesRequestBody {
  -- | firstScheduledDeliveryDate
  post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyFirstScheduledDeliveryDate :: GHC.Types.Int
  -- | fixReleasedQuantity
  , post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyFixReleasedQuantity :: GHC.Types.Bool
  -- | releasedQuantity
  , post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyReleasedQuantity :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | repeatInterval
  , post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyRepeatInterval :: GHC.Int.Int32
  -- | repeatType
  , post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyRepeatType :: Post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyRepeatType'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Post_blanketPurchaseOrder_id__id__generateReleasesRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("firstScheduledDeliveryDate" Data.Aeson.Types.ToJSON..= post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyFirstScheduledDeliveryDate obj : "fixReleasedQuantity" Data.Aeson.Types.ToJSON..= post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyFixReleasedQuantity obj : "releasedQuantity" Data.Aeson.Types.ToJSON..= post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyReleasedQuantity obj : "repeatInterval" Data.Aeson.Types.ToJSON..= post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyRepeatInterval obj : "repeatType" Data.Aeson.Types.ToJSON..= post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyRepeatType obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("firstScheduledDeliveryDate" Data.Aeson.Types.ToJSON..= post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyFirstScheduledDeliveryDate obj) GHC.Base.<> (("fixReleasedQuantity" Data.Aeson.Types.ToJSON..= post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyFixReleasedQuantity obj) GHC.Base.<> (("releasedQuantity" Data.Aeson.Types.ToJSON..= post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyReleasedQuantity obj) GHC.Base.<> (("repeatInterval" Data.Aeson.Types.ToJSON..= post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyRepeatInterval obj) GHC.Base.<> ("repeatType" Data.Aeson.Types.ToJSON..= post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyRepeatType obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON Post_blanketPurchaseOrder_id__id__generateReleasesRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Post_blanketPurchaseOrder_id__id__generateReleasesRequestBody" (\obj -> ((((GHC.Base.pure Post_blanketPurchaseOrder_id__id__generateReleasesRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "firstScheduledDeliveryDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "fixReleasedQuantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "releasedQuantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "repeatInterval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "repeatType"))
-- | Create a new 'Post_blanketPurchaseOrder_id__id__generateReleasesRequestBody' with all required fields.
mkPost_blanketPurchaseOrder_id__id__generateReleasesRequestBody :: GHC.Types.Int -- ^ 'post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyFirstScheduledDeliveryDate'
  -> GHC.Types.Bool -- ^ 'post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyFixReleasedQuantity'
  -> GHC.Int.Int32 -- ^ 'post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyRepeatInterval'
  -> Post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyRepeatType' -- ^ 'post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyRepeatType'
  -> Post_blanketPurchaseOrder_id__id__generateReleasesRequestBody
mkPost_blanketPurchaseOrder_id__id__generateReleasesRequestBody post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyFirstScheduledDeliveryDate post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyFixReleasedQuantity post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyRepeatInterval post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyRepeatType = Post_blanketPurchaseOrder_id__id__generateReleasesRequestBody{post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyFirstScheduledDeliveryDate = post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyFirstScheduledDeliveryDate,
                                                                                                                                                                                                                                                                                                                                                                                                                                                             post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyFixReleasedQuantity = post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyFixReleasedQuantity,
                                                                                                                                                                                                                                                                                                                                                                                                                                                             post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyReleasedQuantity = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                                                                                                                                                                                                             post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyRepeatInterval = post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyRepeatInterval,
                                                                                                                                                                                                                                                                                                                                                                                                                                                             post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyRepeatType = post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyRepeatType}
-- | Defines the enum schema located at @paths.\/blanketPurchaseOrder\/id\/{id}\/generateReleases.POST.requestBody.content.application\/json.schema.properties.repeatType@ in the specification.
-- 
-- 
data Post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyRepeatType' =
   Post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyRepeatType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | Post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyRepeatType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | Post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyRepeatType'EnumDAY -- ^ Represents the JSON value @"DAY"@
  | Post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyRepeatType'EnumMONTH -- ^ Represents the JSON value @"MONTH"@
  | Post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyRepeatType'EnumWEEK -- ^ Represents the JSON value @"WEEK"@
  | Post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyRepeatType'EnumYEAR -- ^ Represents the JSON value @"YEAR"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyRepeatType'
    where toJSON (Post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyRepeatType'Other val) = val
          toJSON (Post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyRepeatType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (Post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyRepeatType'EnumDAY) = "DAY"
          toJSON (Post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyRepeatType'EnumMONTH) = "MONTH"
          toJSON (Post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyRepeatType'EnumWEEK) = "WEEK"
          toJSON (Post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyRepeatType'EnumYEAR) = "YEAR"
instance Data.Aeson.Types.FromJSON.FromJSON Post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyRepeatType'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "DAY" -> Post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyRepeatType'EnumDAY
                                            | val GHC.Classes.== "MONTH" -> Post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyRepeatType'EnumMONTH
                                            | val GHC.Classes.== "WEEK" -> Post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyRepeatType'EnumWEEK
                                            | val GHC.Classes.== "YEAR" -> Post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyRepeatType'EnumYEAR
                                            | GHC.Base.otherwise -> Post_blanketPurchaseOrder_id__id__generateReleasesRequestBodyRepeatType'Other val)
-- | Represents a response of the operation 'post_blanketPurchaseOrder_id__id__generateReleases'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Post_blanketPurchaseOrder_id__id__generateReleasesResponseError' is used.
data Post_blanketPurchaseOrder_id__id__generateReleasesResponse =
   Post_blanketPurchaseOrder_id__id__generateReleasesResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | Post_blanketPurchaseOrder_id__id__generateReleasesResponse200 Post_blanketPurchaseOrder_id__id__generateReleasesResponseBody200 -- ^ generateReleases response
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/blanketPurchaseOrder\/id\/{id}\/generateReleases.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data Post_blanketPurchaseOrder_id__id__generateReleasesResponseBody200 = Post_blanketPurchaseOrder_id__id__generateReleasesResponseBody200 {
  -- | result
  post_blanketPurchaseOrder_id__id__generateReleasesResponseBody200Result :: (GHC.Maybe.Maybe BlanketPurchaseOrder)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Post_blanketPurchaseOrder_id__id__generateReleasesResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("result" Data.Aeson.Types.ToJSON..= post_blanketPurchaseOrder_id__id__generateReleasesResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("result" Data.Aeson.Types.ToJSON..= post_blanketPurchaseOrder_id__id__generateReleasesResponseBody200Result obj)
instance Data.Aeson.Types.FromJSON.FromJSON Post_blanketPurchaseOrder_id__id__generateReleasesResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Post_blanketPurchaseOrder_id__id__generateReleasesResponseBody200" (\obj -> GHC.Base.pure Post_blanketPurchaseOrder_id__id__generateReleasesResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "result"))
-- | Create a new 'Post_blanketPurchaseOrder_id__id__generateReleasesResponseBody200' with all required fields.
mkPost_blanketPurchaseOrder_id__id__generateReleasesResponseBody200 :: Post_blanketPurchaseOrder_id__id__generateReleasesResponseBody200
mkPost_blanketPurchaseOrder_id__id__generateReleasesResponseBody200 = Post_blanketPurchaseOrder_id__id__generateReleasesResponseBody200{post_blanketPurchaseOrder_id__id__generateReleasesResponseBody200Result = GHC.Maybe.Nothing}
-- | > POST /blanketPurchaseOrder/id/{id}/generateReleases
-- 
-- The same as 'post_blanketPurchaseOrder_id__id__generateReleases' but accepts an explicit configuration.
post_blanketPurchaseOrder_id__id__generateReleasesWithConfiguration :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text -- ^ id
  -> Post_blanketPurchaseOrder_id__id__generateReleasesRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Post_blanketPurchaseOrder_id__id__generateReleasesResponse) -- ^ Monadic computation which returns the result of the operation
post_blanketPurchaseOrder_id__id__generateReleasesWithConfiguration config
                                                                    id
                                                                    body = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either Post_blanketPurchaseOrder_id__id__generateReleasesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Post_blanketPurchaseOrder_id__id__generateReleasesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          Post_blanketPurchaseOrder_id__id__generateReleasesResponseBody200)
                                                                                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (WeclappAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/blanketPurchaseOrder/id/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ WeclappAPI.Common.stringifyModel id)) GHC.Base.++ "/generateReleases"))) GHC.Base.mempty (GHC.Maybe.Just body) WeclappAPI.Common.RequestBodyEncodingJSON)
-- | > POST /blanketPurchaseOrder/id/{id}/generateReleases
-- 
-- The same as 'post_blanketPurchaseOrder_id__id__generateReleases' but returns the raw 'Data.ByteString.Char8.ByteString'.
post_blanketPurchaseOrder_id__id__generateReleasesRaw :: forall m . WeclappAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ id
  -> Post_blanketPurchaseOrder_id__id__generateReleasesRequestBody -- ^ The request body to send
  -> WeclappAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
post_blanketPurchaseOrder_id__id__generateReleasesRaw id
                                                      body = GHC.Base.id (WeclappAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/blanketPurchaseOrder/id/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ WeclappAPI.Common.stringifyModel id)) GHC.Base.++ "/generateReleases"))) GHC.Base.mempty (GHC.Maybe.Just body) WeclappAPI.Common.RequestBodyEncodingJSON)
-- | > POST /blanketPurchaseOrder/id/{id}/generateReleases
-- 
-- The same as 'post_blanketPurchaseOrder_id__id__generateReleases' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
post_blanketPurchaseOrder_id__id__generateReleasesWithConfigurationRaw :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text -- ^ id
  -> Post_blanketPurchaseOrder_id__id__generateReleasesRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
post_blanketPurchaseOrder_id__id__generateReleasesWithConfigurationRaw config
                                                                       id
                                                                       body = GHC.Base.id (WeclappAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/blanketPurchaseOrder/id/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ WeclappAPI.Common.stringifyModel id)) GHC.Base.++ "/generateReleases"))) GHC.Base.mempty (GHC.Maybe.Just body) WeclappAPI.Common.RequestBodyEncodingJSON)
