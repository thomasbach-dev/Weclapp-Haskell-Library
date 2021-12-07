-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema VariantArticleVariantWithoutReference
module WeclappAPI.Types.VariantArticleVariantWithoutReference where

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
import {-# SOURCE #-} WeclappAPI.Types.OnlyId

-- | Defines the object schema located at @components.schemas.variantArticleVariantWithoutReference@ in the specification.
-- 
-- 
data VariantArticleVariantWithoutReference = VariantArticleVariantWithoutReference {
  -- | articleId
  variantArticleVariantWithoutReferenceArticleId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | articleNumber
  , variantArticleVariantWithoutReferenceArticleNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | attributeOptions
  , variantArticleVariantWithoutReferenceAttributeOptions :: (GHC.Maybe.Maybe ([OnlyId]))
  -- | createdDate
  , variantArticleVariantWithoutReferenceCreatedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | id
  , variantArticleVariantWithoutReferenceId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | lastModifiedDate
  , variantArticleVariantWithoutReferenceLastModifiedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | version
  , variantArticleVariantWithoutReferenceVersion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON VariantArticleVariantWithoutReference
    where toJSON obj = Data.Aeson.Types.Internal.object ("articleId" Data.Aeson.Types.ToJSON..= variantArticleVariantWithoutReferenceArticleId obj : "articleNumber" Data.Aeson.Types.ToJSON..= variantArticleVariantWithoutReferenceArticleNumber obj : "attributeOptions" Data.Aeson.Types.ToJSON..= variantArticleVariantWithoutReferenceAttributeOptions obj : "createdDate" Data.Aeson.Types.ToJSON..= variantArticleVariantWithoutReferenceCreatedDate obj : "id" Data.Aeson.Types.ToJSON..= variantArticleVariantWithoutReferenceId obj : "lastModifiedDate" Data.Aeson.Types.ToJSON..= variantArticleVariantWithoutReferenceLastModifiedDate obj : "version" Data.Aeson.Types.ToJSON..= variantArticleVariantWithoutReferenceVersion obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("articleId" Data.Aeson.Types.ToJSON..= variantArticleVariantWithoutReferenceArticleId obj) GHC.Base.<> (("articleNumber" Data.Aeson.Types.ToJSON..= variantArticleVariantWithoutReferenceArticleNumber obj) GHC.Base.<> (("attributeOptions" Data.Aeson.Types.ToJSON..= variantArticleVariantWithoutReferenceAttributeOptions obj) GHC.Base.<> (("createdDate" Data.Aeson.Types.ToJSON..= variantArticleVariantWithoutReferenceCreatedDate obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= variantArticleVariantWithoutReferenceId obj) GHC.Base.<> (("lastModifiedDate" Data.Aeson.Types.ToJSON..= variantArticleVariantWithoutReferenceLastModifiedDate obj) GHC.Base.<> ("version" Data.Aeson.Types.ToJSON..= variantArticleVariantWithoutReferenceVersion obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON VariantArticleVariantWithoutReference
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "VariantArticleVariantWithoutReference" (\obj -> ((((((GHC.Base.pure VariantArticleVariantWithoutReference GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "articleId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "articleNumber")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "attributeOptions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "createdDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lastModifiedDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "version"))
-- | Create a new 'VariantArticleVariantWithoutReference' with all required fields.
mkVariantArticleVariantWithoutReference :: VariantArticleVariantWithoutReference
mkVariantArticleVariantWithoutReference = VariantArticleVariantWithoutReference{variantArticleVariantWithoutReferenceArticleId = GHC.Maybe.Nothing,
                                                                                variantArticleVariantWithoutReferenceArticleNumber = GHC.Maybe.Nothing,
                                                                                variantArticleVariantWithoutReferenceAttributeOptions = GHC.Maybe.Nothing,
                                                                                variantArticleVariantWithoutReferenceCreatedDate = GHC.Maybe.Nothing,
                                                                                variantArticleVariantWithoutReferenceId = GHC.Maybe.Nothing,
                                                                                variantArticleVariantWithoutReferenceLastModifiedDate = GHC.Maybe.Nothing,
                                                                                variantArticleVariantWithoutReferenceVersion = GHC.Maybe.Nothing}
