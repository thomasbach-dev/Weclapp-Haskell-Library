-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema FulfillmentProvider
module WeclappAPI.Types.FulfillmentProvider where

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

-- | Defines the object schema located at @components.schemas.fulfillmentProvider@ in the specification.
-- 
-- 
data FulfillmentProvider = FulfillmentProvider {
  -- | createdDate
  fulfillmentProviderCreatedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | fulfillmentProviderType
  , fulfillmentProviderFulfillmentProviderType :: FulfillmentProviderFulfillmentProviderType'
  -- | id
  , fulfillmentProviderId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | lastModifiedDate
  , fulfillmentProviderLastModifiedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | name
  , fulfillmentProviderName :: Data.Text.Internal.Text
  -- | version
  , fulfillmentProviderVersion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | warehouseId
  , fulfillmentProviderWarehouseId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON FulfillmentProvider
    where toJSON obj = Data.Aeson.Types.Internal.object ("createdDate" Data.Aeson.Types.ToJSON..= fulfillmentProviderCreatedDate obj : "fulfillmentProviderType" Data.Aeson.Types.ToJSON..= fulfillmentProviderFulfillmentProviderType obj : "id" Data.Aeson.Types.ToJSON..= fulfillmentProviderId obj : "lastModifiedDate" Data.Aeson.Types.ToJSON..= fulfillmentProviderLastModifiedDate obj : "name" Data.Aeson.Types.ToJSON..= fulfillmentProviderName obj : "version" Data.Aeson.Types.ToJSON..= fulfillmentProviderVersion obj : "warehouseId" Data.Aeson.Types.ToJSON..= fulfillmentProviderWarehouseId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("createdDate" Data.Aeson.Types.ToJSON..= fulfillmentProviderCreatedDate obj) GHC.Base.<> (("fulfillmentProviderType" Data.Aeson.Types.ToJSON..= fulfillmentProviderFulfillmentProviderType obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= fulfillmentProviderId obj) GHC.Base.<> (("lastModifiedDate" Data.Aeson.Types.ToJSON..= fulfillmentProviderLastModifiedDate obj) GHC.Base.<> (("name" Data.Aeson.Types.ToJSON..= fulfillmentProviderName obj) GHC.Base.<> (("version" Data.Aeson.Types.ToJSON..= fulfillmentProviderVersion obj) GHC.Base.<> ("warehouseId" Data.Aeson.Types.ToJSON..= fulfillmentProviderWarehouseId obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON FulfillmentProvider
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "FulfillmentProvider" (\obj -> ((((((GHC.Base.pure FulfillmentProvider GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "createdDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "fulfillmentProviderType")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lastModifiedDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "version")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "warehouseId"))
-- | Create a new 'FulfillmentProvider' with all required fields.
mkFulfillmentProvider :: FulfillmentProviderFulfillmentProviderType' -- ^ 'fulfillmentProviderFulfillmentProviderType'
  -> Data.Text.Internal.Text -- ^ 'fulfillmentProviderName'
  -> FulfillmentProvider
mkFulfillmentProvider fulfillmentProviderFulfillmentProviderType fulfillmentProviderName = FulfillmentProvider{fulfillmentProviderCreatedDate = GHC.Maybe.Nothing,
                                                                                                               fulfillmentProviderFulfillmentProviderType = fulfillmentProviderFulfillmentProviderType,
                                                                                                               fulfillmentProviderId = GHC.Maybe.Nothing,
                                                                                                               fulfillmentProviderLastModifiedDate = GHC.Maybe.Nothing,
                                                                                                               fulfillmentProviderName = fulfillmentProviderName,
                                                                                                               fulfillmentProviderVersion = GHC.Maybe.Nothing,
                                                                                                               fulfillmentProviderWarehouseId = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.fulfillmentProvider.properties.fulfillmentProviderType@ in the specification.
-- 
-- 
data FulfillmentProviderFulfillmentProviderType' =
   FulfillmentProviderFulfillmentProviderType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | FulfillmentProviderFulfillmentProviderType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | FulfillmentProviderFulfillmentProviderType'EnumAMAZON -- ^ Represents the JSON value @"AMAZON"@
  | FulfillmentProviderFulfillmentProviderType'EnumEXTERNAL -- ^ Represents the JSON value @"EXTERNAL"@
  | FulfillmentProviderFulfillmentProviderType'EnumINTERNAL -- ^ Represents the JSON value @"INTERNAL"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON FulfillmentProviderFulfillmentProviderType'
    where toJSON (FulfillmentProviderFulfillmentProviderType'Other val) = val
          toJSON (FulfillmentProviderFulfillmentProviderType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (FulfillmentProviderFulfillmentProviderType'EnumAMAZON) = "AMAZON"
          toJSON (FulfillmentProviderFulfillmentProviderType'EnumEXTERNAL) = "EXTERNAL"
          toJSON (FulfillmentProviderFulfillmentProviderType'EnumINTERNAL) = "INTERNAL"
instance Data.Aeson.Types.FromJSON.FromJSON FulfillmentProviderFulfillmentProviderType'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "AMAZON" -> FulfillmentProviderFulfillmentProviderType'EnumAMAZON
                                            | val GHC.Classes.== "EXTERNAL" -> FulfillmentProviderFulfillmentProviderType'EnumEXTERNAL
                                            | val GHC.Classes.== "INTERNAL" -> FulfillmentProviderFulfillmentProviderType'EnumINTERNAL
                                            | GHC.Base.otherwise -> FulfillmentProviderFulfillmentProviderType'Other val)
