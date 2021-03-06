-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ShippingCarrier
module WeclappAPI.Types.ShippingCarrier where

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

-- | Defines the object schema located at @components.schemas.shippingCarrier@ in the specification.
-- 
-- 
data ShippingCarrier = ShippingCarrier {
  -- | active
  shippingCarrierActive :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | createdDate
  , shippingCarrierCreatedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | id
  , shippingCarrierId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | internalShippingCarrier
  , shippingCarrierInternalShippingCarrier :: (GHC.Maybe.Maybe ShippingCarrierInternalShippingCarrier')
  -- | lastModifiedDate
  , shippingCarrierLastModifiedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | name
  , shippingCarrierName :: Data.Text.Internal.Text
  -- | positionNumber
  , shippingCarrierPositionNumber :: (GHC.Maybe.Maybe GHC.Int.Int32)
  -- | trackingUrl
  , shippingCarrierTrackingUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | version
  , shippingCarrierVersion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ShippingCarrier
    where toJSON obj = Data.Aeson.Types.Internal.object ("active" Data.Aeson.Types.ToJSON..= shippingCarrierActive obj : "createdDate" Data.Aeson.Types.ToJSON..= shippingCarrierCreatedDate obj : "id" Data.Aeson.Types.ToJSON..= shippingCarrierId obj : "internalShippingCarrier" Data.Aeson.Types.ToJSON..= shippingCarrierInternalShippingCarrier obj : "lastModifiedDate" Data.Aeson.Types.ToJSON..= shippingCarrierLastModifiedDate obj : "name" Data.Aeson.Types.ToJSON..= shippingCarrierName obj : "positionNumber" Data.Aeson.Types.ToJSON..= shippingCarrierPositionNumber obj : "trackingUrl" Data.Aeson.Types.ToJSON..= shippingCarrierTrackingUrl obj : "version" Data.Aeson.Types.ToJSON..= shippingCarrierVersion obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("active" Data.Aeson.Types.ToJSON..= shippingCarrierActive obj) GHC.Base.<> (("createdDate" Data.Aeson.Types.ToJSON..= shippingCarrierCreatedDate obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= shippingCarrierId obj) GHC.Base.<> (("internalShippingCarrier" Data.Aeson.Types.ToJSON..= shippingCarrierInternalShippingCarrier obj) GHC.Base.<> (("lastModifiedDate" Data.Aeson.Types.ToJSON..= shippingCarrierLastModifiedDate obj) GHC.Base.<> (("name" Data.Aeson.Types.ToJSON..= shippingCarrierName obj) GHC.Base.<> (("positionNumber" Data.Aeson.Types.ToJSON..= shippingCarrierPositionNumber obj) GHC.Base.<> (("trackingUrl" Data.Aeson.Types.ToJSON..= shippingCarrierTrackingUrl obj) GHC.Base.<> ("version" Data.Aeson.Types.ToJSON..= shippingCarrierVersion obj)))))))))
instance Data.Aeson.Types.FromJSON.FromJSON ShippingCarrier
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ShippingCarrier" (\obj -> ((((((((GHC.Base.pure ShippingCarrier GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "createdDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "internalShippingCarrier")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lastModifiedDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "positionNumber")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trackingUrl")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "version"))
-- | Create a new 'ShippingCarrier' with all required fields.
mkShippingCarrier :: Data.Text.Internal.Text -- ^ 'shippingCarrierName'
  -> ShippingCarrier
