-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation post_document_id__id__upload
module WeclappAPI.Operations.Post_document_id__id__upload where

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

-- | > POST /document/id/{id}/upload
-- 
-- 
post_document_id__id__upload :: forall m . WeclappAPI.Common.MonadHTTP m => Post_document_id__id__uploadParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> WeclappAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Post_document_id__id__uploadResponse) -- ^ Monadic computation which returns the result of the operation
post_document_id__id__upload parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either Post_document_id__id__uploadResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Post_document_id__id__uploadResponse200
                                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (WeclappAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/document/id/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ WeclappAPI.Common.stringifyModel (post_document_id__id__uploadParametersPathId parameters))) GHC.Base.++ "/upload"))) [WeclappAPI.Common.QueryParameter (Data.Text.pack "comment") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> post_document_id__id__uploadParametersQueryComment parameters) (Data.Text.pack "form") GHC.Types.False])
-- | Defines the object schema located at @paths.\/document\/id\/{id}\/upload.POST.parameters@ in the specification.
-- 
-- 
data Post_document_id__id__uploadParameters = Post_document_id__id__uploadParameters {
  -- | pathId: Represents the parameter named \'id\'
  post_document_id__id__uploadParametersPathId :: Data.Text.Internal.Text
  -- | queryComment: Represents the parameter named \'comment\'
  , post_document_id__id__uploadParametersQueryComment :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Post_document_id__id__uploadParameters
    where toJSON obj = Data.Aeson.Types.Internal.object ("pathId" Data.Aeson.Types.ToJSON..= post_document_id__id__uploadParametersPathId obj : "queryComment" Data.Aeson.Types.ToJSON..= post_document_id__id__uploadParametersQueryComment obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("pathId" Data.Aeson.Types.ToJSON..= post_document_id__id__uploadParametersPathId obj) GHC.Base.<> ("queryComment" Data.Aeson.Types.ToJSON..= post_document_id__id__uploadParametersQueryComment obj))
instance Data.Aeson.Types.FromJSON.FromJSON Post_document_id__id__uploadParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Post_document_id__id__uploadParameters" (\obj -> (GHC.Base.pure Post_document_id__id__uploadParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryComment"))
-- | Create a new 'Post_document_id__id__uploadParameters' with all required fields.
mkPost_document_id__id__uploadParameters :: Data.Text.Internal.Text -- ^ 'post_document_id__id__uploadParametersPathId'
  -> Post_document_id__id__uploadParameters
mkPost_document_id__id__uploadParameters post_document_id__id__uploadParametersPathId = Post_document_id__id__uploadParameters{post_document_id__id__uploadParametersPathId = post_document_id__id__uploadParametersPathId,
                                                                                                                               post_document_id__id__uploadParametersQueryComment = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'post_document_id__id__upload'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Post_document_id__id__uploadResponseError' is used.
data Post_document_id__id__uploadResponse =
   Post_document_id__id__uploadResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | Post_document_id__id__uploadResponse200 -- ^ upload response
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | > POST /document/id/{id}/upload
-- 
-- The same as 'post_document_id__id__upload' but accepts an explicit configuration.
post_document_id__id__uploadWithConfiguration :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Post_document_id__id__uploadParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Post_document_id__id__uploadResponse) -- ^ Monadic computation which returns the result of the operation
post_document_id__id__uploadWithConfiguration config
                                              parameters = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either Post_document_id__id__uploadResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Post_document_id__id__uploadResponse200
                                                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (WeclappAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/document/id/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ WeclappAPI.Common.stringifyModel (post_document_id__id__uploadParametersPathId parameters))) GHC.Base.++ "/upload"))) [WeclappAPI.Common.QueryParameter (Data.Text.pack "comment") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> post_document_id__id__uploadParametersQueryComment parameters) (Data.Text.pack "form") GHC.Types.False])
-- | > POST /document/id/{id}/upload
-- 
-- The same as 'post_document_id__id__upload' but returns the raw 'Data.ByteString.Char8.ByteString'.
post_document_id__id__uploadRaw :: forall m . WeclappAPI.Common.MonadHTTP m => Post_document_id__id__uploadParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> WeclappAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
post_document_id__id__uploadRaw parameters = GHC.Base.id (WeclappAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/document/id/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ WeclappAPI.Common.stringifyModel (post_document_id__id__uploadParametersPathId parameters))) GHC.Base.++ "/upload"))) [WeclappAPI.Common.QueryParameter (Data.Text.pack "comment") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> post_document_id__id__uploadParametersQueryComment parameters) (Data.Text.pack "form") GHC.Types.False])
-- | > POST /document/id/{id}/upload
-- 
-- The same as 'post_document_id__id__upload' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
post_document_id__id__uploadWithConfigurationRaw :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Post_document_id__id__uploadParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
post_document_id__id__uploadWithConfigurationRaw config
                                                 parameters = GHC.Base.id (WeclappAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/document/id/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ WeclappAPI.Common.stringifyModel (post_document_id__id__uploadParametersPathId parameters))) GHC.Base.++ "/upload"))) [WeclappAPI.Common.QueryParameter (Data.Text.pack "comment") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> post_document_id__id__uploadParametersQueryComment parameters) (Data.Text.pack "form") GHC.Types.False])
