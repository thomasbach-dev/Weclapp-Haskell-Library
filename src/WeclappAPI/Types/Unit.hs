-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema Unit
module WeclappAPI.Types.Unit where

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

-- | Defines the object schema located at @components.schemas.unit@ in the specification.
-- 
-- 
data Unit = Unit {
  -- | createdDate
  unitCreatedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | description
  , unitDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id
  , unitId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | lastModifiedDate
  , unitLastModifiedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | name
  , unitName :: Data.Text.Internal.Text
  -- | version
  , unitVersion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Unit
    where toJSON obj = Data.Aeson.Types.Internal.object ("createdDate" Data.Aeson.Types.ToJSON..= unitCreatedDate obj : "description" Data.Aeson.Types.ToJSON..= unitDescription obj : "id" Data.Aeson.Types.ToJSON..= unitId obj : "lastModifiedDate" Data.Aeson.Types.ToJSON..= unitLastModifiedDate obj : "name" Data.Aeson.Types.ToJSON..= unitName obj : "version" Data.Aeson.Types.ToJSON..= unitVersion obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("createdDate" Data.Aeson.Types.ToJSON..= unitCreatedDate obj) GHC.Base.<> (("description" Data.Aeson.Types.ToJSON..= unitDescription obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= unitId obj) GHC.Base.<> (("lastModifiedDate" Data.Aeson.Types.ToJSON..= unitLastModifiedDate obj) GHC.Base.<> (("name" Data.Aeson.Types.ToJSON..= unitName obj) GHC.Base.<> ("version" Data.Aeson.Types.ToJSON..= unitVersion obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON Unit
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Unit" (\obj -> (((((GHC.Base.pure Unit GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "createdDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lastModifiedDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "version"))
-- | Create a new 'Unit' with all required fields.
mkUnit :: Data.Text.Internal.Text -- ^ 'unitName'
  -> Unit
mkUnit unitName = Unit{unitCreatedDate = GHC.Maybe.Nothing,
                       unitDescription = GHC.Maybe.Nothing,
                       unitId = GHC.Maybe.Nothing,
                       unitLastModifiedDate = GHC.Maybe.Nothing,
                       unitName = unitName,
                       unitVersion = GHC.Maybe.Nothing}