mkShippingCarrier shippingCarrierName = ShippingCarrier{shippingCarrierActive = GHC.Maybe.Nothing,
                                                        shippingCarrierCreatedDate = GHC.Maybe.Nothing,
                                                        shippingCarrierId = GHC.Maybe.Nothing,
                                                        shippingCarrierInternalShippingCarrier = GHC.Maybe.Nothing,
                                                        shippingCarrierLastModifiedDate = GHC.Maybe.Nothing,
                                                        shippingCarrierName = shippingCarrierName,
                                                        shippingCarrierPositionNumber = GHC.Maybe.Nothing,
                                                        shippingCarrierTrackingUrl = GHC.Maybe.Nothing,
                                                        shippingCarrierVersion = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.shippingCarrier.properties.internalShippingCarrier@ in the specification.
-- 
-- 
data ShippingCarrierInternalShippingCarrier' =
   ShippingCarrierInternalShippingCarrier'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | ShippingCarrierInternalShippingCarrier'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | ShippingCarrierInternalShippingCarrier'EnumANGEL_DE -- ^ Represents the JSON value @"ANGEL_DE"@
  | ShippingCarrierInternalShippingCarrier'EnumAUSTRIAN_POST_EMS -- ^ Represents the JSON value @"AUSTRIAN_POST_EMS"@
  | ShippingCarrierInternalShippingCarrier'EnumAUSTRIAN_POST_PLUS_INTERNATIONAL -- ^ Represents the JSON value @"AUSTRIAN_POST_PLUS_INTERNATIONAL"@
  | ShippingCarrierInternalShippingCarrier'EnumAUSTRIAN_POST_PREMIUM -- ^ Represents the JSON value @"AUSTRIAN_POST_PREMIUM"@
  | ShippingCarrierInternalShippingCarrier'EnumAUSTRIAN_POST_PREMIUM_SELECT -- ^ Represents the JSON value @"AUSTRIAN_POST_PREMIUM_SELECT"@
  | ShippingCarrierInternalShippingCarrier'EnumAUSTRIAN_POST_RETURNS -- ^ Represents the JSON value @"AUSTRIAN_POST_RETURNS"@
  | ShippingCarrierInternalShippingCarrier'EnumAUSTRIAN_POST_STANDARD -- ^ Represents the JSON value @"AUSTRIAN_POST_STANDARD"@
  | ShippingCarrierInternalShippingCarrier'EnumCARGO_INTERNATIONAL_EXPRESS -- ^ Represents the JSON value @"CARGO_INTERNATIONAL_EXPRESS"@
  | ShippingCarrierInternalShippingCarrier'EnumCARGO_INTERNATIONAL_STANDARD -- ^ Represents the JSON value @"CARGO_INTERNATIONAL_STANDARD"@
  | ShippingCarrierInternalShippingCarrier'EnumDACHSER -- ^ Represents the JSON value @"DACHSER"@
  | ShippingCarrierInternalShippingCarrier'EnumDEUTSCHE_POST_STANDARD -- ^ Represents the JSON value @"DEUTSCHE_POST_STANDARD"@
  | ShippingCarrierInternalShippingCarrier'EnumDEUTSCHE_POST_WARENPOST -- ^ Represents the JSON value @"DEUTSCHE_POST_WARENPOST"@
  | ShippingCarrierInternalShippingCarrier'EnumDEUTSCHE_POST_WARENPOST_SIGNATURE -- ^ Represents the JSON value @"DEUTSCHE_POST_WARENPOST_SIGNATURE"@
  | ShippingCarrierInternalShippingCarrier'EnumDEUTSCHE_POST_WARENPOST_UNTRACKED -- ^ Represents the JSON value @"DEUTSCHE_POST_WARENPOST_UNTRACKED"@
  | ShippingCarrierInternalShippingCarrier'EnumDHL_EUROPAKET -- ^ Represents the JSON value @"DHL_EUROPAKET"@
  | ShippingCarrierInternalShippingCarrier'EnumDHL_EXPRESS_ONE_DAY -- ^ Represents the JSON value @"DHL_EXPRESS_ONE_DAY"@
  | ShippingCarrierInternalShippingCarrier'EnumDHL_EXPRESS_ONE_DAY_EARLY -- ^ Represents the JSON value @"DHL_EXPRESS_ONE_DAY_EARLY"@
  | ShippingCarrierInternalShippingCarrier'EnumDHL_RETURNS -- ^ Represents the JSON value @"DHL_RETURNS"@
  | ShippingCarrierInternalShippingCarrier'EnumDHL_SAME_DAY -- ^ Represents the JSON value @"DHL_SAME_DAY"@
  | ShippingCarrierInternalShippingCarrier'EnumDHL_STANDARD -- ^ Represents the JSON value @"DHL_STANDARD"@
  | ShippingCarrierInternalShippingCarrier'EnumDHL_WARENPOST -- ^ Represents the JSON value @"DHL_WARENPOST"@
  | ShippingCarrierInternalShippingCarrier'EnumDPD_EXPRESS_ONE_DAY -- ^ Represents the JSON value @"DPD_EXPRESS_ONE_DAY"@
  | ShippingCarrierInternalShippingCarrier'EnumDPD_EXPRESS_ONE_DAY_EARLY -- ^ Represents the JSON value @"DPD_EXPRESS_ONE_DAY_EARLY"@
  | ShippingCarrierInternalShippingCarrier'EnumDPD_RETURNS -- ^ Represents the JSON value @"DPD_RETURNS"@
  | ShippingCarrierInternalShippingCarrier'EnumDPD_STANDARD -- ^ Represents the JSON value @"DPD_STANDARD"@
  | ShippingCarrierInternalShippingCarrier'EnumEKOL -- ^ Represents the JSON value @"EKOL"@
  | ShippingCarrierInternalShippingCarrier'EnumFEDEX_EXPRESS_ONE_DAY_EARLY -- ^ Represents the JSON value @"FEDEX_EXPRESS_ONE_DAY_EARLY"@
  | ShippingCarrierInternalShippingCarrier'EnumFEDEX_INTERNATIONAL_ECONOMY -- ^ Represents the JSON value @"FEDEX_INTERNATIONAL_ECONOMY"@
  | ShippingCarrierInternalShippingCarrier'EnumFEDEX_INTERNATIONAL_PRIORITY -- ^ Represents the JSON value @"FEDEX_INTERNATIONAL_PRIORITY"@
  | ShippingCarrierInternalShippingCarrier'EnumFEDEX_STANDARD -- ^ Represents the JSON value @"FEDEX_STANDARD"@
  | ShippingCarrierInternalShippingCarrier'EnumGLS_EXPRESS_ONE_DAY -- ^ Represents the JSON value @"GLS_EXPRESS_ONE_DAY"@
  | ShippingCarrierInternalShippingCarrier'EnumGLS_PICK_AND_SHIP -- ^ Represents the JSON value @"GLS_PICK_AND_SHIP"@
  | ShippingCarrierInternalShippingCarrier'EnumGLS_RETURNS -- ^ Represents the JSON value @"GLS_RETURNS"@
  | ShippingCarrierInternalShippingCarrier'EnumGLS_STANDARD -- ^ Represents the JSON value @"GLS_STANDARD"@
  | ShippingCarrierInternalShippingCarrier'EnumGO_ONE_DAY -- ^ Represents the JSON value @"GO_ONE_DAY"@
  | ShippingCarrierInternalShippingCarrier'EnumHERMES_RETURNS -- ^ Represents the JSON value @"HERMES_RETURNS"@
  | ShippingCarrierInternalShippingCarrier'EnumHERMES_STANDARD -- ^ Represents the JSON value @"HERMES_STANDARD"@
  | ShippingCarrierInternalShippingCarrier'EnumILOXX_STANDARD -- ^ Represents the JSON value @"ILOXX_STANDARD"@
  | ShippingCarrierInternalShippingCarrier'EnumLIEFERY_EXPRESS_ONE_DAY -- ^ Represents the JSON value @"LIEFERY_EXPRESS_ONE_DAY"@
  | ShippingCarrierInternalShippingCarrier'EnumMGH -- ^ Represents the JSON value @"MGH"@
  | ShippingCarrierInternalShippingCarrier'EnumPARCEL_ONE -- ^ Represents the JSON value @"PARCEL_ONE"@
  | ShippingCarrierInternalShippingCarrier'EnumSEVEN_SENDERS -- ^ Represents the JSON value @"SEVEN_SENDERS"@
  | ShippingCarrierInternalShippingCarrier'EnumSITTNAK -- ^ Represents the JSON value @"SITTNAK"@
  | ShippingCarrierInternalShippingCarrier'EnumSWISS_POST -- ^ Represents the JSON value @"SWISS_POST"@
  | ShippingCarrierInternalShippingCarrier'EnumTNT_ONE_DAY -- ^ Represents the JSON value @"TNT_ONE_DAY"@
  | ShippingCarrierInternalShippingCarrier'EnumTNT_ONE_DAY_EARLY -- ^ Represents the JSON value @"TNT_ONE_DAY_EARLY"@
  | ShippingCarrierInternalShippingCarrier'EnumUPS_EXPEDITED -- ^ Represents the JSON value @"UPS_EXPEDITED"@
  | ShippingCarrierInternalShippingCarrier'EnumUPS_EXPRESS_1200 -- ^ Represents the JSON value @"UPS_EXPRESS_1200"@
  | ShippingCarrierInternalShippingCarrier'EnumUPS_EXPRESS_ONE_DAY -- ^ Represents the JSON value @"UPS_EXPRESS_ONE_DAY"@
  | ShippingCarrierInternalShippingCarrier'EnumUPS_EXPRESS_ONE_DAY_EARLY -- ^ Represents the JSON value @"UPS_EXPRESS_ONE_DAY_EARLY"@
  | ShippingCarrierInternalShippingCarrier'EnumUPS_RETURNS -- ^ Represents the JSON value @"UPS_RETURNS"@
  | ShippingCarrierInternalShippingCarrier'EnumUPS_STANDARD -- ^ Represents the JSON value @"UPS_STANDARD"@
  | ShippingCarrierInternalShippingCarrier'EnumZWECKFORM -- ^ Represents the JSON value @"ZWECKFORM"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ShippingCarrierInternalShippingCarrier'
    where toJSON (ShippingCarrierInternalShippingCarrier'Other val) = val
          toJSON (ShippingCarrierInternalShippingCarrier'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (ShippingCarrierInternalShippingCarrier'EnumANGEL_DE) = "ANGEL_DE"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumAUSTRIAN_POST_EMS) = "AUSTRIAN_POST_EMS"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumAUSTRIAN_POST_PLUS_INTERNATIONAL) = "AUSTRIAN_POST_PLUS_INTERNATIONAL"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumAUSTRIAN_POST_PREMIUM) = "AUSTRIAN_POST_PREMIUM"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumAUSTRIAN_POST_PREMIUM_SELECT) = "AUSTRIAN_POST_PREMIUM_SELECT"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumAUSTRIAN_POST_RETURNS) = "AUSTRIAN_POST_RETURNS"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumAUSTRIAN_POST_STANDARD) = "AUSTRIAN_POST_STANDARD"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumCARGO_INTERNATIONAL_EXPRESS) = "CARGO_INTERNATIONAL_EXPRESS"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumCARGO_INTERNATIONAL_STANDARD) = "CARGO_INTERNATIONAL_STANDARD"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumDACHSER) = "DACHSER"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumDEUTSCHE_POST_STANDARD) = "DEUTSCHE_POST_STANDARD"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumDEUTSCHE_POST_WARENPOST) = "DEUTSCHE_POST_WARENPOST"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumDEUTSCHE_POST_WARENPOST_SIGNATURE) = "DEUTSCHE_POST_WARENPOST_SIGNATURE"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumDEUTSCHE_POST_WARENPOST_UNTRACKED) = "DEUTSCHE_POST_WARENPOST_UNTRACKED"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumDHL_EUROPAKET) = "DHL_EUROPAKET"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumDHL_EXPRESS_ONE_DAY) = "DHL_EXPRESS_ONE_DAY"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumDHL_EXPRESS_ONE_DAY_EARLY) = "DHL_EXPRESS_ONE_DAY_EARLY"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumDHL_RETURNS) = "DHL_RETURNS"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumDHL_SAME_DAY) = "DHL_SAME_DAY"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumDHL_STANDARD) = "DHL_STANDARD"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumDHL_WARENPOST) = "DHL_WARENPOST"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumDPD_EXPRESS_ONE_DAY) = "DPD_EXPRESS_ONE_DAY"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumDPD_EXPRESS_ONE_DAY_EARLY) = "DPD_EXPRESS_ONE_DAY_EARLY"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumDPD_RETURNS) = "DPD_RETURNS"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumDPD_STANDARD) = "DPD_STANDARD"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumEKOL) = "EKOL"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumFEDEX_EXPRESS_ONE_DAY_EARLY) = "FEDEX_EXPRESS_ONE_DAY_EARLY"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumFEDEX_INTERNATIONAL_ECONOMY) = "FEDEX_INTERNATIONAL_ECONOMY"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumFEDEX_INTERNATIONAL_PRIORITY) = "FEDEX_INTERNATIONAL_PRIORITY"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumFEDEX_STANDARD) = "FEDEX_STANDARD"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumGLS_EXPRESS_ONE_DAY) = "GLS_EXPRESS_ONE_DAY"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumGLS_PICK_AND_SHIP) = "GLS_PICK_AND_SHIP"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumGLS_RETURNS) = "GLS_RETURNS"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumGLS_STANDARD) = "GLS_STANDARD"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumGO_ONE_DAY) = "GO_ONE_DAY"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumHERMES_RETURNS) = "HERMES_RETURNS"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumHERMES_STANDARD) = "HERMES_STANDARD"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumILOXX_STANDARD) = "ILOXX_STANDARD"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumLIEFERY_EXPRESS_ONE_DAY) = "LIEFERY_EXPRESS_ONE_DAY"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumMGH) = "MGH"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumPARCEL_ONE) = "PARCEL_ONE"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumSEVEN_SENDERS) = "SEVEN_SENDERS"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumSITTNAK) = "SITTNAK"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumSWISS_POST) = "SWISS_POST"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumTNT_ONE_DAY) = "TNT_ONE_DAY"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumTNT_ONE_DAY_EARLY) = "TNT_ONE_DAY_EARLY"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumUPS_EXPEDITED) = "UPS_EXPEDITED"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumUPS_EXPRESS_1200) = "UPS_EXPRESS_1200"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumUPS_EXPRESS_ONE_DAY) = "UPS_EXPRESS_ONE_DAY"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumUPS_EXPRESS_ONE_DAY_EARLY) = "UPS_EXPRESS_ONE_DAY_EARLY"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumUPS_RETURNS) = "UPS_RETURNS"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumUPS_STANDARD) = "UPS_STANDARD"
          toJSON (ShippingCarrierInternalShippingCarrier'EnumZWECKFORM) = "ZWECKFORM"
instance Data.Aeson.Types.FromJSON.FromJSON ShippingCarrierInternalShippingCarrier'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "ANGEL_DE" -> ShippingCarrierInternalShippingCarrier'EnumANGEL_DE
                                            | val GHC.Classes.== "AUSTRIAN_POST_EMS" -> ShippingCarrierInternalShippingCarrier'EnumAUSTRIAN_POST_EMS
                                            | val GHC.Classes.== "AUSTRIAN_POST_PLUS_INTERNATIONAL" -> ShippingCarrierInternalShippingCarrier'EnumAUSTRIAN_POST_PLUS_INTERNATIONAL
                                            | val GHC.Classes.== "AUSTRIAN_POST_PREMIUM" -> ShippingCarrierInternalShippingCarrier'EnumAUSTRIAN_POST_PREMIUM
                                            | val GHC.Classes.== "AUSTRIAN_POST_PREMIUM_SELECT" -> ShippingCarrierInternalShippingCarrier'EnumAUSTRIAN_POST_PREMIUM_SELECT
                                            | val GHC.Classes.== "AUSTRIAN_POST_RETURNS" -> ShippingCarrierInternalShippingCarrier'EnumAUSTRIAN_POST_RETURNS
                                            | val GHC.Classes.== "AUSTRIAN_POST_STANDARD" -> ShippingCarrierInternalShippingCarrier'EnumAUSTRIAN_POST_STANDARD
                                            | val GHC.Classes.== "CARGO_INTERNATIONAL_EXPRESS" -> ShippingCarrierInternalShippingCarrier'EnumCARGO_INTERNATIONAL_EXPRESS
                                            | val GHC.Classes.== "CARGO_INTERNATIONAL_STANDARD" -> ShippingCarrierInternalShippingCarrier'EnumCARGO_INTERNATIONAL_STANDARD
                                            | val GHC.Classes.== "DACHSER" -> ShippingCarrierInternalShippingCarrier'EnumDACHSER
                                            | val GHC.Classes.== "DEUTSCHE_POST_STANDARD" -> ShippingCarrierInternalShippingCarrier'EnumDEUTSCHE_POST_STANDARD
                                            | val GHC.Classes.== "DEUTSCHE_POST_WARENPOST" -> ShippingCarrierInternalShippingCarrier'EnumDEUTSCHE_POST_WARENPOST
                                            | val GHC.Classes.== "DEUTSCHE_POST_WARENPOST_SIGNATURE" -> ShippingCarrierInternalShippingCarrier'EnumDEUTSCHE_POST_WARENPOST_SIGNATURE
                                            | val GHC.Classes.== "DEUTSCHE_POST_WARENPOST_UNTRACKED" -> ShippingCarrierInternalShippingCarrier'EnumDEUTSCHE_POST_WARENPOST_UNTRACKED
                                            | val GHC.Classes.== "DHL_EUROPAKET" -> ShippingCarrierInternalShippingCarrier'EnumDHL_EUROPAKET
                                            | val GHC.Classes.== "DHL_EXPRESS_ONE_DAY" -> ShippingCarrierInternalShippingCarrier'EnumDHL_EXPRESS_ONE_DAY
                                            | val GHC.Classes.== "DHL_EXPRESS_ONE_DAY_EARLY" -> ShippingCarrierInternalShippingCarrier'EnumDHL_EXPRESS_ONE_DAY_EARLY
                                            | val GHC.Classes.== "DHL_RETURNS" -> ShippingCarrierInternalShippingCarrier'EnumDHL_RETURNS
                                            | val GHC.Classes.== "DHL_SAME_DAY" -> ShippingCarrierInternalShippingCarrier'EnumDHL_SAME_DAY
                                            | val GHC.Classes.== "DHL_STANDARD" -> ShippingCarrierInternalShippingCarrier'EnumDHL_STANDARD
                                            | val GHC.Classes.== "DHL_WARENPOST" -> ShippingCarrierInternalShippingCarrier'EnumDHL_WARENPOST
                                            | val GHC.Classes.== "DPD_EXPRESS_ONE_DAY" -> ShippingCarrierInternalShippingCarrier'EnumDPD_EXPRESS_ONE_DAY
                                            | val GHC.Classes.== "DPD_EXPRESS_ONE_DAY_EARLY" -> ShippingCarrierInternalShippingCarrier'EnumDPD_EXPRESS_ONE_DAY_EARLY
                                            | val GHC.Classes.== "DPD_RETURNS" -> ShippingCarrierInternalShippingCarrier'EnumDPD_RETURNS
                                            | val GHC.Classes.== "DPD_STANDARD" -> ShippingCarrierInternalShippingCarrier'EnumDPD_STANDARD
                                            | val GHC.Classes.== "EKOL" -> ShippingCarrierInternalShippingCarrier'EnumEKOL
                                            | val GHC.Classes.== "FEDEX_EXPRESS_ONE_DAY_EARLY" -> ShippingCarrierInternalShippingCarrier'EnumFEDEX_EXPRESS_ONE_DAY_EARLY
                                            | val GHC.Classes.== "FEDEX_INTERNATIONAL_ECONOMY" -> ShippingCarrierInternalShippingCarrier'EnumFEDEX_INTERNATIONAL_ECONOMY
                                            | val GHC.Classes.== "FEDEX_INTERNATIONAL_PRIORITY" -> ShippingCarrierInternalShippingCarrier'EnumFEDEX_INTERNATIONAL_PRIORITY
                                            | val GHC.Classes.== "FEDEX_STANDARD" -> ShippingCarrierInternalShippingCarrier'EnumFEDEX_STANDARD
                                            | val GHC.Classes.== "GLS_EXPRESS_ONE_DAY" -> ShippingCarrierInternalShippingCarrier'EnumGLS_EXPRESS_ONE_DAY
                                            | val GHC.Classes.== "GLS_PICK_AND_SHIP" -> ShippingCarrierInternalShippingCarrier'EnumGLS_PICK_AND_SHIP
                                            | val GHC.Classes.== "GLS_RETURNS" -> ShippingCarrierInternalShippingCarrier'EnumGLS_RETURNS
                                            | val GHC.Classes.== "GLS_STANDARD" -> ShippingCarrierInternalShippingCarrier'EnumGLS_STANDARD
                                            | val GHC.Classes.== "GO_ONE_DAY" -> ShippingCarrierInternalShippingCarrier'EnumGO_ONE_DAY
                                            | val GHC.Classes.== "HERMES_RETURNS" -> ShippingCarrierInternalShippingCarrier'EnumHERMES_RETURNS
                                            | val GHC.Classes.== "HERMES_STANDARD" -> ShippingCarrierInternalShippingCarrier'EnumHERMES_STANDARD
                                            | val GHC.Classes.== "ILOXX_STANDARD" -> ShippingCarrierInternalShippingCarrier'EnumILOXX_STANDARD
                                            | val GHC.Classes.== "LIEFERY_EXPRESS_ONE_DAY" -> ShippingCarrierInternalShippingCarrier'EnumLIEFERY_EXPRESS_ONE_DAY
                                            | val GHC.Classes.== "MGH" -> ShippingCarrierInternalShippingCarrier'EnumMGH
                                            | val GHC.Classes.== "PARCEL_ONE" -> ShippingCarrierInternalShippingCarrier'EnumPARCEL_ONE
                                            | val GHC.Classes.== "SEVEN_SENDERS" -> ShippingCarrierInternalShippingCarrier'EnumSEVEN_SENDERS
                                            | val GHC.Classes.== "SITTNAK" -> ShippingCarrierInternalShippingCarrier'EnumSITTNAK
                                            | val GHC.Classes.== "SWISS_POST" -> ShippingCarrierInternalShippingCarrier'EnumSWISS_POST
                                            | val GHC.Classes.== "TNT_ONE_DAY" -> ShippingCarrierInternalShippingCarrier'EnumTNT_ONE_DAY
                                            | val GHC.Classes.== "TNT_ONE_DAY_EARLY" -> ShippingCarrierInternalShippingCarrier'EnumTNT_ONE_DAY_EARLY
                                            | val GHC.Classes.== "UPS_EXPEDITED" -> ShippingCarrierInternalShippingCarrier'EnumUPS_EXPEDITED
                                            | val GHC.Classes.== "UPS_EXPRESS_1200" -> ShippingCarrierInternalShippingCarrier'EnumUPS_EXPRESS_1200
                                            | val GHC.Classes.== "UPS_EXPRESS_ONE_DAY" -> ShippingCarrierInternalShippingCarrier'EnumUPS_EXPRESS_ONE_DAY
                                            | val GHC.Classes.== "UPS_EXPRESS_ONE_DAY_EARLY" -> ShippingCarrierInternalShippingCarrier'EnumUPS_EXPRESS_ONE_DAY_EARLY
                                            | val GHC.Classes.== "UPS_RETURNS" -> ShippingCarrierInternalShippingCarrier'EnumUPS_RETURNS
                                            | val GHC.Classes.== "UPS_STANDARD" -> ShippingCarrierInternalShippingCarrier'EnumUPS_STANDARD
                                            | val GHC.Classes.== "ZWECKFORM" -> ShippingCarrierInternalShippingCarrier'EnumZWECKFORM
                                            | GHC.Base.otherwise -> ShippingCarrierInternalShippingCarrier'Other val)
