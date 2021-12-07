-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation get_article_id__id__downloadMainArticleImage
module WeclappAPI.Operations.Get_article_id__id__downloadMainArticleImage where

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

-- | > GET /article/id/{id}/downloadMainArticleImage
-- 
-- 
get_article_id__id__downloadMainArticleImage :: forall m . WeclappAPI.Common.MonadHTTP m => Get_article_id__id__downloadMainArticleImageParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> WeclappAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Get_article_id__id__downloadMainArticleImageResponse) -- ^ Monadic computation which returns the result of the operation
get_article_id__id__downloadMainArticleImage parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either Get_article_id__id__downloadMainArticleImageResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Get_article_id__id__downloadMainArticleImageResponse200
                                                                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (WeclappAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/article/id/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ WeclappAPI.Common.stringifyModel (get_article_id__id__downloadMainArticleImageParametersPathId parameters))) GHC.Base.++ "/downloadMainArticleImage"))) [WeclappAPI.Common.QueryParameter (Data.Text.pack "preview") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_article_id__id__downloadMainArticleImageParametersQueryPreview parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   WeclappAPI.Common.QueryParameter (Data.Text.pack "scaleWidth") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_article_id__id__downloadMainArticleImageParametersQueryScaleWidth parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   WeclappAPI.Common.QueryParameter (Data.Text.pack "scaleHeight") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_article_id__id__downloadMainArticleImageParametersQueryScaleHeight parameters) (Data.Text.pack "form") GHC.Types.False])
-- | Defines the object schema located at @paths.\/article\/id\/{id}\/downloadMainArticleImage.GET.parameters@ in the specification.
-- 
-- 
data Get_article_id__id__downloadMainArticleImageParameters = Get_article_id__id__downloadMainArticleImageParameters {
  -- | pathId: Represents the parameter named \'id\'
  get_article_id__id__downloadMainArticleImageParametersPathId :: Data.Text.Internal.Text
  -- | queryPreview: Represents the parameter named \'preview\'
  , get_article_id__id__downloadMainArticleImageParametersQueryPreview :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | queryScaleHeight: Represents the parameter named \'scaleHeight\'
  , get_article_id__id__downloadMainArticleImageParametersQueryScaleHeight :: (GHC.Maybe.Maybe GHC.Int.Int32)
  -- | queryScaleWidth: Represents the parameter named \'scaleWidth\'
  , get_article_id__id__downloadMainArticleImageParametersQueryScaleWidth :: (GHC.Maybe.Maybe GHC.Int.Int32)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Get_article_id__id__downloadMainArticleImageParameters
    where toJSON obj = Data.Aeson.Types.Internal.object ("pathId" Data.Aeson.Types.ToJSON..= get_article_id__id__downloadMainArticleImageParametersPathId obj : "queryPreview" Data.Aeson.Types.ToJSON..= get_article_id__id__downloadMainArticleImageParametersQueryPreview obj : "queryScaleHeight" Data.Aeson.Types.ToJSON..= get_article_id__id__downloadMainArticleImageParametersQueryScaleHeight obj : "queryScaleWidth" Data.Aeson.Types.ToJSON..= get_article_id__id__downloadMainArticleImageParametersQueryScaleWidth obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("pathId" Data.Aeson.Types.ToJSON..= get_article_id__id__downloadMainArticleImageParametersPathId obj) GHC.Base.<> (("queryPreview" Data.Aeson.Types.ToJSON..= get_article_id__id__downloadMainArticleImageParametersQueryPreview obj) GHC.Base.<> (("queryScaleHeight" Data.Aeson.Types.ToJSON..= get_article_id__id__downloadMainArticleImageParametersQueryScaleHeight obj) GHC.Base.<> ("queryScaleWidth" Data.Aeson.Types.ToJSON..= get_article_id__id__downloadMainArticleImageParametersQueryScaleWidth obj))))
instance Data.Aeson.Types.FromJSON.FromJSON Get_article_id__id__downloadMainArticleImageParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Get_article_id__id__downloadMainArticleImageParameters" (\obj -> (((GHC.Base.pure Get_article_id__id__downloadMainArticleImageParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryPreview")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryScaleHeight")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryScaleWidth"))
-- | Create a new 'Get_article_id__id__downloadMainArticleImageParameters' with all required fields.
mkGet_article_id__id__downloadMainArticleImageParameters :: Data.Text.Internal.Text -- ^ 'get_article_id__id__downloadMainArticleImageParametersPathId'
  -> Get_article_id__id__downloadMainArticleImageParameters
