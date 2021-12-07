-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation get_customAttributeDefinition
module WeclappAPI.Operations.Get_customAttributeDefinition where

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

-- | > GET /customAttributeDefinition
-- 
-- query customAttributeDefinition
get_customAttributeDefinition :: forall m . WeclappAPI.Common.MonadHTTP m => Get_customAttributeDefinitionParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> WeclappAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Get_customAttributeDefinitionResponse) -- ^ Monadic computation which returns the result of the operation
get_customAttributeDefinition parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either Get_customAttributeDefinitionResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Get_customAttributeDefinitionResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                Get_customAttributeDefinitionResponseBody200)
                                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (WeclappAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/customAttributeDefinition") [WeclappAPI.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_customAttributeDefinitionParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                 WeclappAPI.Common.QueryParameter (Data.Text.pack "pageSize") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_customAttributeDefinitionParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                 WeclappAPI.Common.QueryParameter (Data.Text.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_customAttributeDefinitionParametersQuerySort parameters) (Data.Text.pack "form") GHC.Types.False])
-- | Defines the object schema located at @paths.\/customAttributeDefinition.GET.parameters@ in the specification.
-- 
-- 
data Get_customAttributeDefinitionParameters = Get_customAttributeDefinitionParameters {
  -- | queryPage: Represents the parameter named \'page\'
  get_customAttributeDefinitionParametersQueryPage :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | queryPageSize: Represents the parameter named \'pageSize\'
  , get_customAttributeDefinitionParametersQueryPageSize :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | querySort: Represents the parameter named \'sort\'
  , get_customAttributeDefinitionParametersQuerySort :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Get_customAttributeDefinitionParameters
    where toJSON obj = Data.Aeson.Types.Internal.object ("queryPage" Data.Aeson.Types.ToJSON..= get_customAttributeDefinitionParametersQueryPage obj : "queryPageSize" Data.Aeson.Types.ToJSON..= get_customAttributeDefinitionParametersQueryPageSize obj : "querySort" Data.Aeson.Types.ToJSON..= get_customAttributeDefinitionParametersQuerySort obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("queryPage" Data.Aeson.Types.ToJSON..= get_customAttributeDefinitionParametersQueryPage obj) GHC.Base.<> (("queryPageSize" Data.Aeson.Types.ToJSON..= get_customAttributeDefinitionParametersQueryPageSize obj) GHC.Base.<> ("querySort" Data.Aeson.Types.ToJSON..= get_customAttributeDefinitionParametersQuerySort obj)))
instance Data.Aeson.Types.FromJSON.FromJSON Get_customAttributeDefinitionParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Get_customAttributeDefinitionParameters" (\obj -> ((GHC.Base.pure Get_customAttributeDefinitionParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryPage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryPageSize")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "querySort"))
-- | Create a new 'Get_customAttributeDefinitionParameters' with all required fields.
mkGet_customAttributeDefinitionParameters :: Get_customAttributeDefinitionParameters
mkGet_customAttributeDefinitionParameters = Get_customAttributeDefinitionParameters{get_customAttributeDefinitionParametersQueryPage = GHC.Maybe.Nothing,
                                                                                    get_customAttributeDefinitionParametersQueryPageSize = GHC.Maybe.Nothing,
                                                                                    get_customAttributeDefinitionParametersQuerySort = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'get_customAttributeDefinition'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Get_customAttributeDefinitionResponseError' is used.
data Get_customAttributeDefinitionResponse =
   Get_customAttributeDefinitionResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | Get_customAttributeDefinitionResponse200 Get_customAttributeDefinitionResponseBody200 -- ^ customAttributeDefinition response
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/customAttributeDefinition.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data Get_customAttributeDefinitionResponseBody200 = Get_customAttributeDefinitionResponseBody200 {
  -- | result
  get_customAttributeDefinitionResponseBody200Result :: (GHC.Maybe.Maybe ([CustomAttributeDefinition]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Get_customAttributeDefinitionResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("result" Data.Aeson.Types.ToJSON..= get_customAttributeDefinitionResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("result" Data.Aeson.Types.ToJSON..= get_customAttributeDefinitionResponseBody200Result obj)
instance Data.Aeson.Types.FromJSON.FromJSON Get_customAttributeDefinitionResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Get_customAttributeDefinitionResponseBody200" (\obj -> GHC.Base.pure Get_customAttributeDefinitionResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "result"))
-- | Create a new 'Get_customAttributeDefinitionResponseBody200' with all required fields.
mkGet_customAttributeDefinitionResponseBody200 :: Get_customAttributeDefinitionResponseBody200
mkGet_customAttributeDefinitionResponseBody200 = Get_customAttributeDefinitionResponseBody200{get_customAttributeDefinitionResponseBody200Result = GHC.Maybe.Nothing}
-- | > GET /customAttributeDefinition
-- 
-- The same as 'get_customAttributeDefinition' but accepts an explicit configuration.
get_customAttributeDefinitionWithConfiguration :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Get_customAttributeDefinitionParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Get_customAttributeDefinitionResponse) -- ^ Monadic computation which returns the result of the operation
get_customAttributeDefinitionWithConfiguration config
                                               parameters = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either Get_customAttributeDefinitionResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Get_customAttributeDefinitionResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 Get_customAttributeDefinitionResponseBody200)
                                                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (WeclappAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/customAttributeDefinition") [WeclappAPI.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_customAttributeDefinitionParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        WeclappAPI.Common.QueryParameter (Data.Text.pack "pageSize") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_customAttributeDefinitionParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        WeclappAPI.Common.QueryParameter (Data.Text.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_customAttributeDefinitionParametersQuerySort parameters) (Data.Text.pack "form") GHC.Types.False])
-- | > GET /customAttributeDefinition
-- 
-- The same as 'get_customAttributeDefinition' but returns the raw 'Data.ByteString.Char8.ByteString'.
get_customAttributeDefinitionRaw :: forall m . WeclappAPI.Common.MonadHTTP m => Get_customAttributeDefinitionParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> WeclappAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
get_customAttributeDefinitionRaw parameters = GHC.Base.id (WeclappAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/customAttributeDefinition") [WeclappAPI.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_customAttributeDefinitionParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                      WeclappAPI.Common.QueryParameter (Data.Text.pack "pageSize") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_customAttributeDefinitionParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                      WeclappAPI.Common.QueryParameter (Data.Text.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_customAttributeDefinitionParametersQuerySort parameters) (Data.Text.pack "form") GHC.Types.False])
-- | > GET /customAttributeDefinition
-- 
-- The same as 'get_customAttributeDefinition' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
get_customAttributeDefinitionWithConfigurationRaw :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Get_customAttributeDefinitionParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
get_customAttributeDefinitionWithConfigurationRaw config
                                                  parameters = GHC.Base.id (WeclappAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/customAttributeDefinition") [WeclappAPI.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_customAttributeDefinitionParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                             WeclappAPI.Common.QueryParameter (Data.Text.pack "pageSize") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_customAttributeDefinitionParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                             WeclappAPI.Common.QueryParameter (Data.Text.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_customAttributeDefinitionParametersQuerySort parameters) (Data.Text.pack "form") GHC.Types.False])
