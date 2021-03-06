-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation get_currency_companyCurrency
module WeclappAPI.Operations.Get_currency_companyCurrency where

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

-- | > GET /currency/companyCurrency
-- 
-- 
get_currency_companyCurrency :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Get_currency_companyCurrencyResponse) -- ^ Monadic computation which returns the result of the operation
get_currency_companyCurrency = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either Get_currency_companyCurrencyResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Get_currency_companyCurrencyResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                  Get_currency_companyCurrencyResponseBody200)
                                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (WeclappAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/currency/companyCurrency") GHC.Base.mempty)
-- | Represents a response of the operation 'get_currency_companyCurrency'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Get_currency_companyCurrencyResponseError' is used.
data Get_currency_companyCurrencyResponse =
   Get_currency_companyCurrencyResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | Get_currency_companyCurrencyResponse200 Get_currency_companyCurrencyResponseBody200 -- ^ companyCurrency response
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/currency\/companyCurrency.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data Get_currency_companyCurrencyResponseBody200 = Get_currency_companyCurrencyResponseBody200 {
  -- | result
  get_currency_companyCurrencyResponseBody200Result :: (GHC.Maybe.Maybe Currency)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Get_currency_companyCurrencyResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("result" Data.Aeson.Types.ToJSON..= get_currency_companyCurrencyResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("result" Data.Aeson.Types.ToJSON..= get_currency_companyCurrencyResponseBody200Result obj)
instance Data.Aeson.Types.FromJSON.FromJSON Get_currency_companyCurrencyResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Get_currency_companyCurrencyResponseBody200" (\obj -> GHC.Base.pure Get_currency_companyCurrencyResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "result"))
-- | Create a new 'Get_currency_companyCurrencyResponseBody200' with all required fields.
mkGet_currency_companyCurrencyResponseBody200 :: Get_currency_companyCurrencyResponseBody200
mkGet_currency_companyCurrencyResponseBody200 = Get_currency_companyCurrencyResponseBody200{get_currency_companyCurrencyResponseBody200Result = GHC.Maybe.Nothing}
-- | > GET /currency/companyCurrency
-- 
-- The same as 'get_currency_companyCurrency' but accepts an explicit configuration.
get_currency_companyCurrencyWithConfiguration :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.Configuration -- ^ The configuration to use in the request
  -> m (Network.HTTP.Client.Types.Response Get_currency_companyCurrencyResponse) -- ^ Monadic computation which returns the result of the operation
get_currency_companyCurrencyWithConfiguration config = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either Get_currency_companyCurrencyResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Get_currency_companyCurrencyResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                          Get_currency_companyCurrencyResponseBody200)
                                                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (WeclappAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/currency/companyCurrency") GHC.Base.mempty)
-- | > GET /currency/companyCurrency
-- 
-- The same as 'get_currency_companyCurrency' but returns the raw 'Data.ByteString.Char8.ByteString'.
get_currency_companyCurrencyRaw :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
get_currency_companyCurrencyRaw = GHC.Base.id (WeclappAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/currency/companyCurrency") GHC.Base.mempty)
-- | > GET /currency/companyCurrency
-- 
-- The same as 'get_currency_companyCurrency' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
get_currency_companyCurrencyWithConfigurationRaw :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.Configuration -- ^ The configuration to use in the request
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
get_currency_companyCurrencyWithConfigurationRaw config = GHC.Base.id (WeclappAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/currency/companyCurrency") GHC.Base.mempty)
