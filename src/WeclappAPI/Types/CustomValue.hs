-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema CustomValue
module WeclappAPI.Types.CustomValue where

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

-- | Defines the object schema located at @components.schemas.customValue@ in the specification.
-- 
-- 
data CustomValue = CustomValue {
  -- | active
  customValueActive :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | createdDate
  , customValueCreatedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | description
  , customValueDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id
  , customValueId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | lastModifiedDate
  , customValueLastModifiedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | name
  , customValueName :: Data.Text.Internal.Text
  -- | positionNumber
  , customValuePositionNumber :: (GHC.Maybe.Maybe GHC.Int.Int32)
  -- | version
  , customValueVersion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CustomValue
    where toJSON obj = Data.Aeson.Types.Internal.object ("active" Data.Aeson.Types.ToJSON..= customValueActive obj : "createdDate" Data.Aeson.Types.ToJSON..= customValueCreatedDate obj : "description" Data.Aeson.Types.ToJSON..= customValueDescription obj : "id" Data.Aeson.Types.ToJSON..= customValueId obj : "lastModifiedDate" Data.Aeson.Types.ToJSON..= customValueLastModifiedDate obj : "name" Data.Aeson.Types.ToJSON..= customValueName obj : "positionNumber" Data.Aeson.Types.ToJSON..= customValuePositionNumber obj : "version" Data.Aeson.Types.ToJSON..= customValueVersion obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("active" Data.Aeson.Types.ToJSON..= customValueActive obj) GHC.Base.<> (("createdDate" Data.Aeson.Types.ToJSON..= customValueCreatedDate obj) GHC.Base.<> (("description" Data.Aeson.Types.ToJSON..= customValueDescription obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= customValueId obj) GHC.Base.<> (("lastModifiedDate" Data.Aeson.Types.ToJSON..= customValueLastModifiedDate obj) GHC.Base.<> (("name" Data.Aeson.Types.ToJSON..= customValueName obj) GHC.Base.<> (("positionNumber" Data.Aeson.Types.ToJSON..= customValuePositionNumber obj) GHC.Base.<> ("version" Data.Aeson.Types.ToJSON..= customValueVersion obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON CustomValue
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "CustomValue" (\obj -> (((((((GHC.Base.pure CustomValue GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "createdDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lastModifiedDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "positionNumber")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "version"))
-- | Create a new 'CustomValue' with all required fields.
mkCustomValue :: Data.Text.Internal.Text -- ^ 'customValueName'
  -> CustomValue
mkCustomValue customValueName = CustomValue{customValueActive = GHC.Maybe.Nothing,
                                            customValueCreatedDate = GHC.Maybe.Nothing,
                                            customValueDescription = GHC.Maybe.Nothing,
                                            customValueId = GHC.Maybe.Nothing,
                                            customValueLastModifiedDate = GHC.Maybe.Nothing,
                                            customValueName = customValueName,
                                            customValuePositionNumber = GHC.Maybe.Nothing,
                                            customValueVersion = GHC.Maybe.Nothing}