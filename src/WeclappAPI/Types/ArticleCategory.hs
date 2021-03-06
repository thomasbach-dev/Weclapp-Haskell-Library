-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ArticleCategory
module WeclappAPI.Types.ArticleCategory where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified WeclappAPI.Common
import WeclappAPI.TypeAlias

-- | Defines the object schema located at @components.schemas.articleCategory@ in the specification.
-- 
-- 
data ArticleCategory = ArticleCategory {
  -- | createdDate
  articleCategoryCreatedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | description
  , articleCategoryDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id
  , articleCategoryId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | imageId
  , articleCategoryImageId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | lastModifiedDate
  , articleCategoryLastModifiedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | name
  , articleCategoryName :: Data.Text.Internal.Text
  -- | parentCategoryId
  , articleCategoryParentCategoryId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | version
  , articleCategoryVersion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ArticleCategory
    where toJSON obj = Data.Aeson.Types.Internal.object ("createdDate" Data.Aeson.Types.ToJSON..= articleCategoryCreatedDate obj : "description" Data.Aeson.Types.ToJSON..= articleCategoryDescription obj : "id" Data.Aeson.Types.ToJSON..= articleCategoryId obj : "imageId" Data.Aeson.Types.ToJSON..= articleCategoryImageId obj : "lastModifiedDate" Data.Aeson.Types.ToJSON..= articleCategoryLastModifiedDate obj : "name" Data.Aeson.Types.ToJSON..= articleCategoryName obj : "parentCategoryId" Data.Aeson.Types.ToJSON..= articleCategoryParentCategoryId obj : "version" Data.Aeson.Types.ToJSON..= articleCategoryVersion obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("createdDate" Data.Aeson.Types.ToJSON..= articleCategoryCreatedDate obj) GHC.Base.<> (("description" Data.Aeson.Types.ToJSON..= articleCategoryDescription obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= articleCategoryId obj) GHC.Base.<> (("imageId" Data.Aeson.Types.ToJSON..= articleCategoryImageId obj) GHC.Base.<> (("lastModifiedDate" Data.Aeson.Types.ToJSON..= articleCategoryLastModifiedDate obj) GHC.Base.<> (("name" Data.Aeson.Types.ToJSON..= articleCategoryName obj) GHC.Base.<> (("parentCategoryId" Data.Aeson.Types.ToJSON..= articleCategoryParentCategoryId obj) GHC.Base.<> ("version" Data.Aeson.Types.ToJSON..= articleCategoryVersion obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON ArticleCategory
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ArticleCategory" (\obj -> (((((((GHC.Base.pure ArticleCategory GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "createdDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "imageId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lastModifiedDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "parentCategoryId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "version"))
-- | Create a new 'ArticleCategory' with all required fields.
mkArticleCategory :: Data.Text.Internal.Text -- ^ 'articleCategoryName'
  -> ArticleCategory
mkArticleCategory articleCategoryName = ArticleCategory{articleCategoryCreatedDate = GHC.Maybe.Nothing,
                                                        articleCategoryDescription = GHC.Maybe.Nothing,
                                                        articleCategoryId = GHC.Maybe.Nothing,
                                                        articleCategoryImageId = GHC.Maybe.Nothing,
                                                        articleCategoryLastModifiedDate = GHC.Maybe.Nothing,
                                                        articleCategoryName = articleCategoryName,
                                                        articleCategoryParentCategoryId = GHC.Maybe.Nothing,
                                                        articleCategoryVersion = GHC.Maybe.Nothing}
