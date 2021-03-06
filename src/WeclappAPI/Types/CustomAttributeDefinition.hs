-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema CustomAttributeDefinition
module WeclappAPI.Types.CustomAttributeDefinition where

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
import {-# SOURCE #-} WeclappAPI.Types.CustomAttributeDefinitionLabel
import {-# SOURCE #-} WeclappAPI.Types.CustomAttributeDefinitionListValue

-- | Defines the object schema located at @components.schemas.customAttributeDefinition@ in the specification.
-- 
-- 
data CustomAttributeDefinition = CustomAttributeDefinition {
  -- | active
  customAttributeDefinitionActive :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | attributeDescription
  , customAttributeDefinitionAttributeDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | attributeEntityType
  , customAttributeDefinitionAttributeEntityType :: (GHC.Maybe.Maybe CustomAttributeDefinitionAttributeEntityType')
  -- | attributeKey
  , customAttributeDefinitionAttributeKey :: Data.Text.Internal.Text
  -- | attributeLabels
  , customAttributeDefinitionAttributeLabels :: (GHC.Maybe.Maybe ([CustomAttributeDefinitionLabel]))
  -- | attributeType
  , customAttributeDefinitionAttributeType :: CustomAttributeDefinitionAttributeType'
  -- | createdDate
  , customAttributeDefinitionCreatedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | entities
  , customAttributeDefinitionEntities :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | groupName
  , customAttributeDefinitionGroupName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id
  , customAttributeDefinitionId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | lastModifiedDate
  , customAttributeDefinitionLastModifiedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | legacyEntities
  , customAttributeDefinitionLegacyEntities :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | mandatory
  , customAttributeDefinitionMandatory :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | publicPageTypes
  , customAttributeDefinitionPublicPageTypes :: (GHC.Maybe.Maybe ([CustomAttributeDefinitionPublicPageTypes']))
  -- | readOnly
  , customAttributeDefinitionReadOnly :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | selectableValues
  , customAttributeDefinitionSelectableValues :: (GHC.Maybe.Maybe ([CustomAttributeDefinitionListValue]))
  -- | showInOverview
  , customAttributeDefinitionShowInOverview :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | showOnCreationDialog
  , customAttributeDefinitionShowOnCreationDialog :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | systemCustomAttribute
  , customAttributeDefinitionSystemCustomAttribute :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | version
  , customAttributeDefinitionVersion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CustomAttributeDefinition
    where toJSON obj = Data.Aeson.Types.Internal.object ("active" Data.Aeson.Types.ToJSON..= customAttributeDefinitionActive obj : "attributeDescription" Data.Aeson.Types.ToJSON..= customAttributeDefinitionAttributeDescription obj : "attributeEntityType" Data.Aeson.Types.ToJSON..= customAttributeDefinitionAttributeEntityType obj : "attributeKey" Data.Aeson.Types.ToJSON..= customAttributeDefinitionAttributeKey obj : "attributeLabels" Data.Aeson.Types.ToJSON..= customAttributeDefinitionAttributeLabels obj : "attributeType" Data.Aeson.Types.ToJSON..= customAttributeDefinitionAttributeType obj : "createdDate" Data.Aeson.Types.ToJSON..= customAttributeDefinitionCreatedDate obj : "entities" Data.Aeson.Types.ToJSON..= customAttributeDefinitionEntities obj : "groupName" Data.Aeson.Types.ToJSON..= customAttributeDefinitionGroupName obj : "id" Data.Aeson.Types.ToJSON..= customAttributeDefinitionId obj : "lastModifiedDate" Data.Aeson.Types.ToJSON..= customAttributeDefinitionLastModifiedDate obj : "legacyEntities" Data.Aeson.Types.ToJSON..= customAttributeDefinitionLegacyEntities obj : "mandatory" Data.Aeson.Types.ToJSON..= customAttributeDefinitionMandatory obj : "publicPageTypes" Data.Aeson.Types.ToJSON..= customAttributeDefinitionPublicPageTypes obj : "readOnly" Data.Aeson.Types.ToJSON..= customAttributeDefinitionReadOnly obj : "selectableValues" Data.Aeson.Types.ToJSON..= customAttributeDefinitionSelectableValues obj : "showInOverview" Data.Aeson.Types.ToJSON..= customAttributeDefinitionShowInOverview obj : "showOnCreationDialog" Data.Aeson.Types.ToJSON..= customAttributeDefinitionShowOnCreationDialog obj : "systemCustomAttribute" Data.Aeson.Types.ToJSON..= customAttributeDefinitionSystemCustomAttribute obj : "version" Data.Aeson.Types.ToJSON..= customAttributeDefinitionVersion obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("active" Data.Aeson.Types.ToJSON..= customAttributeDefinitionActive obj) GHC.Base.<> (("attributeDescription" Data.Aeson.Types.ToJSON..= customAttributeDefinitionAttributeDescription obj) GHC.Base.<> (("attributeEntityType" Data.Aeson.Types.ToJSON..= customAttributeDefinitionAttributeEntityType obj) GHC.Base.<> (("attributeKey" Data.Aeson.Types.ToJSON..= customAttributeDefinitionAttributeKey obj) GHC.Base.<> (("attributeLabels" Data.Aeson.Types.ToJSON..= customAttributeDefinitionAttributeLabels obj) GHC.Base.<> (("attributeType" Data.Aeson.Types.ToJSON..= customAttributeDefinitionAttributeType obj) GHC.Base.<> (("createdDate" Data.Aeson.Types.ToJSON..= customAttributeDefinitionCreatedDate obj) GHC.Base.<> (("entities" Data.Aeson.Types.ToJSON..= customAttributeDefinitionEntities obj) GHC.Base.<> (("groupName" Data.Aeson.Types.ToJSON..= customAttributeDefinitionGroupName obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= customAttributeDefinitionId obj) GHC.Base.<> (("lastModifiedDate" Data.Aeson.Types.ToJSON..= customAttributeDefinitionLastModifiedDate obj) GHC.Base.<> (("legacyEntities" Data.Aeson.Types.ToJSON..= customAttributeDefinitionLegacyEntities obj) GHC.Base.<> (("mandatory" Data.Aeson.Types.ToJSON..= customAttributeDefinitionMandatory obj) GHC.Base.<> (("publicPageTypes" Data.Aeson.Types.ToJSON..= customAttributeDefinitionPublicPageTypes obj) GHC.Base.<> (("readOnly" Data.Aeson.Types.ToJSON..= customAttributeDefinitionReadOnly obj) GHC.Base.<> (("selectableValues" Data.Aeson.Types.ToJSON..= customAttributeDefinitionSelectableValues obj) GHC.Base.<> (("showInOverview" Data.Aeson.Types.ToJSON..= customAttributeDefinitionShowInOverview obj) GHC.Base.<> (("showOnCreationDialog" Data.Aeson.Types.ToJSON..= customAttributeDefinitionShowOnCreationDialog obj) GHC.Base.<> (("systemCustomAttribute" Data.Aeson.Types.ToJSON..= customAttributeDefinitionSystemCustomAttribute obj) GHC.Base.<> ("version" Data.Aeson.Types.ToJSON..= customAttributeDefinitionVersion obj))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON CustomAttributeDefinition
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "CustomAttributeDefinition" (\obj -> (((((((((((((((((((GHC.Base.pure CustomAttributeDefinition GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "attributeDescription")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "attributeEntityType")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "attributeKey")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "attributeLabels")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "attributeType")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "createdDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "entities")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "groupName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lastModifiedDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "legacyEntities")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mandatory")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "publicPageTypes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "readOnly")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "selectableValues")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "showInOverview")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "showOnCreationDialog")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "systemCustomAttribute")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "version"))
-- | Create a new 'CustomAttributeDefinition' with all required fields.
mkCustomAttributeDefinition :: Data.Text.Internal.Text -- ^ 'customAttributeDefinitionAttributeKey'
  -> CustomAttributeDefinitionAttributeType' -- ^ 'customAttributeDefinitionAttributeType'
  -> CustomAttributeDefinition
mkCustomAttributeDefinition customAttributeDefinitionAttributeKey customAttributeDefinitionAttributeType = CustomAttributeDefinition{customAttributeDefinitionActive = GHC.Maybe.Nothing,
                                                                                                                                     customAttributeDefinitionAttributeDescription = GHC.Maybe.Nothing,
                                                                                                                                     customAttributeDefinitionAttributeEntityType = GHC.Maybe.Nothing,
                                                                                                                                     customAttributeDefinitionAttributeKey = customAttributeDefinitionAttributeKey,
                                                                                                                                     customAttributeDefinitionAttributeLabels = GHC.Maybe.Nothing,
                                                                                                                                     customAttributeDefinitionAttributeType = customAttributeDefinitionAttributeType,
                                                                                                                                     customAttributeDefinitionCreatedDate = GHC.Maybe.Nothing,
                                                                                                                                     customAttributeDefinitionEntities = GHC.Maybe.Nothing,
                                                                                                                                     customAttributeDefinitionGroupName = GHC.Maybe.Nothing,
                                                                                                                                     customAttributeDefinitionId = GHC.Maybe.Nothing,
                                                                                                                                     customAttributeDefinitionLastModifiedDate = GHC.Maybe.Nothing,
                                                                                                                                     customAttributeDefinitionLegacyEntities = GHC.Maybe.Nothing,
                                                                                                                                     customAttributeDefinitionMandatory = GHC.Maybe.Nothing,
                                                                                                                                     customAttributeDefinitionPublicPageTypes = GHC.Maybe.Nothing,
                                                                                                                                     customAttributeDefinitionReadOnly = GHC.Maybe.Nothing,
                                                                                                                                     customAttributeDefinitionSelectableValues = GHC.Maybe.Nothing,
                                                                                                                                     customAttributeDefinitionShowInOverview = GHC.Maybe.Nothing,
                                                                                                                                     customAttributeDefinitionShowOnCreationDialog = GHC.Maybe.Nothing,
                                                                                                                                     customAttributeDefinitionSystemCustomAttribute = GHC.Maybe.Nothing,
                                                                                                                                     customAttributeDefinitionVersion = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.customAttributeDefinition.properties.attributeEntityType@ in the specification.
-- 
-- 
data CustomAttributeDefinitionAttributeEntityType' =
   CustomAttributeDefinitionAttributeEntityType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | CustomAttributeDefinitionAttributeEntityType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | CustomAttributeDefinitionAttributeEntityType'EnumArticle -- ^ Represents the JSON value @"article"@
  | CustomAttributeDefinitionAttributeEntityType'EnumCampaign -- ^ Represents the JSON value @"campaign"@
  | CustomAttributeDefinitionAttributeEntityType'EnumContract -- ^ Represents the JSON value @"contract"@
  | CustomAttributeDefinitionAttributeEntityType'EnumCustomer -- ^ Represents the JSON value @"customer"@
  | CustomAttributeDefinitionAttributeEntityType'EnumIncomingGoods -- ^ Represents the JSON value @"incomingGoods"@
  | CustomAttributeDefinitionAttributeEntityType'EnumOpportunity -- ^ Represents the JSON value @"opportunity"@
  | CustomAttributeDefinitionAttributeEntityType'EnumParty -- ^ Represents the JSON value @"party"@
  | CustomAttributeDefinitionAttributeEntityType'EnumProductionOrder -- ^ Represents the JSON value @"productionOrder"@
  | CustomAttributeDefinitionAttributeEntityType'EnumProject -- ^ Represents the JSON value @"project"@
  | CustomAttributeDefinitionAttributeEntityType'EnumPurchaseInvoice -- ^ Represents the JSON value @"purchaseInvoice"@
  | CustomAttributeDefinitionAttributeEntityType'EnumPurchaseOrder -- ^ Represents the JSON value @"purchaseOrder"@
  | CustomAttributeDefinitionAttributeEntityType'EnumQuotation -- ^ Represents the JSON value @"quotation"@
  | CustomAttributeDefinitionAttributeEntityType'EnumRecurringInvoice -- ^ Represents the JSON value @"recurringInvoice"@
  | CustomAttributeDefinitionAttributeEntityType'EnumSalesInvoice -- ^ Represents the JSON value @"salesInvoice"@
  | CustomAttributeDefinitionAttributeEntityType'EnumSalesOrder -- ^ Represents the JSON value @"salesOrder"@
  | CustomAttributeDefinitionAttributeEntityType'EnumSerialNumber -- ^ Represents the JSON value @"serialNumber"@
  | CustomAttributeDefinitionAttributeEntityType'EnumShipment -- ^ Represents the JSON value @"shipment"@
  | CustomAttributeDefinitionAttributeEntityType'EnumSupplier -- ^ Represents the JSON value @"supplier"@
  | CustomAttributeDefinitionAttributeEntityType'EnumTicket -- ^ Represents the JSON value @"ticket"@
  | CustomAttributeDefinitionAttributeEntityType'EnumUser -- ^ Represents the JSON value @"user"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CustomAttributeDefinitionAttributeEntityType'
    where toJSON (CustomAttributeDefinitionAttributeEntityType'Other val) = val
          toJSON (CustomAttributeDefinitionAttributeEntityType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (CustomAttributeDefinitionAttributeEntityType'EnumArticle) = "article"
          toJSON (CustomAttributeDefinitionAttributeEntityType'EnumCampaign) = "campaign"
          toJSON (CustomAttributeDefinitionAttributeEntityType'EnumContract) = "contract"
          toJSON (CustomAttributeDefinitionAttributeEntityType'EnumCustomer) = "customer"
          toJSON (CustomAttributeDefinitionAttributeEntityType'EnumIncomingGoods) = "incomingGoods"
          toJSON (CustomAttributeDefinitionAttributeEntityType'EnumOpportunity) = "opportunity"
          toJSON (CustomAttributeDefinitionAttributeEntityType'EnumParty) = "party"
          toJSON (CustomAttributeDefinitionAttributeEntityType'EnumProductionOrder) = "productionOrder"
          toJSON (CustomAttributeDefinitionAttributeEntityType'EnumProject) = "project"
          toJSON (CustomAttributeDefinitionAttributeEntityType'EnumPurchaseInvoice) = "purchaseInvoice"
          toJSON (CustomAttributeDefinitionAttributeEntityType'EnumPurchaseOrder) = "purchaseOrder"
          toJSON (CustomAttributeDefinitionAttributeEntityType'EnumQuotation) = "quotation"
          toJSON (CustomAttributeDefinitionAttributeEntityType'EnumRecurringInvoice) = "recurringInvoice"
          toJSON (CustomAttributeDefinitionAttributeEntityType'EnumSalesInvoice) = "salesInvoice"
          toJSON (CustomAttributeDefinitionAttributeEntityType'EnumSalesOrder) = "salesOrder"
          toJSON (CustomAttributeDefinitionAttributeEntityType'EnumSerialNumber) = "serialNumber"
          toJSON (CustomAttributeDefinitionAttributeEntityType'EnumShipment) = "shipment"
          toJSON (CustomAttributeDefinitionAttributeEntityType'EnumSupplier) = "supplier"
          toJSON (CustomAttributeDefinitionAttributeEntityType'EnumTicket) = "ticket"
          toJSON (CustomAttributeDefinitionAttributeEntityType'EnumUser) = "user"
instance Data.Aeson.Types.FromJSON.FromJSON CustomAttributeDefinitionAttributeEntityType'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "article" -> CustomAttributeDefinitionAttributeEntityType'EnumArticle
                                            | val GHC.Classes.== "campaign" -> CustomAttributeDefinitionAttributeEntityType'EnumCampaign
                                            | val GHC.Classes.== "contract" -> CustomAttributeDefinitionAttributeEntityType'EnumContract
                                            | val GHC.Classes.== "customer" -> CustomAttributeDefinitionAttributeEntityType'EnumCustomer
                                            | val GHC.Classes.== "incomingGoods" -> CustomAttributeDefinitionAttributeEntityType'EnumIncomingGoods
                                            | val GHC.Classes.== "opportunity" -> CustomAttributeDefinitionAttributeEntityType'EnumOpportunity
                                            | val GHC.Classes.== "party" -> CustomAttributeDefinitionAttributeEntityType'EnumParty
                                            | val GHC.Classes.== "productionOrder" -> CustomAttributeDefinitionAttributeEntityType'EnumProductionOrder
                                            | val GHC.Classes.== "project" -> CustomAttributeDefinitionAttributeEntityType'EnumProject
                                            | val GHC.Classes.== "purchaseInvoice" -> CustomAttributeDefinitionAttributeEntityType'EnumPurchaseInvoice
                                            | val GHC.Classes.== "purchaseOrder" -> CustomAttributeDefinitionAttributeEntityType'EnumPurchaseOrder
                                            | val GHC.Classes.== "quotation" -> CustomAttributeDefinitionAttributeEntityType'EnumQuotation
                                            | val GHC.Classes.== "recurringInvoice" -> CustomAttributeDefinitionAttributeEntityType'EnumRecurringInvoice
                                            | val GHC.Classes.== "salesInvoice" -> CustomAttributeDefinitionAttributeEntityType'EnumSalesInvoice
                                            | val GHC.Classes.== "salesOrder" -> CustomAttributeDefinitionAttributeEntityType'EnumSalesOrder
                                            | val GHC.Classes.== "serialNumber" -> CustomAttributeDefinitionAttributeEntityType'EnumSerialNumber
                                            | val GHC.Classes.== "shipment" -> CustomAttributeDefinitionAttributeEntityType'EnumShipment
                                            | val GHC.Classes.== "supplier" -> CustomAttributeDefinitionAttributeEntityType'EnumSupplier
                                            | val GHC.Classes.== "ticket" -> CustomAttributeDefinitionAttributeEntityType'EnumTicket
                                            | val GHC.Classes.== "user" -> CustomAttributeDefinitionAttributeEntityType'EnumUser
                                            | GHC.Base.otherwise -> CustomAttributeDefinitionAttributeEntityType'Other val)
-- | Defines the enum schema located at @components.schemas.customAttributeDefinition.properties.attributeType@ in the specification.
-- 
-- 
data CustomAttributeDefinitionAttributeType' =
   CustomAttributeDefinitionAttributeType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | CustomAttributeDefinitionAttributeType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | CustomAttributeDefinitionAttributeType'EnumBOOLEAN -- ^ Represents the JSON value @"BOOLEAN"@
  | CustomAttributeDefinitionAttributeType'EnumDATE -- ^ Represents the JSON value @"DATE"@
  | CustomAttributeDefinitionAttributeType'EnumDECIMAL -- ^ Represents the JSON value @"DECIMAL"@
  | CustomAttributeDefinitionAttributeType'EnumENTITY -- ^ Represents the JSON value @"ENTITY"@
  | CustomAttributeDefinitionAttributeType'EnumINTEGER -- ^ Represents the JSON value @"INTEGER"@
  | CustomAttributeDefinitionAttributeType'EnumLARGE_TEXT -- ^ Represents the JSON value @"LARGE_TEXT"@
  | CustomAttributeDefinitionAttributeType'EnumLIST -- ^ Represents the JSON value @"LIST"@
  | CustomAttributeDefinitionAttributeType'EnumMULTISELECT_LIST -- ^ Represents the JSON value @"MULTISELECT_LIST"@
  | CustomAttributeDefinitionAttributeType'EnumREFERENCE -- ^ Represents the JSON value @"REFERENCE"@
  | CustomAttributeDefinitionAttributeType'EnumSTRING -- ^ Represents the JSON value @"STRING"@
  | CustomAttributeDefinitionAttributeType'EnumURL -- ^ Represents the JSON value @"URL"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CustomAttributeDefinitionAttributeType'
    where toJSON (CustomAttributeDefinitionAttributeType'Other val) = val
          toJSON (CustomAttributeDefinitionAttributeType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (CustomAttributeDefinitionAttributeType'EnumBOOLEAN) = "BOOLEAN"
          toJSON (CustomAttributeDefinitionAttributeType'EnumDATE) = "DATE"
          toJSON (CustomAttributeDefinitionAttributeType'EnumDECIMAL) = "DECIMAL"
          toJSON (CustomAttributeDefinitionAttributeType'EnumENTITY) = "ENTITY"
          toJSON (CustomAttributeDefinitionAttributeType'EnumINTEGER) = "INTEGER"
          toJSON (CustomAttributeDefinitionAttributeType'EnumLARGE_TEXT) = "LARGE_TEXT"
          toJSON (CustomAttributeDefinitionAttributeType'EnumLIST) = "LIST"
          toJSON (CustomAttributeDefinitionAttributeType'EnumMULTISELECT_LIST) = "MULTISELECT_LIST"
          toJSON (CustomAttributeDefinitionAttributeType'EnumREFERENCE) = "REFERENCE"
          toJSON (CustomAttributeDefinitionAttributeType'EnumSTRING) = "STRING"
          toJSON (CustomAttributeDefinitionAttributeType'EnumURL) = "URL"
instance Data.Aeson.Types.FromJSON.FromJSON CustomAttributeDefinitionAttributeType'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "BOOLEAN" -> CustomAttributeDefinitionAttributeType'EnumBOOLEAN
                                            | val GHC.Classes.== "DATE" -> CustomAttributeDefinitionAttributeType'EnumDATE
                                            | val GHC.Classes.== "DECIMAL" -> CustomAttributeDefinitionAttributeType'EnumDECIMAL
                                            | val GHC.Classes.== "ENTITY" -> CustomAttributeDefinitionAttributeType'EnumENTITY
                                            | val GHC.Classes.== "INTEGER" -> CustomAttributeDefinitionAttributeType'EnumINTEGER
                                            | val GHC.Classes.== "LARGE_TEXT" -> CustomAttributeDefinitionAttributeType'EnumLARGE_TEXT
                                            | val GHC.Classes.== "LIST" -> CustomAttributeDefinitionAttributeType'EnumLIST
                                            | val GHC.Classes.== "MULTISELECT_LIST" -> CustomAttributeDefinitionAttributeType'EnumMULTISELECT_LIST
                                            | val GHC.Classes.== "REFERENCE" -> CustomAttributeDefinitionAttributeType'EnumREFERENCE
                                            | val GHC.Classes.== "STRING" -> CustomAttributeDefinitionAttributeType'EnumSTRING
                                            | val GHC.Classes.== "URL" -> CustomAttributeDefinitionAttributeType'EnumURL
                                            | GHC.Base.otherwise -> CustomAttributeDefinitionAttributeType'Other val)
-- | Defines the enum schema located at @components.schemas.customAttributeDefinition.properties.publicPageTypes.items@ in the specification.
-- 
-- 
data CustomAttributeDefinitionPublicPageTypes' =
   CustomAttributeDefinitionPublicPageTypes'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | CustomAttributeDefinitionPublicPageTypes'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | CustomAttributeDefinitionPublicPageTypes'EnumPURCHASE_ORDER_REQUEST -- ^ Represents the JSON value @"PURCHASE_ORDER_REQUEST"@
  | CustomAttributeDefinitionPublicPageTypes'EnumQUOTATION -- ^ Represents the JSON value @"QUOTATION"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CustomAttributeDefinitionPublicPageTypes'
    where toJSON (CustomAttributeDefinitionPublicPageTypes'Other val) = val
          toJSON (CustomAttributeDefinitionPublicPageTypes'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (CustomAttributeDefinitionPublicPageTypes'EnumPURCHASE_ORDER_REQUEST) = "PURCHASE_ORDER_REQUEST"
          toJSON (CustomAttributeDefinitionPublicPageTypes'EnumQUOTATION) = "QUOTATION"
instance Data.Aeson.Types.FromJSON.FromJSON CustomAttributeDefinitionPublicPageTypes'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "PURCHASE_ORDER_REQUEST" -> CustomAttributeDefinitionPublicPageTypes'EnumPURCHASE_ORDER_REQUEST
                                            | val GHC.Classes.== "QUOTATION" -> CustomAttributeDefinitionPublicPageTypes'EnumQUOTATION
                                            | GHC.Base.otherwise -> CustomAttributeDefinitionPublicPageTypes'Other val)
