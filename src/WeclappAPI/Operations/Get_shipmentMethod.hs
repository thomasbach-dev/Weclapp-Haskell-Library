-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation get_shipmentMethod
module WeclappAPI.Operations.Get_shipmentMethod where

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

-- | > GET /shipmentMethod
-- 
-- query shipmentMethod
get_shipmentMethod :: forall m . WeclappAPI.Common.MonadHTTP m => Get_shipmentMethodParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> WeclappAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Get_shipmentMethodResponse) -- ^ Monadic computation which returns the result of the operation
get_shipmentMethod parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either Get_shipmentMethodResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Get_shipmentMethodResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                               Get_shipmentMethodResponseBody200)
                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (WeclappAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/shipmentMethod") [WeclappAPI.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_shipmentMethodParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                WeclappAPI.Common.QueryParameter (Data.Text.pack "pageSize") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_shipmentMethodParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                WeclappAPI.Common.QueryParameter (Data.Text.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_shipmentMethodParametersQuerySort parameters) (Data.Text.pack "form") GHC.Types.False])
-- | Defines the object schema located at @paths.\/shipmentMethod.GET.parameters@ in the specification.
-- 
-- 
data Get_shipmentMethodParameters = Get_shipmentMethodParameters {
  -- | queryPage: Represents the parameter named \'page\'
  get_shipmentMethodParametersQueryPage :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | queryPageSize: Represents the parameter named \'pageSize\'
  , get_shipmentMethodParametersQueryPageSize :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | querySort: Represents the parameter named \'sort\'
  , get_shipmentMethodParametersQuerySort :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Get_shipmentMethodParameters
    where toJSON obj = Data.Aeson.Types.Internal.object ("queryPage" Data.Aeson.Types.ToJSON..= get_shipmentMethodParametersQueryPage obj : "queryPageSize" Data.Aeson.Types.ToJSON..= get_shipmentMethodParametersQueryPageSize obj : "querySort" Data.Aeson.Types.ToJSON..= get_shipmentMethodParametersQuerySort obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("queryPage" Data.Aeson.Types.ToJSON..= get_shipmentMethodParametersQueryPage obj) GHC.Base.<> (("queryPageSize" Data.Aeson.Types.ToJSON..= get_shipmentMethodParametersQueryPageSize obj) GHC.Base.<> ("querySort" Data.Aeson.Types.ToJSON..= get_shipmentMethodParametersQuerySort obj)))
instance Data.Aeson.Types.FromJSON.FromJSON Get_shipmentMethodParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Get_shipmentMethodParameters" (\obj -> ((GHC.Base.pure Get_shipmentMethodParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryPage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryPageSize")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "querySort"))
-- | Create a new 'Get_shipmentMethodParameters' with all required fields.
mkGet_shipmentMethodParameters :: Get_shipmentMethodParameters
mkGet_shipmentMethodParameters = Get_shipmentMethodParameters{get_shipmentMethodParametersQueryPage = GHC.Maybe.Nothing,
                                                              get_shipmentMethodParametersQueryPageSize = GHC.Maybe.Nothing,
                                                              get_shipmentMethodParametersQuerySort = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'get_shipmentMethod'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Get_shipmentMethodResponseError' is used.
data Get_shipmentMethodResponse =
   Get_shipmentMethodResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | Get_shipmentMethodResponse200 Get_shipmentMethodResponseBody200 -- ^ shipmentMethod response
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/shipmentMethod.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data Get_shipmentMethodResponseBody200 = Get_shipmentMethodResponseBody200 {
  -- | result
  get_shipmentMethodResponseBody200Result :: (GHC.Maybe.Maybe ([ShipmentMethod]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Get_shipmentMethodResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("result" Data.Aeson.Types.ToJSON..= get_shipmentMethodResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("result" Data.Aeson.Types.ToJSON..= get_shipmentMethodResponseBody200Result obj)
instance Data.Aeson.Types.FromJSON.FromJSON Get_shipmentMethodResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Get_shipmentMethodResponseBody200" (\obj -> GHC.Base.pure Get_shipmentMethodResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "result"))
-- | Create a new 'Get_shipmentMethodResponseBody200' with all required fields.
mkGet_shipmentMethodResponseBody200 :: Get_shipmentMethodResponseBody200
mkGet_shipmentMethodResponseBody200 = Get_shipmentMethodResponseBody200{get_shipmentMethodResponseBody200Result = GHC.Maybe.Nothing}
-- | > GET /shipmentMethod
-- 
-- The same as 'get_shipmentMethod' but accepts an explicit configuration.
get_shipmentMethodWithConfiguration :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Get_shipmentMethodParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Get_shipmentMethodResponse) -- ^ Monadic computation which returns the result of the operation
get_shipmentMethodWithConfiguration config
                                    parameters = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either Get_shipmentMethodResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Get_shipmentMethodResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                Get_shipmentMethodResponseBody200)
                                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (WeclappAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/shipmentMethod") [WeclappAPI.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_shipmentMethodParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                       WeclappAPI.Common.QueryParameter (Data.Text.pack "pageSize") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_shipmentMethodParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                       WeclappAPI.Common.QueryParameter (Data.Text.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_shipmentMethodParametersQuerySort parameters) (Data.Text.pack "form") GHC.Types.False])
-- | > GET /shipmentMethod
-- 
-- The same as 'get_shipmentMethod' but returns the raw 'Data.ByteString.Char8.ByteString'.
get_shipmentMethodRaw :: forall m . WeclappAPI.Common.MonadHTTP m => Get_shipmentMethodParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> WeclappAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
get_shipmentMethodRaw parameters = GHC.Base.id (WeclappAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/shipmentMethod") [WeclappAPI.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_shipmentMethodParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                WeclappAPI.Common.QueryParameter (Data.Text.pack "pageSize") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_shipmentMethodParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                WeclappAPI.Common.QueryParameter (Data.Text.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_shipmentMethodParametersQuerySort parameters) (Data.Text.pack "form") GHC.Types.False])
-- | > GET /shipmentMethod
-- 
-- The same as 'get_shipmentMethod' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
get_shipmentMethodWithConfigurationRaw :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Get_shipmentMethodParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
get_shipmentMethodWithConfigurationRaw config
                                       parameters = GHC.Base.id (WeclappAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/shipmentMethod") [WeclappAPI.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_shipmentMethodParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                       WeclappAPI.Common.QueryParameter (Data.Text.pack "pageSize") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_shipmentMethodParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                       WeclappAPI.Common.QueryParameter (Data.Text.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_shipmentMethodParametersQuerySort parameters) (Data.Text.pack "form") GHC.Types.False])
