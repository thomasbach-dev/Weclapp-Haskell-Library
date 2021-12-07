-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation post_remotePrintJob_createPrintJobWithDocument
module WeclappAPI.Operations.Post_remotePrintJob_createPrintJobWithDocument where

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

-- | > POST /remotePrintJob/createPrintJobWithDocument
-- 
-- 
post_remotePrintJob_createPrintJobWithDocument :: forall m . WeclappAPI.Common.MonadHTTP m => Post_remotePrintJob_createPrintJobWithDocumentParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> WeclappAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Post_remotePrintJob_createPrintJobWithDocumentResponse) -- ^ Monadic computation which returns the result of the operation
post_remotePrintJob_createPrintJobWithDocument parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either Post_remotePrintJob_createPrintJobWithDocumentResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Post_remotePrintJob_createPrintJobWithDocumentResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   Post_remotePrintJob_createPrintJobWithDocumentResponseBody200)
                                                                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (WeclappAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/remotePrintJob/createPrintJobWithDocument") [WeclappAPI.Common.QueryParameter (Data.Text.pack "weclappOsId") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (post_remotePrintJob_createPrintJobWithDocumentParametersQueryWeclappOsId parameters)) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    WeclappAPI.Common.QueryParameter (Data.Text.pack "printerName") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (post_remotePrintJob_createPrintJobWithDocumentParametersQueryPrinterName parameters)) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    WeclappAPI.Common.QueryParameter (Data.Text.pack "quantity") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (post_remotePrintJob_createPrintJobWithDocumentParametersQueryQuantity parameters)) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    WeclappAPI.Common.QueryParameter (Data.Text.pack "documentName") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (post_remotePrintJob_createPrintJobWithDocumentParametersQueryDocumentName parameters)) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    WeclappAPI.Common.QueryParameter (Data.Text.pack "documentDescription") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> post_remotePrintJob_createPrintJobWithDocumentParametersQueryDocumentDescription parameters) (Data.Text.pack "form") GHC.Types.False])
-- | Defines the object schema located at @paths.\/remotePrintJob\/createPrintJobWithDocument.POST.parameters@ in the specification.
-- 
-- 
data Post_remotePrintJob_createPrintJobWithDocumentParameters = Post_remotePrintJob_createPrintJobWithDocumentParameters {
  -- | queryDocumentDescription: Represents the parameter named \'documentDescription\'
  post_remotePrintJob_createPrintJobWithDocumentParametersQueryDocumentDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryDocumentName: Represents the parameter named \'documentName\'
  , post_remotePrintJob_createPrintJobWithDocumentParametersQueryDocumentName :: Data.Text.Internal.Text
  -- | queryPrinterName: Represents the parameter named \'printerName\'
  , post_remotePrintJob_createPrintJobWithDocumentParametersQueryPrinterName :: Data.Text.Internal.Text
  -- | queryQuantity: Represents the parameter named \'quantity\'
  , post_remotePrintJob_createPrintJobWithDocumentParametersQueryQuantity :: GHC.Int.Int32
  -- | queryWeclappOsId: Represents the parameter named \'weclappOsId\'
  , post_remotePrintJob_createPrintJobWithDocumentParametersQueryWeclappOsId :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Post_remotePrintJob_createPrintJobWithDocumentParameters
    where toJSON obj = Data.Aeson.Types.Internal.object ("queryDocumentDescription" Data.Aeson.Types.ToJSON..= post_remotePrintJob_createPrintJobWithDocumentParametersQueryDocumentDescription obj : "queryDocumentName" Data.Aeson.Types.ToJSON..= post_remotePrintJob_createPrintJobWithDocumentParametersQueryDocumentName obj : "queryPrinterName" Data.Aeson.Types.ToJSON..= post_remotePrintJob_createPrintJobWithDocumentParametersQueryPrinterName obj : "queryQuantity" Data.Aeson.Types.ToJSON..= post_remotePrintJob_createPrintJobWithDocumentParametersQueryQuantity obj : "queryWeclappOsId" Data.Aeson.Types.ToJSON..= post_remotePrintJob_createPrintJobWithDocumentParametersQueryWeclappOsId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("queryDocumentDescription" Data.Aeson.Types.ToJSON..= post_remotePrintJob_createPrintJobWithDocumentParametersQueryDocumentDescription obj) GHC.Base.<> (("queryDocumentName" Data.Aeson.Types.ToJSON..= post_remotePrintJob_createPrintJobWithDocumentParametersQueryDocumentName obj) GHC.Base.<> (("queryPrinterName" Data.Aeson.Types.ToJSON..= post_remotePrintJob_createPrintJobWithDocumentParametersQueryPrinterName obj) GHC.Base.<> (("queryQuantity" Data.Aeson.Types.ToJSON..= post_remotePrintJob_createPrintJobWithDocumentParametersQueryQuantity obj) GHC.Base.<> ("queryWeclappOsId" Data.Aeson.Types.ToJSON..= post_remotePrintJob_createPrintJobWithDocumentParametersQueryWeclappOsId obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON Post_remotePrintJob_createPrintJobWithDocumentParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Post_remotePrintJob_createPrintJobWithDocumentParameters" (\obj -> ((((GHC.Base.pure Post_remotePrintJob_createPrintJobWithDocumentParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryDocumentDescription")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryDocumentName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryPrinterName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryQuantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryWeclappOsId"))
-- | Create a new 'Post_remotePrintJob_createPrintJobWithDocumentParameters' with all required fields.
mkPost_remotePrintJob_createPrintJobWithDocumentParameters :: Data.Text.Internal.Text -- ^ 'post_remotePrintJob_createPrintJobWithDocumentParametersQueryDocumentName'
  -> Data.Text.Internal.Text -- ^ 'post_remotePrintJob_createPrintJobWithDocumentParametersQueryPrinterName'
  -> GHC.Int.Int32 -- ^ 'post_remotePrintJob_createPrintJobWithDocumentParametersQueryQuantity'
  -> Data.Text.Internal.Text -- ^ 'post_remotePrintJob_createPrintJobWithDocumentParametersQueryWeclappOsId'
  -> Post_remotePrintJob_createPrintJobWithDocumentParameters
mkPost_remotePrintJob_createPrintJobWithDocumentParameters post_remotePrintJob_createPrintJobWithDocumentParametersQueryDocumentName post_remotePrintJob_createPrintJobWithDocumentParametersQueryPrinterName post_remotePrintJob_createPrintJobWithDocumentParametersQueryQuantity post_remotePrintJob_createPrintJobWithDocumentParametersQueryWeclappOsId = Post_remotePrintJob_createPrintJobWithDocumentParameters{post_remotePrintJob_createPrintJobWithDocumentParametersQueryDocumentDescription = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                                                                                                                                                                        post_remotePrintJob_createPrintJobWithDocumentParametersQueryDocumentName = post_remotePrintJob_createPrintJobWithDocumentParametersQueryDocumentName,
                                                                                                                                                                                                                                                                                                                                                                                                                        post_remotePrintJob_createPrintJobWithDocumentParametersQueryPrinterName = post_remotePrintJob_createPrintJobWithDocumentParametersQueryPrinterName,
                                                                                                                                                                                                                                                                                                                                                                                                                        post_remotePrintJob_createPrintJobWithDocumentParametersQueryQuantity = post_remotePrintJob_createPrintJobWithDocumentParametersQueryQuantity,
                                                                                                                                                                                                                                                                                                                                                                                                                        post_remotePrintJob_createPrintJobWithDocumentParametersQueryWeclappOsId = post_remotePrintJob_createPrintJobWithDocumentParametersQueryWeclappOsId}
-- | Represents a response of the operation 'post_remotePrintJob_createPrintJobWithDocument'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Post_remotePrintJob_createPrintJobWithDocumentResponseError' is used.
data Post_remotePrintJob_createPrintJobWithDocumentResponse =
   Post_remotePrintJob_createPrintJobWithDocumentResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | Post_remotePrintJob_createPrintJobWithDocumentResponse200 Post_remotePrintJob_createPrintJobWithDocumentResponseBody200 -- ^ createPrintJobWithDocument response
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/remotePrintJob\/createPrintJobWithDocument.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data Post_remotePrintJob_createPrintJobWithDocumentResponseBody200 = Post_remotePrintJob_createPrintJobWithDocumentResponseBody200 {
  -- | result
  post_remotePrintJob_createPrintJobWithDocumentResponseBody200Result :: (GHC.Maybe.Maybe RemotePrintJob)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Post_remotePrintJob_createPrintJobWithDocumentResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("result" Data.Aeson.Types.ToJSON..= post_remotePrintJob_createPrintJobWithDocumentResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("result" Data.Aeson.Types.ToJSON..= post_remotePrintJob_createPrintJobWithDocumentResponseBody200Result obj)
instance Data.Aeson.Types.FromJSON.FromJSON Post_remotePrintJob_createPrintJobWithDocumentResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Post_remotePrintJob_createPrintJobWithDocumentResponseBody200" (\obj -> GHC.Base.pure Post_remotePrintJob_createPrintJobWithDocumentResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "result"))
-- | Create a new 'Post_remotePrintJob_createPrintJobWithDocumentResponseBody200' with all required fields.
mkPost_remotePrintJob_createPrintJobWithDocumentResponseBody200 :: Post_remotePrintJob_createPrintJobWithDocumentResponseBody200
mkPost_remotePrintJob_createPrintJobWithDocumentResponseBody200 = Post_remotePrintJob_createPrintJobWithDocumentResponseBody200{post_remotePrintJob_createPrintJobWithDocumentResponseBody200Result = GHC.Maybe.Nothing}
-- | > POST /remotePrintJob/createPrintJobWithDocument
-- 
-- The same as 'post_remotePrintJob_createPrintJobWithDocument' but accepts an explicit configuration.
post_remotePrintJob_createPrintJobWithDocumentWithConfiguration :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Post_remotePrintJob_createPrintJobWithDocumentParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Post_remotePrintJob_createPrintJobWithDocumentResponse) -- ^ Monadic computation which returns the result of the operation
post_remotePrintJob_createPrintJobWithDocumentWithConfiguration config
                                                                parameters = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either Post_remotePrintJob_createPrintJobWithDocumentResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Post_remotePrintJob_createPrintJobWithDocumentResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    Post_remotePrintJob_createPrintJobWithDocumentResponseBody200)
                                                                                                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (WeclappAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/remotePrintJob/createPrintJobWithDocument") [WeclappAPI.Common.QueryParameter (Data.Text.pack "weclappOsId") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (post_remotePrintJob_createPrintJobWithDocumentParametersQueryWeclappOsId parameters)) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           WeclappAPI.Common.QueryParameter (Data.Text.pack "printerName") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (post_remotePrintJob_createPrintJobWithDocumentParametersQueryPrinterName parameters)) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           WeclappAPI.Common.QueryParameter (Data.Text.pack "quantity") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (post_remotePrintJob_createPrintJobWithDocumentParametersQueryQuantity parameters)) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           WeclappAPI.Common.QueryParameter (Data.Text.pack "documentName") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (post_remotePrintJob_createPrintJobWithDocumentParametersQueryDocumentName parameters)) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           WeclappAPI.Common.QueryParameter (Data.Text.pack "documentDescription") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> post_remotePrintJob_createPrintJobWithDocumentParametersQueryDocumentDescription parameters) (Data.Text.pack "form") GHC.Types.False])
-- | > POST /remotePrintJob/createPrintJobWithDocument
-- 
-- The same as 'post_remotePrintJob_createPrintJobWithDocument' but returns the raw 'Data.ByteString.Char8.ByteString'.
post_remotePrintJob_createPrintJobWithDocumentRaw :: forall m . WeclappAPI.Common.MonadHTTP m => Post_remotePrintJob_createPrintJobWithDocumentParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> WeclappAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
post_remotePrintJob_createPrintJobWithDocumentRaw parameters = GHC.Base.id (WeclappAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/remotePrintJob/createPrintJobWithDocument") [WeclappAPI.Common.QueryParameter (Data.Text.pack "weclappOsId") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (post_remotePrintJob_createPrintJobWithDocumentParametersQueryWeclappOsId parameters)) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                        WeclappAPI.Common.QueryParameter (Data.Text.pack "printerName") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (post_remotePrintJob_createPrintJobWithDocumentParametersQueryPrinterName parameters)) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                        WeclappAPI.Common.QueryParameter (Data.Text.pack "quantity") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (post_remotePrintJob_createPrintJobWithDocumentParametersQueryQuantity parameters)) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                        WeclappAPI.Common.QueryParameter (Data.Text.pack "documentName") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (post_remotePrintJob_createPrintJobWithDocumentParametersQueryDocumentName parameters)) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                        WeclappAPI.Common.QueryParameter (Data.Text.pack "documentDescription") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> post_remotePrintJob_createPrintJobWithDocumentParametersQueryDocumentDescription parameters) (Data.Text.pack "form") GHC.Types.False])
-- | > POST /remotePrintJob/createPrintJobWithDocument
-- 
-- The same as 'post_remotePrintJob_createPrintJobWithDocument' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
post_remotePrintJob_createPrintJobWithDocumentWithConfigurationRaw :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Post_remotePrintJob_createPrintJobWithDocumentParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
post_remotePrintJob_createPrintJobWithDocumentWithConfigurationRaw config
                                                                   parameters = GHC.Base.id (WeclappAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/remotePrintJob/createPrintJobWithDocument") [WeclappAPI.Common.QueryParameter (Data.Text.pack "weclappOsId") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (post_remotePrintJob_createPrintJobWithDocumentParametersQueryWeclappOsId parameters)) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                               WeclappAPI.Common.QueryParameter (Data.Text.pack "printerName") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (post_remotePrintJob_createPrintJobWithDocumentParametersQueryPrinterName parameters)) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                               WeclappAPI.Common.QueryParameter (Data.Text.pack "quantity") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (post_remotePrintJob_createPrintJobWithDocumentParametersQueryQuantity parameters)) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                               WeclappAPI.Common.QueryParameter (Data.Text.pack "documentName") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (post_remotePrintJob_createPrintJobWithDocumentParametersQueryDocumentName parameters)) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                               WeclappAPI.Common.QueryParameter (Data.Text.pack "documentDescription") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> post_remotePrintJob_createPrintJobWithDocumentParametersQueryDocumentDescription parameters) (Data.Text.pack "form") GHC.Types.False])
