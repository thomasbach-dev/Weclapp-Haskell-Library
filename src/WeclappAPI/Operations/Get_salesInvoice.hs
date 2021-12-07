-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation get_salesInvoice
module WeclappAPI.Operations.Get_salesInvoice where

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

-- | > GET /salesInvoice
-- 
-- query salesInvoice
get_salesInvoice :: forall m . WeclappAPI.Common.MonadHTTP m => Get_salesInvoiceParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> WeclappAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Get_salesInvoiceResponse) -- ^ Monadic computation which returns the result of the operation
get_salesInvoice parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either Get_salesInvoiceResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Get_salesInvoiceResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                         Get_salesInvoiceResponseBody200)
                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (WeclappAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/salesInvoice") [WeclappAPI.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_salesInvoiceParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                          WeclappAPI.Common.QueryParameter (Data.Text.pack "pageSize") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_salesInvoiceParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                          WeclappAPI.Common.QueryParameter (Data.Text.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_salesInvoiceParametersQuerySort parameters) (Data.Text.pack "form") GHC.Types.False])
-- | Defines the object schema located at @paths.\/salesInvoice.GET.parameters@ in the specification.
-- 
-- 
data Get_salesInvoiceParameters = Get_salesInvoiceParameters {
  -- | queryPage: Represents the parameter named \'page\'
  get_salesInvoiceParametersQueryPage :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | queryPageSize: Represents the parameter named \'pageSize\'
  , get_salesInvoiceParametersQueryPageSize :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | querySort: Represents the parameter named \'sort\'
  , get_salesInvoiceParametersQuerySort :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Get_salesInvoiceParameters
    where toJSON obj = Data.Aeson.Types.Internal.object ("queryPage" Data.Aeson.Types.ToJSON..= get_salesInvoiceParametersQueryPage obj : "queryPageSize" Data.Aeson.Types.ToJSON..= get_salesInvoiceParametersQueryPageSize obj : "querySort" Data.Aeson.Types.ToJSON..= get_salesInvoiceParametersQuerySort obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("queryPage" Data.Aeson.Types.ToJSON..= get_salesInvoiceParametersQueryPage obj) GHC.Base.<> (("queryPageSize" Data.Aeson.Types.ToJSON..= get_salesInvoiceParametersQueryPageSize obj) GHC.Base.<> ("querySort" Data.Aeson.Types.ToJSON..= get_salesInvoiceParametersQuerySort obj)))
instance Data.Aeson.Types.FromJSON.FromJSON Get_salesInvoiceParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Get_salesInvoiceParameters" (\obj -> ((GHC.Base.pure Get_salesInvoiceParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryPage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryPageSize")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "querySort"))
-- | Create a new 'Get_salesInvoiceParameters' with all required fields.
mkGet_salesInvoiceParameters :: Get_salesInvoiceParameters
mkGet_salesInvoiceParameters = Get_salesInvoiceParameters{get_salesInvoiceParametersQueryPage = GHC.Maybe.Nothing,
                                                          get_salesInvoiceParametersQueryPageSize = GHC.Maybe.Nothing,
                                                          get_salesInvoiceParametersQuerySort = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'get_salesInvoice'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Get_salesInvoiceResponseError' is used.
data Get_salesInvoiceResponse =
   Get_salesInvoiceResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | Get_salesInvoiceResponse200 Get_salesInvoiceResponseBody200 -- ^ salesInvoice response
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/salesInvoice.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data Get_salesInvoiceResponseBody200 = Get_salesInvoiceResponseBody200 {
  -- | result
  get_salesInvoiceResponseBody200Result :: (GHC.Maybe.Maybe ([SalesInvoice]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Get_salesInvoiceResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("result" Data.Aeson.Types.ToJSON..= get_salesInvoiceResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("result" Data.Aeson.Types.ToJSON..= get_salesInvoiceResponseBody200Result obj)
instance Data.Aeson.Types.FromJSON.FromJSON Get_salesInvoiceResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Get_salesInvoiceResponseBody200" (\obj -> GHC.Base.pure Get_salesInvoiceResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "result"))
-- | Create a new 'Get_salesInvoiceResponseBody200' with all required fields.
mkGet_salesInvoiceResponseBody200 :: Get_salesInvoiceResponseBody200
mkGet_salesInvoiceResponseBody200 = Get_salesInvoiceResponseBody200{get_salesInvoiceResponseBody200Result = GHC.Maybe.Nothing}
-- | > GET /salesInvoice
-- 
-- The same as 'get_salesInvoice' but accepts an explicit configuration.
get_salesInvoiceWithConfiguration :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Get_salesInvoiceParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Get_salesInvoiceResponse) -- ^ Monadic computation which returns the result of the operation
get_salesInvoiceWithConfiguration config
                                  parameters = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either Get_salesInvoiceResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Get_salesInvoiceResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                          Get_salesInvoiceResponseBody200)
                                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (WeclappAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/salesInvoice") [WeclappAPI.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_salesInvoiceParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                 WeclappAPI.Common.QueryParameter (Data.Text.pack "pageSize") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_salesInvoiceParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                 WeclappAPI.Common.QueryParameter (Data.Text.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_salesInvoiceParametersQuerySort parameters) (Data.Text.pack "form") GHC.Types.False])
-- | > GET /salesInvoice
-- 
-- The same as 'get_salesInvoice' but returns the raw 'Data.ByteString.Char8.ByteString'.
get_salesInvoiceRaw :: forall m . WeclappAPI.Common.MonadHTTP m => Get_salesInvoiceParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> WeclappAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
get_salesInvoiceRaw parameters = GHC.Base.id (WeclappAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/salesInvoice") [WeclappAPI.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_salesInvoiceParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                            WeclappAPI.Common.QueryParameter (Data.Text.pack "pageSize") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_salesInvoiceParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                            WeclappAPI.Common.QueryParameter (Data.Text.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_salesInvoiceParametersQuerySort parameters) (Data.Text.pack "form") GHC.Types.False])
-- | > GET /salesInvoice
-- 
-- The same as 'get_salesInvoice' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
get_salesInvoiceWithConfigurationRaw :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Get_salesInvoiceParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
get_salesInvoiceWithConfigurationRaw config
                                     parameters = GHC.Base.id (WeclappAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/salesInvoice") [WeclappAPI.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_salesInvoiceParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                   WeclappAPI.Common.QueryParameter (Data.Text.pack "pageSize") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_salesInvoiceParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                   WeclappAPI.Common.QueryParameter (Data.Text.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_salesInvoiceParametersQuerySort parameters) (Data.Text.pack "form") GHC.Types.False])