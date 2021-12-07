-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation post_shipmentReturnRectification
module WeclappAPI.Operations.Post_shipmentReturnRectification where

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

-- | > POST /shipmentReturnRectification
-- 
-- create a shipmentReturnRectification
post_shipmentReturnRectification :: forall m . WeclappAPI.Common.MonadHTTP m => ShipmentReturnDescription -- ^ The request body to send
  -> WeclappAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Post_shipmentReturnRectificationResponse) -- ^ Monadic computation which returns the result of the operation
post_shipmentReturnRectification body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either Post_shipmentReturnRectificationResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> Post_shipmentReturnRectificationResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                   ShipmentReturnDescription)
                                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (WeclappAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/shipmentReturnRectification") GHC.Base.mempty (GHC.Maybe.Just body) WeclappAPI.Common.RequestBodyEncodingJSON)
-- | Represents a response of the operation 'post_shipmentReturnRectification'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Post_shipmentReturnRectificationResponseError' is used.
data Post_shipmentReturnRectificationResponse =
   Post_shipmentReturnRectificationResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | Post_shipmentReturnRectificationResponse201 ShipmentReturnDescription -- ^ shipmentReturnRectification create response
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | > POST /shipmentReturnRectification
-- 
-- The same as 'post_shipmentReturnRectification' but accepts an explicit configuration.
post_shipmentReturnRectificationWithConfiguration :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.Configuration -- ^ The configuration to use in the request
  -> ShipmentReturnDescription -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Post_shipmentReturnRectificationResponse) -- ^ Monadic computation which returns the result of the operation
post_shipmentReturnRectificationWithConfiguration config
                                                  body = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either Post_shipmentReturnRectificationResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> Post_shipmentReturnRectificationResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ShipmentReturnDescription)
                                                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (WeclappAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/shipmentReturnRectification") GHC.Base.mempty (GHC.Maybe.Just body) WeclappAPI.Common.RequestBodyEncodingJSON)
-- | > POST /shipmentReturnRectification
-- 
-- The same as 'post_shipmentReturnRectification' but returns the raw 'Data.ByteString.Char8.ByteString'.
post_shipmentReturnRectificationRaw :: forall m . WeclappAPI.Common.MonadHTTP m => ShipmentReturnDescription -- ^ The request body to send
  -> WeclappAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
post_shipmentReturnRectificationRaw body = GHC.Base.id (WeclappAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/shipmentReturnRectification") GHC.Base.mempty (GHC.Maybe.Just body) WeclappAPI.Common.RequestBodyEncodingJSON)
-- | > POST /shipmentReturnRectification
-- 
-- The same as 'post_shipmentReturnRectification' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
post_shipmentReturnRectificationWithConfigurationRaw :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.Configuration -- ^ The configuration to use in the request
  -> ShipmentReturnDescription -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
post_shipmentReturnRectificationWithConfigurationRaw config
                                                     body = GHC.Base.id (WeclappAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/shipmentReturnRectification") GHC.Base.mempty (GHC.Maybe.Just body) WeclappAPI.Common.RequestBodyEncodingJSON)
