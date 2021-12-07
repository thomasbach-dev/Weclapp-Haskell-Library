-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema IncomingGoods
module WeclappAPI.Types.IncomingGoods where

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
import {-# SOURCE #-} WeclappAPI.Types.CustomAttribute
import {-# SOURCE #-} WeclappAPI.Types.IncomingGoodsItem
import {-# SOURCE #-} WeclappAPI.Types.OnlyId
import {-# SOURCE #-} WeclappAPI.Types.RecordAddress
import {-# SOURCE #-} WeclappAPI.Types.ShipmentStatus

-- | Defines the object schema located at @components.schemas.incomingGoods@ in the specification.
-- 
-- 
data IncomingGoods = IncomingGoods {
  -- | commercialLanguage
  incomingGoodsCommercialLanguage :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | createdDate
  , incomingGoodsCreatedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | customAttributes
  , incomingGoodsCustomAttributes :: (GHC.Maybe.Maybe ([CustomAttribute]))
  -- | customerDeliveryAddress
  , incomingGoodsCustomerDeliveryAddress :: (GHC.Maybe.Maybe RecordAddress)
  -- | customerInvoiceAddress
  , incomingGoodsCustomerInvoiceAddress :: (GHC.Maybe.Maybe RecordAddress)
  -- | deliveryNoteNumber
  , incomingGoodsDeliveryNoteNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | description
  , incomingGoodsDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | disableEmailTemplate
  , incomingGoodsDisableEmailTemplate :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | id
  , incomingGoodsId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | incomingGoodsItems
  , incomingGoodsIncomingGoodsItems :: (GHC.Maybe.Maybe ([IncomingGoodsItem]))
  -- | incomingGoodsNumber
  , incomingGoodsIncomingGoodsNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | incomingGoodsType
  , incomingGoodsIncomingGoodsType :: (GHC.Maybe.Maybe IncomingGoodsIncomingGoodsType')
  -- | invoiceAddress
  , incomingGoodsInvoiceAddress :: (GHC.Maybe.Maybe RecordAddress)
  -- | invoiceRecipientId
  , incomingGoodsInvoiceRecipientId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | lastModifiedDate
  , incomingGoodsLastModifiedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | purchaseOrderId
  , incomingGoodsPurchaseOrderId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | purchaseOrderNumber
  , incomingGoodsPurchaseOrderNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | purchaseOrders
  , incomingGoodsPurchaseOrders :: (GHC.Maybe.Maybe ([OnlyId]))
  -- | recipientAddress
  , incomingGoodsRecipientAddress :: (GHC.Maybe.Maybe RecordAddress)
  -- | recordComment
  , incomingGoodsRecordComment :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | recordFreeText
  , incomingGoodsRecordFreeText :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | recordOpening
  , incomingGoodsRecordOpening :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | relatedShipmentId
  , incomingGoodsRelatedShipmentId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | returnAddress
  , incomingGoodsReturnAddress :: (GHC.Maybe.Maybe RecordAddress)
  -- | salesOrderId
  , incomingGoodsSalesOrderId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | salesOrderNumber
  , incomingGoodsSalesOrderNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | senderCustomerNumber
  , incomingGoodsSenderCustomerNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | senderPartyId
  , incomingGoodsSenderPartyId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | senderSupplierNumber
  , incomingGoodsSenderSupplierNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | sentToRecipient
  , incomingGoodsSentToRecipient :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | sourceWarehouseId
  , incomingGoodsSourceWarehouseId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | sourceWarehouseName
  , incomingGoodsSourceWarehouseName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | status
  , incomingGoodsStatus :: IncomingGoodsStatus'
  -- | statusHistory
  , incomingGoodsStatusHistory :: (GHC.Maybe.Maybe ([ShipmentStatus]))
  -- | tags
  , incomingGoodsTags :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | version
  , incomingGoodsVersion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | warehouseId
  , incomingGoodsWarehouseId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | warehouseName
  , incomingGoodsWarehouseName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON IncomingGoods
    where toJSON obj = Data.Aeson.Types.Internal.object ("commercialLanguage" Data.Aeson.Types.ToJSON..= incomingGoodsCommercialLanguage obj : "createdDate" Data.Aeson.Types.ToJSON..= incomingGoodsCreatedDate obj : "customAttributes" Data.Aeson.Types.ToJSON..= incomingGoodsCustomAttributes obj : "customerDeliveryAddress" Data.Aeson.Types.ToJSON..= incomingGoodsCustomerDeliveryAddress obj : "customerInvoiceAddress" Data.Aeson.Types.ToJSON..= incomingGoodsCustomerInvoiceAddress obj : "deliveryNoteNumber" Data.Aeson.Types.ToJSON..= incomingGoodsDeliveryNoteNumber obj : "description" Data.Aeson.Types.ToJSON..= incomingGoodsDescription obj : "disableEmailTemplate" Data.Aeson.Types.ToJSON..= incomingGoodsDisableEmailTemplate obj : "id" Data.Aeson.Types.ToJSON..= incomingGoodsId obj : "incomingGoodsItems" Data.Aeson.Types.ToJSON..= incomingGoodsIncomingGoodsItems obj : "incomingGoodsNumber" Data.Aeson.Types.ToJSON..= incomingGoodsIncomingGoodsNumber obj : "incomingGoodsType" Data.Aeson.Types.ToJSON..= incomingGoodsIncomingGoodsType obj : "invoiceAddress" Data.Aeson.Types.ToJSON..= incomingGoodsInvoiceAddress obj : "invoiceRecipientId" Data.Aeson.Types.ToJSON..= incomingGoodsInvoiceRecipientId obj : "lastModifiedDate" Data.Aeson.Types.ToJSON..= incomingGoodsLastModifiedDate obj : "purchaseOrderId" Data.Aeson.Types.ToJSON..= incomingGoodsPurchaseOrderId obj : "purchaseOrderNumber" Data.Aeson.Types.ToJSON..= incomingGoodsPurchaseOrderNumber obj : "purchaseOrders" Data.Aeson.Types.ToJSON..= incomingGoodsPurchaseOrders obj : "recipientAddress" Data.Aeson.Types.ToJSON..= incomingGoodsRecipientAddress obj : "recordComment" Data.Aeson.Types.ToJSON..= incomingGoodsRecordComment obj : "recordFreeText" Data.Aeson.Types.ToJSON..= incomingGoodsRecordFreeText obj : "recordOpening" Data.Aeson.Types.ToJSON..= incomingGoodsRecordOpening obj : "relatedShipmentId" Data.Aeson.Types.ToJSON..= incomingGoodsRelatedShipmentId obj : "returnAddress" Data.Aeson.Types.ToJSON..= incomingGoodsReturnAddress obj : "salesOrderId" Data.Aeson.Types.ToJSON..= incomingGoodsSalesOrderId obj : "salesOrderNumber" Data.Aeson.Types.ToJSON..= incomingGoodsSalesOrderNumber obj : "senderCustomerNumber" Data.Aeson.Types.ToJSON..= incomingGoodsSenderCustomerNumber obj : "senderPartyId" Data.Aeson.Types.ToJSON..= incomingGoodsSenderPartyId obj : "senderSupplierNumber" Data.Aeson.Types.ToJSON..= incomingGoodsSenderSupplierNumber obj : "sentToRecipient" Data.Aeson.Types.ToJSON..= incomingGoodsSentToRecipient obj : "sourceWarehouseId" Data.Aeson.Types.ToJSON..= incomingGoodsSourceWarehouseId obj : "sourceWarehouseName" Data.Aeson.Types.ToJSON..= incomingGoodsSourceWarehouseName obj : "status" Data.Aeson.Types.ToJSON..= incomingGoodsStatus obj : "statusHistory" Data.Aeson.Types.ToJSON..= incomingGoodsStatusHistory obj : "tags" Data.Aeson.Types.ToJSON..= incomingGoodsTags obj : "version" Data.Aeson.Types.ToJSON..= incomingGoodsVersion obj : "warehouseId" Data.Aeson.Types.ToJSON..= incomingGoodsWarehouseId obj : "warehouseName" Data.Aeson.Types.ToJSON..= incomingGoodsWarehouseName obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("commercialLanguage" Data.Aeson.Types.ToJSON..= incomingGoodsCommercialLanguage obj) GHC.Base.<> (("createdDate" Data.Aeson.Types.ToJSON..= incomingGoodsCreatedDate obj) GHC.Base.<> (("customAttributes" Data.Aeson.Types.ToJSON..= incomingGoodsCustomAttributes obj) GHC.Base.<> (("customerDeliveryAddress" Data.Aeson.Types.ToJSON..= incomingGoodsCustomerDeliveryAddress obj) GHC.Base.<> (("customerInvoiceAddress" Data.Aeson.Types.ToJSON..= incomingGoodsCustomerInvoiceAddress obj) GHC.Base.<> (("deliveryNoteNumber" Data.Aeson.Types.ToJSON..= incomingGoodsDeliveryNoteNumber obj) GHC.Base.<> (("description" Data.Aeson.Types.ToJSON..= incomingGoodsDescription obj) GHC.Base.<> (("disableEmailTemplate" Data.Aeson.Types.ToJSON..= incomingGoodsDisableEmailTemplate obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= incomingGoodsId obj) GHC.Base.<> (("incomingGoodsItems" Data.Aeson.Types.ToJSON..= incomingGoodsIncomingGoodsItems obj) GHC.Base.<> (("incomingGoodsNumber" Data.Aeson.Types.ToJSON..= incomingGoodsIncomingGoodsNumber obj) GHC.Base.<> (("incomingGoodsType" Data.Aeson.Types.ToJSON..= incomingGoodsIncomingGoodsType obj) GHC.Base.<> (("invoiceAddress" Data.Aeson.Types.ToJSON..= incomingGoodsInvoiceAddress obj) GHC.Base.<> (("invoiceRecipientId" Data.Aeson.Types.ToJSON..= incomingGoodsInvoiceRecipientId obj) GHC.Base.<> (("lastModifiedDate" Data.Aeson.Types.ToJSON..= incomingGoodsLastModifiedDate obj) GHC.Base.<> (("purchaseOrderId" Data.Aeson.Types.ToJSON..= incomingGoodsPurchaseOrderId obj) GHC.Base.<> (("purchaseOrderNumber" Data.Aeson.Types.ToJSON..= incomingGoodsPurchaseOrderNumber obj) GHC.Base.<> (("purchaseOrders" Data.Aeson.Types.ToJSON..= incomingGoodsPurchaseOrders obj) GHC.Base.<> (("recipientAddress" Data.Aeson.Types.ToJSON..= incomingGoodsRecipientAddress obj) GHC.Base.<> (("recordComment" Data.Aeson.Types.ToJSON..= incomingGoodsRecordComment obj) GHC.Base.<> (("recordFreeText" Data.Aeson.Types.ToJSON..= incomingGoodsRecordFreeText obj) GHC.Base.<> (("recordOpening" Data.Aeson.Types.ToJSON..= incomingGoodsRecordOpening obj) GHC.Base.<> (("relatedShipmentId" Data.Aeson.Types.ToJSON..= incomingGoodsRelatedShipmentId obj) GHC.Base.<> (("returnAddress" Data.Aeson.Types.ToJSON..= incomingGoodsReturnAddress obj) GHC.Base.<> (("salesOrderId" Data.Aeson.Types.ToJSON..= incomingGoodsSalesOrderId obj) GHC.Base.<> (("salesOrderNumber" Data.Aeson.Types.ToJSON..= incomingGoodsSalesOrderNumber obj) GHC.Base.<> (("senderCustomerNumber" Data.Aeson.Types.ToJSON..= incomingGoodsSenderCustomerNumber obj) GHC.Base.<> (("senderPartyId" Data.Aeson.Types.ToJSON..= incomingGoodsSenderPartyId obj) GHC.Base.<> (("senderSupplierNumber" Data.Aeson.Types.ToJSON..= incomingGoodsSenderSupplierNumber obj) GHC.Base.<> (("sentToRecipient" Data.Aeson.Types.ToJSON..= incomingGoodsSentToRecipient obj) GHC.Base.<> (("sourceWarehouseId" Data.Aeson.Types.ToJSON..= incomingGoodsSourceWarehouseId obj) GHC.Base.<> (("sourceWarehouseName" Data.Aeson.Types.ToJSON..= incomingGoodsSourceWarehouseName obj) GHC.Base.<> (("status" Data.Aeson.Types.ToJSON..= incomingGoodsStatus obj) GHC.Base.<> (("statusHistory" Data.Aeson.Types.ToJSON..= incomingGoodsStatusHistory obj) GHC.Base.<> (("tags" Data.Aeson.Types.ToJSON..= incomingGoodsTags obj) GHC.Base.<> (("version" Data.Aeson.Types.ToJSON..= incomingGoodsVersion obj) GHC.Base.<> (("warehouseId" Data.Aeson.Types.ToJSON..= incomingGoodsWarehouseId obj) GHC.Base.<> ("warehouseName" Data.Aeson.Types.ToJSON..= incomingGoodsWarehouseName obj))))))))))))))))))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON IncomingGoods
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "IncomingGoods" (\obj -> (((((((((((((((((((((((((((((((((((((GHC.Base.pure IncomingGoods GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "commercialLanguage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "createdDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customAttributes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customerDeliveryAddress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customerInvoiceAddress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "deliveryNoteNumber")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "disableEmailTemplate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "incomingGoodsItems")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "incomingGoodsNumber")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "incomingGoodsType")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "invoiceAddress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "invoiceRecipientId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lastModifiedDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "purchaseOrderId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "purchaseOrderNumber")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "purchaseOrders")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "recipientAddress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "recordComment")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "recordFreeText")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "recordOpening")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "relatedShipmentId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "returnAddress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "salesOrderId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "salesOrderNumber")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "senderCustomerNumber")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "senderPartyId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "senderSupplierNumber")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sentToRecipient")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sourceWarehouseId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sourceWarehouseName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statusHistory")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tags")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "version")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "warehouseId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "warehouseName"))
-- | Create a new 'IncomingGoods' with all required fields.
mkIncomingGoods :: IncomingGoodsStatus' -- ^ 'incomingGoodsStatus'
  -> IncomingGoods
mkIncomingGoods incomingGoodsStatus = IncomingGoods{incomingGoodsCommercialLanguage = GHC.Maybe.Nothing,
                                                    incomingGoodsCreatedDate = GHC.Maybe.Nothing,
                                                    incomingGoodsCustomAttributes = GHC.Maybe.Nothing,
                                                    incomingGoodsCustomerDeliveryAddress = GHC.Maybe.Nothing,
                                                    incomingGoodsCustomerInvoiceAddress = GHC.Maybe.Nothing,
                                                    incomingGoodsDeliveryNoteNumber = GHC.Maybe.Nothing,
                                                    incomingGoodsDescription = GHC.Maybe.Nothing,
                                                    incomingGoodsDisableEmailTemplate = GHC.Maybe.Nothing,
                                                    incomingGoodsId = GHC.Maybe.Nothing,
                                                    incomingGoodsIncomingGoodsItems = GHC.Maybe.Nothing,
                                                    incomingGoodsIncomingGoodsNumber = GHC.Maybe.Nothing,
                                                    incomingGoodsIncomingGoodsType = GHC.Maybe.Nothing,
                                                    incomingGoodsInvoiceAddress = GHC.Maybe.Nothing,
                                                    incomingGoodsInvoiceRecipientId = GHC.Maybe.Nothing,
                                                    incomingGoodsLastModifiedDate = GHC.Maybe.Nothing,
                                                    incomingGoodsPurchaseOrderId = GHC.Maybe.Nothing,
                                                    incomingGoodsPurchaseOrderNumber = GHC.Maybe.Nothing,
                                                    incomingGoodsPurchaseOrders = GHC.Maybe.Nothing,
                                                    incomingGoodsRecipientAddress = GHC.Maybe.Nothing,
                                                    incomingGoodsRecordComment = GHC.Maybe.Nothing,
                                                    incomingGoodsRecordFreeText = GHC.Maybe.Nothing,
                                                    incomingGoodsRecordOpening = GHC.Maybe.Nothing,
                                                    incomingGoodsRelatedShipmentId = GHC.Maybe.Nothing,
                                                    incomingGoodsReturnAddress = GHC.Maybe.Nothing,
                                                    incomingGoodsSalesOrderId = GHC.Maybe.Nothing,
                                                    incomingGoodsSalesOrderNumber = GHC.Maybe.Nothing,
                                                    incomingGoodsSenderCustomerNumber = GHC.Maybe.Nothing,
                                                    incomingGoodsSenderPartyId = GHC.Maybe.Nothing,
                                                    incomingGoodsSenderSupplierNumber = GHC.Maybe.Nothing,
                                                    incomingGoodsSentToRecipient = GHC.Maybe.Nothing,
                                                    incomingGoodsSourceWarehouseId = GHC.Maybe.Nothing,
                                                    incomingGoodsSourceWarehouseName = GHC.Maybe.Nothing,
                                                    incomingGoodsStatus = incomingGoodsStatus,
                                                    incomingGoodsStatusHistory = GHC.Maybe.Nothing,
                                                    incomingGoodsTags = GHC.Maybe.Nothing,
                                                    incomingGoodsVersion = GHC.Maybe.Nothing,
                                                    incomingGoodsWarehouseId = GHC.Maybe.Nothing,
                                                    incomingGoodsWarehouseName = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.incomingGoods.properties.incomingGoodsType@ in the specification.
-- 
-- 
data IncomingGoodsIncomingGoodsType' =
   IncomingGoodsIncomingGoodsType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | IncomingGoodsIncomingGoodsType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | IncomingGoodsIncomingGoodsType'EnumCUSTOMER_RETURN -- ^ Represents the JSON value @"CUSTOMER_RETURN"@
  | IncomingGoodsIncomingGoodsType'EnumINTERNAL -- ^ Represents the JSON value @"INTERNAL"@
  | IncomingGoodsIncomingGoodsType'EnumSTANDARD -- ^ Represents the JSON value @"STANDARD"@
  | IncomingGoodsIncomingGoodsType'EnumSUPPLIER_COMPENSATION -- ^ Represents the JSON value @"SUPPLIER_COMPENSATION"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON IncomingGoodsIncomingGoodsType'
    where toJSON (IncomingGoodsIncomingGoodsType'Other val) = val
          toJSON (IncomingGoodsIncomingGoodsType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (IncomingGoodsIncomingGoodsType'EnumCUSTOMER_RETURN) = "CUSTOMER_RETURN"
          toJSON (IncomingGoodsIncomingGoodsType'EnumINTERNAL) = "INTERNAL"
          toJSON (IncomingGoodsIncomingGoodsType'EnumSTANDARD) = "STANDARD"
          toJSON (IncomingGoodsIncomingGoodsType'EnumSUPPLIER_COMPENSATION) = "SUPPLIER_COMPENSATION"
instance Data.Aeson.Types.FromJSON.FromJSON IncomingGoodsIncomingGoodsType'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "CUSTOMER_RETURN" -> IncomingGoodsIncomingGoodsType'EnumCUSTOMER_RETURN
                                            | val GHC.Classes.== "INTERNAL" -> IncomingGoodsIncomingGoodsType'EnumINTERNAL
                                            | val GHC.Classes.== "STANDARD" -> IncomingGoodsIncomingGoodsType'EnumSTANDARD
                                            | val GHC.Classes.== "SUPPLIER_COMPENSATION" -> IncomingGoodsIncomingGoodsType'EnumSUPPLIER_COMPENSATION
                                            | GHC.Base.otherwise -> IncomingGoodsIncomingGoodsType'Other val)
-- | Defines the enum schema located at @components.schemas.incomingGoods.properties.status@ in the specification.
-- 
-- 
data IncomingGoodsStatus' =
   IncomingGoodsStatus'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | IncomingGoodsStatus'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | IncomingGoodsStatus'EnumCANCELLED -- ^ Represents the JSON value @"CANCELLED"@
  | IncomingGoodsStatus'EnumDELIVERED -- ^ Represents the JSON value @"DELIVERED"@
  | IncomingGoodsStatus'EnumDELIVERY_NOTE_PRINTED -- ^ Represents the JSON value @"DELIVERY_NOTE_PRINTED"@
  | IncomingGoodsStatus'EnumINCOMING_CANCELLED -- ^ Represents the JSON value @"INCOMING_CANCELLED"@
  | IncomingGoodsStatus'EnumINCOMING_GOODS_MOVEMENT_PRINTED -- ^ Represents the JSON value @"INCOMING_GOODS_MOVEMENT_PRINTED"@
  | IncomingGoodsStatus'EnumINCOMING_MOVED_INTO_STORE -- ^ Represents the JSON value @"INCOMING_MOVED_INTO_STORE"@
  | IncomingGoodsStatus'EnumINCOMING_SHIPPED -- ^ Represents the JSON value @"INCOMING_SHIPPED"@
  | IncomingGoodsStatus'EnumIN_ROUTE -- ^ Represents the JSON value @"IN_ROUTE"@
  | IncomingGoodsStatus'EnumNEW -- ^ Represents the JSON value @"NEW"@
  | IncomingGoodsStatus'EnumSHIPPED -- ^ Represents the JSON value @"SHIPPED"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON IncomingGoodsStatus'
    where toJSON (IncomingGoodsStatus'Other val) = val
          toJSON (IncomingGoodsStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (IncomingGoodsStatus'EnumCANCELLED) = "CANCELLED"
          toJSON (IncomingGoodsStatus'EnumDELIVERED) = "DELIVERED"
          toJSON (IncomingGoodsStatus'EnumDELIVERY_NOTE_PRINTED) = "DELIVERY_NOTE_PRINTED"
          toJSON (IncomingGoodsStatus'EnumINCOMING_CANCELLED) = "INCOMING_CANCELLED"
          toJSON (IncomingGoodsStatus'EnumINCOMING_GOODS_MOVEMENT_PRINTED) = "INCOMING_GOODS_MOVEMENT_PRINTED"
          toJSON (IncomingGoodsStatus'EnumINCOMING_MOVED_INTO_STORE) = "INCOMING_MOVED_INTO_STORE"
          toJSON (IncomingGoodsStatus'EnumINCOMING_SHIPPED) = "INCOMING_SHIPPED"
          toJSON (IncomingGoodsStatus'EnumIN_ROUTE) = "IN_ROUTE"
          toJSON (IncomingGoodsStatus'EnumNEW) = "NEW"
          toJSON (IncomingGoodsStatus'EnumSHIPPED) = "SHIPPED"
instance Data.Aeson.Types.FromJSON.FromJSON IncomingGoodsStatus'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "CANCELLED" -> IncomingGoodsStatus'EnumCANCELLED
                                            | val GHC.Classes.== "DELIVERED" -> IncomingGoodsStatus'EnumDELIVERED
                                            | val GHC.Classes.== "DELIVERY_NOTE_PRINTED" -> IncomingGoodsStatus'EnumDELIVERY_NOTE_PRINTED
                                            | val GHC.Classes.== "INCOMING_CANCELLED" -> IncomingGoodsStatus'EnumINCOMING_CANCELLED
                                            | val GHC.Classes.== "INCOMING_GOODS_MOVEMENT_PRINTED" -> IncomingGoodsStatus'EnumINCOMING_GOODS_MOVEMENT_PRINTED
                                            | val GHC.Classes.== "INCOMING_MOVED_INTO_STORE" -> IncomingGoodsStatus'EnumINCOMING_MOVED_INTO_STORE
                                            | val GHC.Classes.== "INCOMING_SHIPPED" -> IncomingGoodsStatus'EnumINCOMING_SHIPPED
                                            | val GHC.Classes.== "IN_ROUTE" -> IncomingGoodsStatus'EnumIN_ROUTE
                                            | val GHC.Classes.== "NEW" -> IncomingGoodsStatus'EnumNEW
                                            | val GHC.Classes.== "SHIPPED" -> IncomingGoodsStatus'EnumSHIPPED
                                            | GHC.Base.otherwise -> IncomingGoodsStatus'Other val)