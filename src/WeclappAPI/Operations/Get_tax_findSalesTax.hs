-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation get_tax_findSalesTax
module WeclappAPI.Operations.Get_tax_findSalesTax where

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

-- | > GET /tax/findSalesTax
-- 
-- 
get_tax_findSalesTax :: forall m . WeclappAPI.Common.MonadHTTP m => Get_tax_findSalesTaxParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> WeclappAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Get_tax_findSalesTaxResponse) -- ^ Monadic computation which returns the result of the operation
get_tax_findSalesTax parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either Get_tax_findSalesTaxResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Get_tax_findSalesTaxResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                     Get_tax_findSalesTaxResponseBody200)
                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (WeclappAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/tax/findSalesTax") [WeclappAPI.Common.QueryParameter (Data.Text.pack "dispatchCountryCode") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (get_tax_findSalesTaxParametersQueryDispatchCountryCode parameters)) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                      WeclappAPI.Common.QueryParameter (Data.Text.pack "recipientCountryCode") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_tax_findSalesTaxParametersQueryRecipientCountryCode parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                      WeclappAPI.Common.QueryParameter (Data.Text.pack "taxRateType") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_tax_findSalesTaxParametersQueryTaxRateType parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                      WeclappAPI.Common.QueryParameter (Data.Text.pack "partyType") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_tax_findSalesTaxParametersQueryPartyType parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                      WeclappAPI.Common.QueryParameter (Data.Text.pack "date") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_tax_findSalesTaxParametersQueryDate parameters) (Data.Text.pack "form") GHC.Types.False])
-- | Defines the object schema located at @paths.\/tax\/findSalesTax.GET.parameters@ in the specification.
-- 
-- 
data Get_tax_findSalesTaxParameters = Get_tax_findSalesTaxParameters {
  -- | queryDate: Represents the parameter named \'date\'
  get_tax_findSalesTaxParametersQueryDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | queryDispatchCountryCode: Represents the parameter named \'dispatchCountryCode\'
  , get_tax_findSalesTaxParametersQueryDispatchCountryCode :: Data.Text.Internal.Text
  -- | queryPartyType: Represents the parameter named \'partyType\'
  , get_tax_findSalesTaxParametersQueryPartyType :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryRecipientCountryCode: Represents the parameter named \'recipientCountryCode\'
  , get_tax_findSalesTaxParametersQueryRecipientCountryCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryTaxRateType: Represents the parameter named \'taxRateType\'
  , get_tax_findSalesTaxParametersQueryTaxRateType :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Get_tax_findSalesTaxParameters
    where toJSON obj = Data.Aeson.Types.Internal.object ("queryDate" Data.Aeson.Types.ToJSON..= get_tax_findSalesTaxParametersQueryDate obj : "queryDispatchCountryCode" Data.Aeson.Types.ToJSON..= get_tax_findSalesTaxParametersQueryDispatchCountryCode obj : "queryPartyType" Data.Aeson.Types.ToJSON..= get_tax_findSalesTaxParametersQueryPartyType obj : "queryRecipientCountryCode" Data.Aeson.Types.ToJSON..= get_tax_findSalesTaxParametersQueryRecipientCountryCode obj : "queryTaxRateType" Data.Aeson.Types.ToJSON..= get_tax_findSalesTaxParametersQueryTaxRateType obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("queryDate" Data.Aeson.Types.ToJSON..= get_tax_findSalesTaxParametersQueryDate obj) GHC.Base.<> (("queryDispatchCountryCode" Data.Aeson.Types.ToJSON..= get_tax_findSalesTaxParametersQueryDispatchCountryCode obj) GHC.Base.<> (("queryPartyType" Data.Aeson.Types.ToJSON..= get_tax_findSalesTaxParametersQueryPartyType obj) GHC.Base.<> (("queryRecipientCountryCode" Data.Aeson.Types.ToJSON..= get_tax_findSalesTaxParametersQueryRecipientCountryCode obj) GHC.Base.<> ("queryTaxRateType" Data.Aeson.Types.ToJSON..= get_tax_findSalesTaxParametersQueryTaxRateType obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON Get_tax_findSalesTaxParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Get_tax_findSalesTaxParameters" (\obj -> ((((GHC.Base.pure Get_tax_findSalesTaxParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryDispatchCountryCode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryPartyType")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryRecipientCountryCode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryTaxRateType"))
-- | Create a new 'Get_tax_findSalesTaxParameters' with all required fields.
mkGet_tax_findSalesTaxParameters :: Data.Text.Internal.Text -- ^ 'get_tax_findSalesTaxParametersQueryDispatchCountryCode'
  -> Get_tax_findSalesTaxParameters
mkGet_tax_findSalesTaxParameters get_tax_findSalesTaxParametersQueryDispatchCountryCode = Get_tax_findSalesTaxParameters{get_tax_findSalesTaxParametersQueryDate = GHC.Maybe.Nothing,
                                                                                                                         get_tax_findSalesTaxParametersQueryDispatchCountryCode = get_tax_findSalesTaxParametersQueryDispatchCountryCode,
                                                                                                                         get_tax_findSalesTaxParametersQueryPartyType = GHC.Maybe.Nothing,
                                                                                                                         get_tax_findSalesTaxParametersQueryRecipientCountryCode = GHC.Maybe.Nothing,
                                                                                                                         get_tax_findSalesTaxParametersQueryTaxRateType = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'get_tax_findSalesTax'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Get_tax_findSalesTaxResponseError' is used.
data Get_tax_findSalesTaxResponse =
   Get_tax_findSalesTaxResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | Get_tax_findSalesTaxResponse200 Get_tax_findSalesTaxResponseBody200 -- ^ findSalesTax response
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/tax\/findSalesTax.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data Get_tax_findSalesTaxResponseBody200 = Get_tax_findSalesTaxResponseBody200 {
  -- | result
  get_tax_findSalesTaxResponseBody200Result :: (GHC.Maybe.Maybe Tax)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Get_tax_findSalesTaxResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("result" Data.Aeson.Types.ToJSON..= get_tax_findSalesTaxResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("result" Data.Aeson.Types.ToJSON..= get_tax_findSalesTaxResponseBody200Result obj)
instance Data.Aeson.Types.FromJSON.FromJSON Get_tax_findSalesTaxResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Get_tax_findSalesTaxResponseBody200" (\obj -> GHC.Base.pure Get_tax_findSalesTaxResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "result"))
-- | Create a new 'Get_tax_findSalesTaxResponseBody200' with all required fields.
mkGet_tax_findSalesTaxResponseBody200 :: Get_tax_findSalesTaxResponseBody200
mkGet_tax_findSalesTaxResponseBody200 = Get_tax_findSalesTaxResponseBody200{get_tax_findSalesTaxResponseBody200Result = GHC.Maybe.Nothing}
-- | > GET /tax/findSalesTax
-- 
-- The same as 'get_tax_findSalesTax' but accepts an explicit configuration.
get_tax_findSalesTaxWithConfiguration :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Get_tax_findSalesTaxParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Get_tax_findSalesTaxResponse) -- ^ Monadic computation which returns the result of the operation
get_tax_findSalesTaxWithConfiguration config
                                      parameters = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either Get_tax_findSalesTaxResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Get_tax_findSalesTaxResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                      Get_tax_findSalesTaxResponseBody200)
                                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (WeclappAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/tax/findSalesTax") [WeclappAPI.Common.QueryParameter (Data.Text.pack "dispatchCountryCode") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (get_tax_findSalesTaxParametersQueryDispatchCountryCode parameters)) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                             WeclappAPI.Common.QueryParameter (Data.Text.pack "recipientCountryCode") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_tax_findSalesTaxParametersQueryRecipientCountryCode parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                             WeclappAPI.Common.QueryParameter (Data.Text.pack "taxRateType") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_tax_findSalesTaxParametersQueryTaxRateType parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                             WeclappAPI.Common.QueryParameter (Data.Text.pack "partyType") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_tax_findSalesTaxParametersQueryPartyType parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                             WeclappAPI.Common.QueryParameter (Data.Text.pack "date") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_tax_findSalesTaxParametersQueryDate parameters) (Data.Text.pack "form") GHC.Types.False])
-- | > GET /tax/findSalesTax
-- 
-- The same as 'get_tax_findSalesTax' but returns the raw 'Data.ByteString.Char8.ByteString'.
get_tax_findSalesTaxRaw :: forall m . WeclappAPI.Common.MonadHTTP m => Get_tax_findSalesTaxParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> WeclappAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
get_tax_findSalesTaxRaw parameters = GHC.Base.id (WeclappAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/tax/findSalesTax") [WeclappAPI.Common.QueryParameter (Data.Text.pack "dispatchCountryCode") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (get_tax_findSalesTaxParametersQueryDispatchCountryCode parameters)) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                    WeclappAPI.Common.QueryParameter (Data.Text.pack "recipientCountryCode") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_tax_findSalesTaxParametersQueryRecipientCountryCode parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                    WeclappAPI.Common.QueryParameter (Data.Text.pack "taxRateType") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_tax_findSalesTaxParametersQueryTaxRateType parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                    WeclappAPI.Common.QueryParameter (Data.Text.pack "partyType") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_tax_findSalesTaxParametersQueryPartyType parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                    WeclappAPI.Common.QueryParameter (Data.Text.pack "date") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_tax_findSalesTaxParametersQueryDate parameters) (Data.Text.pack "form") GHC.Types.False])
-- | > GET /tax/findSalesTax
-- 
-- The same as 'get_tax_findSalesTax' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
get_tax_findSalesTaxWithConfigurationRaw :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Get_tax_findSalesTaxParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
get_tax_findSalesTaxWithConfigurationRaw config
                                         parameters = GHC.Base.id (WeclappAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/tax/findSalesTax") [WeclappAPI.Common.QueryParameter (Data.Text.pack "dispatchCountryCode") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (get_tax_findSalesTaxParametersQueryDispatchCountryCode parameters)) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                           WeclappAPI.Common.QueryParameter (Data.Text.pack "recipientCountryCode") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_tax_findSalesTaxParametersQueryRecipientCountryCode parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                           WeclappAPI.Common.QueryParameter (Data.Text.pack "taxRateType") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_tax_findSalesTaxParametersQueryTaxRateType parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                           WeclappAPI.Common.QueryParameter (Data.Text.pack "partyType") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_tax_findSalesTaxParametersQueryPartyType parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                           WeclappAPI.Common.QueryParameter (Data.Text.pack "date") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_tax_findSalesTaxParametersQueryDate parameters) (Data.Text.pack "form") GHC.Types.False])
