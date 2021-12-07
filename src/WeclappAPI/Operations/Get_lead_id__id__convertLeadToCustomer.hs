-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation get_lead_id__id__convertLeadToCustomer
module WeclappAPI.Operations.Get_lead_id__id__convertLeadToCustomer where

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

-- | > GET /lead/id/{id}/convertLeadToCustomer
-- 
-- 
get_lead_id__id__convertLeadToCustomer :: forall m . WeclappAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ id
  -> WeclappAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Get_lead_id__id__convertLeadToCustomerResponse) -- ^ Monadic computation which returns the result of the operation
get_lead_id__id__convertLeadToCustomer id = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either Get_lead_id__id__convertLeadToCustomerResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Get_lead_id__id__convertLeadToCustomerResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   Get_lead_id__id__convertLeadToCustomerResponseBody200)
                                                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (WeclappAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/lead/id/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ WeclappAPI.Common.stringifyModel id)) GHC.Base.++ "/convertLeadToCustomer"))) GHC.Base.mempty)
-- | Represents a response of the operation 'get_lead_id__id__convertLeadToCustomer'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Get_lead_id__id__convertLeadToCustomerResponseError' is used.
data Get_lead_id__id__convertLeadToCustomerResponse =
   Get_lead_id__id__convertLeadToCustomerResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | Get_lead_id__id__convertLeadToCustomerResponse200 Get_lead_id__id__convertLeadToCustomerResponseBody200 -- ^ convertLeadToCustomer response
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/lead\/id\/{id}\/convertLeadToCustomer.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data Get_lead_id__id__convertLeadToCustomerResponseBody200 = Get_lead_id__id__convertLeadToCustomerResponseBody200 {
  -- | result
  get_lead_id__id__convertLeadToCustomerResponseBody200Result :: (GHC.Maybe.Maybe Customer)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Get_lead_id__id__convertLeadToCustomerResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("result" Data.Aeson.Types.ToJSON..= get_lead_id__id__convertLeadToCustomerResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("result" Data.Aeson.Types.ToJSON..= get_lead_id__id__convertLeadToCustomerResponseBody200Result obj)
instance Data.Aeson.Types.FromJSON.FromJSON Get_lead_id__id__convertLeadToCustomerResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Get_lead_id__id__convertLeadToCustomerResponseBody200" (\obj -> GHC.Base.pure Get_lead_id__id__convertLeadToCustomerResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "result"))
-- | Create a new 'Get_lead_id__id__convertLeadToCustomerResponseBody200' with all required fields.
mkGet_lead_id__id__convertLeadToCustomerResponseBody200 :: Get_lead_id__id__convertLeadToCustomerResponseBody200
mkGet_lead_id__id__convertLeadToCustomerResponseBody200 = Get_lead_id__id__convertLeadToCustomerResponseBody200{get_lead_id__id__convertLeadToCustomerResponseBody200Result = GHC.Maybe.Nothing}
-- | > GET /lead/id/{id}/convertLeadToCustomer
-- 
-- The same as 'get_lead_id__id__convertLeadToCustomer' but accepts an explicit configuration.
get_lead_id__id__convertLeadToCustomerWithConfiguration :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text -- ^ id
  -> m (Network.HTTP.Client.Types.Response Get_lead_id__id__convertLeadToCustomerResponse) -- ^ Monadic computation which returns the result of the operation
get_lead_id__id__convertLeadToCustomerWithConfiguration config
                                                        id = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either Get_lead_id__id__convertLeadToCustomerResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Get_lead_id__id__convertLeadToCustomerResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    Get_lead_id__id__convertLeadToCustomerResponseBody200)
                                                                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (WeclappAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/lead/id/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ WeclappAPI.Common.stringifyModel id)) GHC.Base.++ "/convertLeadToCustomer"))) GHC.Base.mempty)
-- | > GET /lead/id/{id}/convertLeadToCustomer
-- 
-- The same as 'get_lead_id__id__convertLeadToCustomer' but returns the raw 'Data.ByteString.Char8.ByteString'.
get_lead_id__id__convertLeadToCustomerRaw :: forall m . WeclappAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ id
  -> WeclappAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
get_lead_id__id__convertLeadToCustomerRaw id = GHC.Base.id (WeclappAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/lead/id/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ WeclappAPI.Common.stringifyModel id)) GHC.Base.++ "/convertLeadToCustomer"))) GHC.Base.mempty)
-- | > GET /lead/id/{id}/convertLeadToCustomer
-- 
-- The same as 'get_lead_id__id__convertLeadToCustomer' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
get_lead_id__id__convertLeadToCustomerWithConfigurationRaw :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text -- ^ id
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
get_lead_id__id__convertLeadToCustomerWithConfigurationRaw config
                                                           id = GHC.Base.id (WeclappAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/lead/id/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ WeclappAPI.Common.stringifyModel id)) GHC.Base.++ "/convertLeadToCustomer"))) GHC.Base.mempty)
