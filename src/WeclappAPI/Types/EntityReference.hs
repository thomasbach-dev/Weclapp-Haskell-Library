-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema EntityReference
module WeclappAPI.Types.EntityReference where

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

-- | Defines the object schema located at @components.schemas.entityReference@ in the specification.
-- 
-- 
data EntityReference = EntityReference {
  -- | entityId
  entityReferenceEntityId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | entityName
  , entityReferenceEntityName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON EntityReference
    where toJSON obj = Data.Aeson.Types.Internal.object ("entityId" Data.Aeson.Types.ToJSON..= entityReferenceEntityId obj : "entityName" Data.Aeson.Types.ToJSON..= entityReferenceEntityName obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("entityId" Data.Aeson.Types.ToJSON..= entityReferenceEntityId obj) GHC.Base.<> ("entityName" Data.Aeson.Types.ToJSON..= entityReferenceEntityName obj))
instance Data.Aeson.Types.FromJSON.FromJSON EntityReference
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "EntityReference" (\obj -> (GHC.Base.pure EntityReference GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "entityId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "entityName"))
-- | Create a new 'EntityReference' with all required fields.
mkEntityReference :: EntityReference
mkEntityReference = EntityReference{entityReferenceEntityId = GHC.Maybe.Nothing,
                                    entityReferenceEntityName = GHC.Maybe.Nothing}
