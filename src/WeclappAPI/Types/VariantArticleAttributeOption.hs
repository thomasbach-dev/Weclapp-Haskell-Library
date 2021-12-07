-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema VariantArticleAttributeOption
module WeclappAPI.Types.VariantArticleAttributeOption where

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

-- | Defines the object schema located at @components.schemas.variantArticleAttributeOption@ in the specification.
-- 
-- 
data VariantArticleAttributeOption = VariantArticleAttributeOption {
  -- | createdDate
  variantArticleAttributeOptionCreatedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | id
  , variantArticleAttributeOptionId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | lastModifiedDate
  , variantArticleAttributeOptionLastModifiedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | name
  , variantArticleAttributeOptionName :: Data.Text.Internal.Text
  -- | version
  , variantArticleAttributeOptionVersion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON VariantArticleAttributeOption
    where toJSON obj = Data.Aeson.Types.Internal.object ("createdDate" Data.Aeson.Types.ToJSON..= variantArticleAttributeOptionCreatedDate obj : "id" Data.Aeson.Types.ToJSON..= variantArticleAttributeOptionId obj : "lastModifiedDate" Data.Aeson.Types.ToJSON..= variantArticleAttributeOptionLastModifiedDate obj : "name" Data.Aeson.Types.ToJSON..= variantArticleAttributeOptionName obj : "version" Data.Aeson.Types.ToJSON..= variantArticleAttributeOptionVersion obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("createdDate" Data.Aeson.Types.ToJSON..= variantArticleAttributeOptionCreatedDate obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= variantArticleAttributeOptionId obj) GHC.Base.<> (("lastModifiedDate" Data.Aeson.Types.ToJSON..= variantArticleAttributeOptionLastModifiedDate obj) GHC.Base.<> (("name" Data.Aeson.Types.ToJSON..= variantArticleAttributeOptionName obj) GHC.Base.<> ("version" Data.Aeson.Types.ToJSON..= variantArticleAttributeOptionVersion obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON VariantArticleAttributeOption
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "VariantArticleAttributeOption" (\obj -> ((((GHC.Base.pure VariantArticleAttributeOption GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "createdDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lastModifiedDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "version"))
-- | Create a new 'VariantArticleAttributeOption' with all required fields.
mkVariantArticleAttributeOption :: Data.Text.Internal.Text -- ^ 'variantArticleAttributeOptionName'
  -> VariantArticleAttributeOption
mkVariantArticleAttributeOption variantArticleAttributeOptionName = VariantArticleAttributeOption{variantArticleAttributeOptionCreatedDate = GHC.Maybe.Nothing,
                                                                                                  variantArticleAttributeOptionId = GHC.Maybe.Nothing,
                                                                                                  variantArticleAttributeOptionLastModifiedDate = GHC.Maybe.Nothing,
                                                                                                  variantArticleAttributeOptionName = variantArticleAttributeOptionName,
                                                                                                  variantArticleAttributeOptionVersion = GHC.Maybe.Nothing}