-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation get_blanketPurchaseOrder_count
module WeclappAPI.Operations.Get_blanketPurchaseOrder_count where

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

-- | > GET /blanketPurchaseOrder/count
-- 
-- count blanketPurchaseOrder
get_blanketPurchaseOrder_count :: forall m . WeclappAPI.Common.MonadHTTP m => Get_blanketPurchaseOrder_countParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> WeclappAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Get_blanketPurchaseOrder_countResponse) -- ^ Monadic computation which returns the result of the operation
get_blanketPurchaseOrder_count parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either Get_blanketPurchaseOrder_countResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Get_blanketPurchaseOrder_countResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                   Get_blanketPurchaseOrder_countResponseBody200)
                                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (WeclappAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/blanketPurchaseOrder/count") [WeclappAPI.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_blanketPurchaseOrder_countParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                    WeclappAPI.Common.QueryParameter (Data.Text.pack "pageSize") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_blanketPurchaseOrder_countParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                    WeclappAPI.Common.QueryParameter (Data.Text.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_blanketPurchaseOrder_countParametersQuerySort parameters) (Data.Text.pack "form") GHC.Types.False])
-- | Defines the object schema located at @paths.\/blanketPurchaseOrder\/count.GET.parameters@ in the specification.
-- 
-- 
data Get_blanketPurchaseOrder_countParameters = Get_blanketPurchaseOrder_countParameters {
  -- | queryPage: Represents the parameter named \'page\'
  get_blanketPurchaseOrder_countParametersQueryPage :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | queryPageSize: Represents the parameter named \'pageSize\'
  , get_blanketPurchaseOrder_countParametersQueryPageSize :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | querySort: Represents the parameter named \'sort\'
  , get_blanketPurchaseOrder_countParametersQuerySort :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Get_blanketPurchaseOrder_countParameters
    where toJSON obj = Data.Aeson.Types.Internal.object ("queryPage" Data.Aeson.Types.ToJSON..= get_blanketPurchaseOrder_countParametersQueryPage obj : "queryPageSize" Data.Aeson.Types.ToJSON..= get_blanketPurchaseOrder_countParametersQueryPageSize obj : "querySort" Data.Aeson.Types.ToJSON..= get_blanketPurchaseOrder_countParametersQuerySort obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("queryPage" Data.Aeson.Types.ToJSON..= get_blanketPurchaseOrder_countParametersQueryPage obj) GHC.Base.<> (("queryPageSize" Data.Aeson.Types.ToJSON..= get_blanketPurchaseOrder_countParametersQueryPageSize obj) GHC.Base.<> ("querySort" Data.Aeson.Types.ToJSON..= get_blanketPurchaseOrder_countParametersQuerySort obj)))
instance Data.Aeson.Types.FromJSON.FromJSON Get_blanketPurchaseOrder_countParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Get_blanketPurchaseOrder_countParameters" (\obj -> ((GHC.Base.pure Get_blanketPurchaseOrder_countParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryPage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryPageSize")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "querySort"))
-- | Create a new 'Get_blanketPurchaseOrder_countParameters' with all required fields.
mkGet_blanketPurchaseOrder_countParameters :: Get_blanketPurchaseOrder_countParameters
mkGet_blanketPurchaseOrder_countParameters = Get_blanketPurchaseOrder_countParameters{get_blanketPurchaseOrder_countParametersQueryPage = GHC.Maybe.Nothing,
                                                                                      get_blanketPurchaseOrder_countParametersQueryPageSize = GHC.Maybe.Nothing,
                                                                                      get_blanketPurchaseOrder_countParametersQuerySort = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'get_blanketPurchaseOrder_count'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Get_blanketPurchaseOrder_countResponseError' is used.
data Get_blanketPurchaseOrder_countResponse =
   Get_blanketPurchaseOrder_countResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | Get_blanketPurchaseOrder_countResponse200 Get_blanketPurchaseOrder_countResponseBody200 -- ^ count
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/blanketPurchaseOrder\/count.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data Get_blanketPurchaseOrder_countResponseBody200 = Get_blanketPurchaseOrder_countResponseBody200 {
  -- | result
  get_blanketPurchaseOrder_countResponseBody200Result :: (GHC.Maybe.Maybe GHC.Int.Int64)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Get_blanketPurchaseOrder_countResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("result" Data.Aeson.Types.ToJSON..= get_blanketPurchaseOrder_countResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("result" Data.Aeson.Types.ToJSON..= get_blanketPurchaseOrder_countResponseBody200Result obj)
instance Data.Aeson.Types.FromJSON.FromJSON Get_blanketPurchaseOrder_countResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Get_blanketPurchaseOrder_countResponseBody200" (\obj -> GHC.Base.pure Get_blanketPurchaseOrder_countResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "result"))
-- | Create a new 'Get_blanketPurchaseOrder_countResponseBody200' with all required fields.
mkGet_blanketPurchaseOrder_countResponseBody200 :: Get_blanketPurchaseOrder_countResponseBody200
mkGet_blanketPurchaseOrder_countResponseBody200 = Get_blanketPurchaseOrder_countResponseBody200{get_blanketPurchaseOrder_countResponseBody200Result = GHC.Maybe.Nothing}
-- | > GET /blanketPurchaseOrder/count
-- 
-- The same as 'get_blanketPurchaseOrder_count' but accepts an explicit configuration.
get_blanketPurchaseOrder_countWithConfiguration :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Get_blanketPurchaseOrder_countParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Get_blanketPurchaseOrder_countResponse) -- ^ Monadic computation which returns the result of the operation
get_blanketPurchaseOrder_countWithConfiguration config
                                                parameters = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either Get_blanketPurchaseOrder_countResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Get_blanketPurchaseOrder_countResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    Get_blanketPurchaseOrder_countResponseBody200)
                                                                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (WeclappAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/blanketPurchaseOrder/count") [WeclappAPI.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_blanketPurchaseOrder_countParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           WeclappAPI.Common.QueryParameter (Data.Text.pack "pageSize") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_blanketPurchaseOrder_countParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           WeclappAPI.Common.QueryParameter (Data.Text.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_blanketPurchaseOrder_countParametersQuerySort parameters) (Data.Text.pack "form") GHC.Types.False])
-- | > GET /blanketPurchaseOrder/count
-- 
-- The same as 'get_blanketPurchaseOrder_count' but returns the raw 'Data.ByteString.Char8.ByteString'.
get_blanketPurchaseOrder_countRaw :: forall m . WeclappAPI.Common.MonadHTTP m => Get_blanketPurchaseOrder_countParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> WeclappAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
get_blanketPurchaseOrder_countRaw parameters = GHC.Base.id (WeclappAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/blanketPurchaseOrder/count") [WeclappAPI.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_blanketPurchaseOrder_countParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                        WeclappAPI.Common.QueryParameter (Data.Text.pack "pageSize") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_blanketPurchaseOrder_countParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                        WeclappAPI.Common.QueryParameter (Data.Text.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_blanketPurchaseOrder_countParametersQuerySort parameters) (Data.Text.pack "form") GHC.Types.False])
-- | > GET /blanketPurchaseOrder/count
-- 
-- The same as 'get_blanketPurchaseOrder_count' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
get_blanketPurchaseOrder_countWithConfigurationRaw :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Get_blanketPurchaseOrder_countParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
get_blanketPurchaseOrder_countWithConfigurationRaw config
                                                   parameters = GHC.Base.id (WeclappAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/blanketPurchaseOrder/count") [WeclappAPI.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_blanketPurchaseOrder_countParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                               WeclappAPI.Common.QueryParameter (Data.Text.pack "pageSize") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_blanketPurchaseOrder_countParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                               WeclappAPI.Common.QueryParameter (Data.Text.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_blanketPurchaseOrder_countParametersQuerySort parameters) (Data.Text.pack "form") GHC.Types.False])