mkGet_article_id__id__downloadMainArticleImageParameters get_article_id__id__downloadMainArticleImageParametersPathId = Get_article_id__id__downloadMainArticleImageParameters{get_article_id__id__downloadMainArticleImageParametersPathId = get_article_id__id__downloadMainArticleImageParametersPathId,
                                                                                                                                                                               get_article_id__id__downloadMainArticleImageParametersQueryPreview = GHC.Maybe.Nothing,
                                                                                                                                                                               get_article_id__id__downloadMainArticleImageParametersQueryScaleHeight = GHC.Maybe.Nothing,
                                                                                                                                                                               get_article_id__id__downloadMainArticleImageParametersQueryScaleWidth = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'get_article_id__id__downloadMainArticleImage'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Get_article_id__id__downloadMainArticleImageResponseError' is used.
data Get_article_id__id__downloadMainArticleImageResponse =
   Get_article_id__id__downloadMainArticleImageResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | Get_article_id__id__downloadMainArticleImageResponse200 -- ^ downloadMainArticleImage response
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | > GET /article/id/{id}/downloadMainArticleImage
-- 
-- The same as 'get_article_id__id__downloadMainArticleImage' but accepts an explicit configuration.
get_article_id__id__downloadMainArticleImageWithConfiguration :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Get_article_id__id__downloadMainArticleImageParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Get_article_id__id__downloadMainArticleImageResponse) -- ^ Monadic computation which returns the result of the operation
get_article_id__id__downloadMainArticleImageWithConfiguration config
                                                              parameters = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either Get_article_id__id__downloadMainArticleImageResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Get_article_id__id__downloadMainArticleImageResponse200
                                                                                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (WeclappAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/article/id/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ WeclappAPI.Common.stringifyModel (get_article_id__id__downloadMainArticleImageParametersPathId parameters))) GHC.Base.++ "/downloadMainArticleImage"))) [WeclappAPI.Common.QueryParameter (Data.Text.pack "preview") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_article_id__id__downloadMainArticleImageParametersQueryPreview parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          WeclappAPI.Common.QueryParameter (Data.Text.pack "scaleWidth") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_article_id__id__downloadMainArticleImageParametersQueryScaleWidth parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          WeclappAPI.Common.QueryParameter (Data.Text.pack "scaleHeight") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_article_id__id__downloadMainArticleImageParametersQueryScaleHeight parameters) (Data.Text.pack "form") GHC.Types.False])
-- | > GET /article/id/{id}/downloadMainArticleImage
-- 
-- The same as 'get_article_id__id__downloadMainArticleImage' but returns the raw 'Data.ByteString.Char8.ByteString'.
get_article_id__id__downloadMainArticleImageRaw :: forall m . WeclappAPI.Common.MonadHTTP m => Get_article_id__id__downloadMainArticleImageParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> WeclappAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
get_article_id__id__downloadMainArticleImageRaw parameters = GHC.Base.id (WeclappAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/article/id/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ WeclappAPI.Common.stringifyModel (get_article_id__id__downloadMainArticleImageParametersPathId parameters))) GHC.Base.++ "/downloadMainArticleImage"))) [WeclappAPI.Common.QueryParameter (Data.Text.pack "preview") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_article_id__id__downloadMainArticleImageParametersQueryPreview parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         WeclappAPI.Common.QueryParameter (Data.Text.pack "scaleWidth") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_article_id__id__downloadMainArticleImageParametersQueryScaleWidth parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         WeclappAPI.Common.QueryParameter (Data.Text.pack "scaleHeight") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_article_id__id__downloadMainArticleImageParametersQueryScaleHeight parameters) (Data.Text.pack "form") GHC.Types.False])
-- | > GET /article/id/{id}/downloadMainArticleImage
-- 
-- The same as 'get_article_id__id__downloadMainArticleImage' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
get_article_id__id__downloadMainArticleImageWithConfigurationRaw :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Get_article_id__id__downloadMainArticleImageParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
get_article_id__id__downloadMainArticleImageWithConfigurationRaw config
                                                                 parameters = GHC.Base.id (WeclappAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/article/id/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ WeclappAPI.Common.stringifyModel (get_article_id__id__downloadMainArticleImageParametersPathId parameters))) GHC.Base.++ "/downloadMainArticleImage"))) [WeclappAPI.Common.QueryParameter (Data.Text.pack "preview") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_article_id__id__downloadMainArticleImageParametersQueryPreview parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                WeclappAPI.Common.QueryParameter (Data.Text.pack "scaleWidth") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_article_id__id__downloadMainArticleImageParametersQueryScaleWidth parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                WeclappAPI.Common.QueryParameter (Data.Text.pack "scaleHeight") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_article_id__id__downloadMainArticleImageParametersQueryScaleHeight parameters) (Data.Text.pack "form") GHC.Types.False])
