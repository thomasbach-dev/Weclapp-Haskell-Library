-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation get_fulfillmentProvider
module WeclappAPI.Operations.Get_fulfillmentProvider where

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

-- | > GET /fulfillmentProvider
-- 
-- query fulfillmentProvider
get_fulfillmentProvider :: forall m . WeclappAPI.Common.MonadHTTP m => Get_fulfillmentProviderParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> WeclappAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Get_fulfillmentProviderResponse) -- ^ Monadic computation which returns the result of the operation
get_fulfillmentProvider parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either Get_fulfillmentProviderResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Get_fulfillmentProviderResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                              Get_fulfillmentProviderResponseBody200)
                                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (WeclappAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/fulfillmentProvider") [WeclappAPI.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_fulfillmentProviderParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                               WeclappAPI.Common.QueryParameter (Data.Text.pack "pageSize") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_fulfillmentProviderParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                               WeclappAPI.Common.QueryParameter (Data.Text.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_fulfillmentProviderParametersQuerySort parameters) (Data.Text.pack "form") GHC.Types.False])
-- | Defines the object schema located at @paths.\/fulfillmentProvider.GET.parameters@ in the specification.
-- 
-- 
data Get_fulfillmentProviderParameters = Get_fulfillmentProviderParameters {
  -- | queryPage: Represents the parameter named \'page\'
  get_fulfillmentProviderParametersQueryPage :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | queryPageSize: Represents the parameter named \'pageSize\'
  , get_fulfillmentProviderParametersQueryPageSize :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | querySort: Represents the parameter named \'sort\'
  , get_fulfillmentProviderParametersQuerySort :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Get_fulfillmentProviderParameters
    where toJSON obj = Data.Aeson.Types.Internal.object ("queryPage" Data.Aeson.Types.ToJSON..= get_fulfillmentProviderParametersQueryPage obj : "queryPageSize" Data.Aeson.Types.ToJSON..= get_fulfillmentProviderParametersQueryPageSize obj : "querySort" Data.Aeson.Types.ToJSON..= get_fulfillmentProviderParametersQuerySort obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("queryPage" Data.Aeson.Types.ToJSON..= get_fulfillmentProviderParametersQueryPage obj) GHC.Base.<> (("queryPageSize" Data.Aeson.Types.ToJSON..= get_fulfillmentProviderParametersQueryPageSize obj) GHC.Base.<> ("querySort" Data.Aeson.Types.ToJSON..= get_fulfillmentProviderParametersQuerySort obj)))
instance Data.Aeson.Types.FromJSON.FromJSON Get_fulfillmentProviderParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Get_fulfillmentProviderParameters" (\obj -> ((GHC.Base.pure Get_fulfillmentProviderParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryPage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryPageSize")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "querySort"))
-- | Create a new 'Get_fulfillmentProviderParameters' with all required fields.
mkGet_fulfillmentProviderParameters :: Get_fulfillmentProviderParameters
mkGet_fulfillmentProviderParameters = Get_fulfillmentProviderParameters{get_fulfillmentProviderParametersQueryPage = GHC.Maybe.Nothing,
                                                                        get_fulfillmentProviderParametersQueryPageSize = GHC.Maybe.Nothing,
                                                                        get_fulfillmentProviderParametersQuerySort = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'get_fulfillmentProvider'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Get_fulfillmentProviderResponseError' is used.
data Get_fulfillmentProviderResponse =
   Get_fulfillmentProviderResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | Get_fulfillmentProviderResponse200 Get_fulfillmentProviderResponseBody200 -- ^ fulfillmentProvider response
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/fulfillmentProvider.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data Get_fulfillmentProviderResponseBody200 = Get_fulfillmentProviderResponseBody200 {
  -- | result
  get_fulfillmentProviderResponseBody200Result :: (GHC.Maybe.Maybe ([FulfillmentProvider]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Get_fulfillmentProviderResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("result" Data.Aeson.Types.ToJSON..= get_fulfillmentProviderResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("result" Data.Aeson.Types.ToJSON..= get_fulfillmentProviderResponseBody200Result obj)
instance Data.Aeson.Types.FromJSON.FromJSON Get_fulfillmentProviderResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Get_fulfillmentProviderResponseBody200" (\obj -> GHC.Base.pure Get_fulfillmentProviderResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "result"))
-- | Create a new 'Get_fulfillmentProviderResponseBody200' with all required fields.
mkGet_fulfillmentProviderResponseBody200 :: Get_fulfillmentProviderResponseBody200
mkGet_fulfillmentProviderResponseBody200 = Get_fulfillmentProviderResponseBody200{get_fulfillmentProviderResponseBody200Result = GHC.Maybe.Nothing}
-- | > GET /fulfillmentProvider
-- 
-- The same as 'get_fulfillmentProvider' but accepts an explicit configuration.
get_fulfillmentProviderWithConfiguration :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Get_fulfillmentProviderParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Get_fulfillmentProviderResponse) -- ^ Monadic computation which returns the result of the operation
get_fulfillmentProviderWithConfiguration config
                                         parameters = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either Get_fulfillmentProviderResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Get_fulfillmentProviderResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                               Get_fulfillmentProviderResponseBody200)
                                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (WeclappAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/fulfillmentProvider") [WeclappAPI.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_fulfillmentProviderParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                      WeclappAPI.Common.QueryParameter (Data.Text.pack "pageSize") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_fulfillmentProviderParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                      WeclappAPI.Common.QueryParameter (Data.Text.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_fulfillmentProviderParametersQuerySort parameters) (Data.Text.pack "form") GHC.Types.False])
-- | > GET /fulfillmentProvider
-- 
-- The same as 'get_fulfillmentProvider' but returns the raw 'Data.ByteString.Char8.ByteString'.
get_fulfillmentProviderRaw :: forall m . WeclappAPI.Common.MonadHTTP m => Get_fulfillmentProviderParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> WeclappAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
get_fulfillmentProviderRaw parameters = GHC.Base.id (WeclappAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/fulfillmentProvider") [WeclappAPI.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_fulfillmentProviderParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                          WeclappAPI.Common.QueryParameter (Data.Text.pack "pageSize") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_fulfillmentProviderParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                          WeclappAPI.Common.QueryParameter (Data.Text.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_fulfillmentProviderParametersQuerySort parameters) (Data.Text.pack "form") GHC.Types.False])
-- | > GET /fulfillmentProvider
-- 
-- The same as 'get_fulfillmentProvider' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
get_fulfillmentProviderWithConfigurationRaw :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Get_fulfillmentProviderParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
get_fulfillmentProviderWithConfigurationRaw config
                                            parameters = GHC.Base.id (WeclappAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/fulfillmentProvider") [WeclappAPI.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_fulfillmentProviderParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                 WeclappAPI.Common.QueryParameter (Data.Text.pack "pageSize") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_fulfillmentProviderParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                 WeclappAPI.Common.QueryParameter (Data.Text.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_fulfillmentProviderParametersQuerySort parameters) (Data.Text.pack "form") GHC.Types.False])
