-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation get_customer
module WeclappAPI.Operations.Get_customer where

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

-- | > GET /customer
-- 
-- query customer
get_customer :: forall m . WeclappAPI.Common.MonadHTTP m => Get_customerParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> WeclappAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Get_customerResponse) -- ^ Monadic computation which returns the result of the operation
get_customer parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either Get_customerResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Get_customerResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                             Get_customerResponseBody200)
                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (WeclappAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/customer") [WeclappAPI.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_customerParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                              WeclappAPI.Common.QueryParameter (Data.Text.pack "pageSize") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_customerParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                              WeclappAPI.Common.QueryParameter (Data.Text.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_customerParametersQuerySort parameters) (Data.Text.pack "form") GHC.Types.False])
-- | Defines the object schema located at @paths.\/customer.GET.parameters@ in the specification.
-- 
-- 
data Get_customerParameters = Get_customerParameters {
  -- | queryPage: Represents the parameter named \'page\'
  get_customerParametersQueryPage :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | queryPageSize: Represents the parameter named \'pageSize\'
  , get_customerParametersQueryPageSize :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | querySort: Represents the parameter named \'sort\'
  , get_customerParametersQuerySort :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Get_customerParameters
    where toJSON obj = Data.Aeson.Types.Internal.object ("queryPage" Data.Aeson.Types.ToJSON..= get_customerParametersQueryPage obj : "queryPageSize" Data.Aeson.Types.ToJSON..= get_customerParametersQueryPageSize obj : "querySort" Data.Aeson.Types.ToJSON..= get_customerParametersQuerySort obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("queryPage" Data.Aeson.Types.ToJSON..= get_customerParametersQueryPage obj) GHC.Base.<> (("queryPageSize" Data.Aeson.Types.ToJSON..= get_customerParametersQueryPageSize obj) GHC.Base.<> ("querySort" Data.Aeson.Types.ToJSON..= get_customerParametersQuerySort obj)))
instance Data.Aeson.Types.FromJSON.FromJSON Get_customerParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Get_customerParameters" (\obj -> ((GHC.Base.pure Get_customerParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryPage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryPageSize")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "querySort"))
-- | Create a new 'Get_customerParameters' with all required fields.
mkGet_customerParameters :: Get_customerParameters
mkGet_customerParameters = Get_customerParameters{get_customerParametersQueryPage = GHC.Maybe.Nothing,
                                                  get_customerParametersQueryPageSize = GHC.Maybe.Nothing,
                                                  get_customerParametersQuerySort = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'get_customer'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Get_customerResponseError' is used.
data Get_customerResponse =
   Get_customerResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | Get_customerResponse200 Get_customerResponseBody200 -- ^ customer response
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/customer.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data Get_customerResponseBody200 = Get_customerResponseBody200 {
  -- | result
  get_customerResponseBody200Result :: (GHC.Maybe.Maybe ([Customer]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Get_customerResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("result" Data.Aeson.Types.ToJSON..= get_customerResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("result" Data.Aeson.Types.ToJSON..= get_customerResponseBody200Result obj)
instance Data.Aeson.Types.FromJSON.FromJSON Get_customerResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Get_customerResponseBody200" (\obj -> GHC.Base.pure Get_customerResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "result"))
-- | Create a new 'Get_customerResponseBody200' with all required fields.
mkGet_customerResponseBody200 :: Get_customerResponseBody200
mkGet_customerResponseBody200 = Get_customerResponseBody200{get_customerResponseBody200Result = GHC.Maybe.Nothing}
-- | > GET /customer
-- 
-- The same as 'get_customer' but accepts an explicit configuration.
get_customerWithConfiguration :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Get_customerParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Get_customerResponse) -- ^ Monadic computation which returns the result of the operation
get_customerWithConfiguration config
                              parameters = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either Get_customerResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Get_customerResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                              Get_customerResponseBody200)
                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (WeclappAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/customer") [WeclappAPI.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_customerParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                     WeclappAPI.Common.QueryParameter (Data.Text.pack "pageSize") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_customerParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                     WeclappAPI.Common.QueryParameter (Data.Text.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_customerParametersQuerySort parameters) (Data.Text.pack "form") GHC.Types.False])
-- | > GET /customer
-- 
-- The same as 'get_customer' but returns the raw 'Data.ByteString.Char8.ByteString'.
get_customerRaw :: forall m . WeclappAPI.Common.MonadHTTP m => Get_customerParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> WeclappAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
get_customerRaw parameters = GHC.Base.id (WeclappAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/customer") [WeclappAPI.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_customerParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                    WeclappAPI.Common.QueryParameter (Data.Text.pack "pageSize") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_customerParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                    WeclappAPI.Common.QueryParameter (Data.Text.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_customerParametersQuerySort parameters) (Data.Text.pack "form") GHC.Types.False])
-- | > GET /customer
-- 
-- The same as 'get_customer' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
get_customerWithConfigurationRaw :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Get_customerParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
get_customerWithConfigurationRaw config
                                 parameters = GHC.Base.id (WeclappAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/customer") [WeclappAPI.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_customerParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                           WeclappAPI.Common.QueryParameter (Data.Text.pack "pageSize") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_customerParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                           WeclappAPI.Common.QueryParameter (Data.Text.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_customerParametersQuerySort parameters) (Data.Text.pack "form") GHC.Types.False])