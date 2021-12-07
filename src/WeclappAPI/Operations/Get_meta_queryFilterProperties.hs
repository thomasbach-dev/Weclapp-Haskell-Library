-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation get_meta_queryFilterProperties
module WeclappAPI.Operations.Get_meta_queryFilterProperties where

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

-- | > GET /meta/queryFilterProperties
-- 
-- 
get_meta_queryFilterProperties :: forall m . WeclappAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ resource
  -> WeclappAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Get_meta_queryFilterPropertiesResponse) -- ^ Monadic computation which returns the result of the operation
get_meta_queryFilterProperties resource = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either Get_meta_queryFilterPropertiesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Get_meta_queryFilterPropertiesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                 Get_meta_queryFilterPropertiesResponseBody200)
                                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (WeclappAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/meta/queryFilterProperties") [WeclappAPI.Common.QueryParameter (Data.Text.pack "resource") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON resource) (Data.Text.pack "form") GHC.Types.False])
-- | Represents a response of the operation 'get_meta_queryFilterProperties'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Get_meta_queryFilterPropertiesResponseError' is used.
data Get_meta_queryFilterPropertiesResponse =
   Get_meta_queryFilterPropertiesResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | Get_meta_queryFilterPropertiesResponse200 Get_meta_queryFilterPropertiesResponseBody200 -- ^ queryFilterProperties response
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/meta\/queryFilterProperties.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data Get_meta_queryFilterPropertiesResponseBody200 = Get_meta_queryFilterPropertiesResponseBody200 {
  -- | result
  get_meta_queryFilterPropertiesResponseBody200Result :: (GHC.Maybe.Maybe ([Data.Aeson.Types.Internal.Object]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Get_meta_queryFilterPropertiesResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("result" Data.Aeson.Types.ToJSON..= get_meta_queryFilterPropertiesResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("result" Data.Aeson.Types.ToJSON..= get_meta_queryFilterPropertiesResponseBody200Result obj)
instance Data.Aeson.Types.FromJSON.FromJSON Get_meta_queryFilterPropertiesResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Get_meta_queryFilterPropertiesResponseBody200" (\obj -> GHC.Base.pure Get_meta_queryFilterPropertiesResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "result"))
-- | Create a new 'Get_meta_queryFilterPropertiesResponseBody200' with all required fields.
mkGet_meta_queryFilterPropertiesResponseBody200 :: Get_meta_queryFilterPropertiesResponseBody200
mkGet_meta_queryFilterPropertiesResponseBody200 = Get_meta_queryFilterPropertiesResponseBody200{get_meta_queryFilterPropertiesResponseBody200Result = GHC.Maybe.Nothing}
-- | > GET /meta/queryFilterProperties
-- 
-- The same as 'get_meta_queryFilterProperties' but accepts an explicit configuration.
get_meta_queryFilterPropertiesWithConfiguration :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text -- ^ resource
  -> m (Network.HTTP.Client.Types.Response Get_meta_queryFilterPropertiesResponse) -- ^ Monadic computation which returns the result of the operation
get_meta_queryFilterPropertiesWithConfiguration config
                                                resource = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either Get_meta_queryFilterPropertiesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Get_meta_queryFilterPropertiesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  Get_meta_queryFilterPropertiesResponseBody200)
                                                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (WeclappAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/meta/queryFilterProperties") [WeclappAPI.Common.QueryParameter (Data.Text.pack "resource") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON resource) (Data.Text.pack "form") GHC.Types.False])
-- | > GET /meta/queryFilterProperties
-- 
-- The same as 'get_meta_queryFilterProperties' but returns the raw 'Data.ByteString.Char8.ByteString'.
get_meta_queryFilterPropertiesRaw :: forall m . WeclappAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ resource
  -> WeclappAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
get_meta_queryFilterPropertiesRaw resource = GHC.Base.id (WeclappAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/meta/queryFilterProperties") [WeclappAPI.Common.QueryParameter (Data.Text.pack "resource") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON resource) (Data.Text.pack "form") GHC.Types.False])
-- | > GET /meta/queryFilterProperties
-- 
-- The same as 'get_meta_queryFilterProperties' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
get_meta_queryFilterPropertiesWithConfigurationRaw :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text -- ^ resource
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
get_meta_queryFilterPropertiesWithConfigurationRaw config
                                                   resource = GHC.Base.id (WeclappAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/meta/queryFilterProperties") [WeclappAPI.Common.QueryParameter (Data.Text.pack "resource") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON resource) (Data.Text.pack "form") GHC.Types.False])
