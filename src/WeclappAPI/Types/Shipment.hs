-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema Shipment
module WeclappAPI.Types.Shipment where

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
import {-# SOURCE #-} WeclappAPI.Types.EmailAddresses
import {-# SOURCE #-} WeclappAPI.Types.OnlyId
import {-# SOURCE #-} WeclappAPI.Types.RecordAddress
import {-# SOURCE #-} WeclappAPI.Types.ShipmentItem
import {-# SOURCE #-} WeclappAPI.Types.ShipmentStatus

-- | Defines the object schema located at @components.schemas.shipment@ in the specification.
-- 
-- 
data Shipment = Shipment {
  -- | additionalDeliveryInformation
  shipmentAdditionalDeliveryInformation :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | allWithdrawalsConfirmed
  , shipmentAllWithdrawalsConfirmed :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | assignedPickingUserId
  , shipmentAssignedPickingUserId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | assignedPickingUserUpdateDate
  , shipmentAssignedPickingUserUpdateDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | assignedPickingUserUsername
  , shipmentAssignedPickingUserUsername :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | commercialLanguage
  , shipmentCommercialLanguage :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | createdDate
  , shipmentCreatedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | customAttributes
  , shipmentCustomAttributes :: (GHC.Maybe.Maybe ([CustomAttribute]))
  -- | customerPurchaseOrderNumber
  , shipmentCustomerPurchaseOrderNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | declaredValueAmount
  , shipmentDeclaredValueAmount :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | declaredValueAmountCurrencyId
  , shipmentDeclaredValueAmountCurrencyId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | declaredValueAmountCurrencyName
  , shipmentDeclaredValueAmountCurrencyName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | deliveryDate
  , shipmentDeliveryDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | description
  , shipmentDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | destinationWarehouseId
  , shipmentDestinationWarehouseId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | destinationWarehouseLevelId
  , shipmentDestinationWarehouseLevelId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | destinationWarehouseName
  , shipmentDestinationWarehouseName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | disableEmailTemplate
  , shipmentDisableEmailTemplate :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | id
  , shipmentId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | invoiceAddress
  , shipmentInvoiceAddress :: (GHC.Maybe.Maybe RecordAddress)
  -- | invoiceRecipientId
  , shipmentInvoiceRecipientId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | lastModifiedDate
  , shipmentLastModifiedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | packageHeight
  , shipmentPackageHeight :: (GHC.Maybe.Maybe GHC.Int.Int32)
  -- | packageLength
  , shipmentPackageLength :: (GHC.Maybe.Maybe GHC.Int.Int32)
  -- | packageReferenceNumber
  , shipmentPackageReferenceNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | packageReturnTrackingNumber
  , shipmentPackageReturnTrackingNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | packageReturnTrackingUrl
  , shipmentPackageReturnTrackingUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | packageTrackingNumber
  , shipmentPackageTrackingNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | packageTrackingUrl
  , shipmentPackageTrackingUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | packageWeight
  , shipmentPackageWeight :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | packageWidth
  , shipmentPackageWidth :: (GHC.Maybe.Maybe GHC.Int.Int32)
  -- | pickingInstructions
  , shipmentPickingInstructions :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | purchaseOrders
  , shipmentPurchaseOrders :: (GHC.Maybe.Maybe ([OnlyId]))
  -- | recipientAddress
  , shipmentRecipientAddress :: (GHC.Maybe.Maybe RecordAddress)
  -- | recipientCustomerNumber
  , shipmentRecipientCustomerNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | recipientPartyId
  , shipmentRecipientPartyId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | recipientSupplierNumber
  , shipmentRecipientSupplierNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | recordComment
  , shipmentRecordComment :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | recordEmailAddresses
  , shipmentRecordEmailAddresses :: (GHC.Maybe.Maybe EmailAddresses)
  -- | recordFreeText
  , shipmentRecordFreeText :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | recordOpening
  , shipmentRecordOpening :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | salesInvoiceEmailAddresses
  , shipmentSalesInvoiceEmailAddresses :: (GHC.Maybe.Maybe EmailAddresses)
  -- | salesOrderId
  , shipmentSalesOrderId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | salesOrderNumber
  , shipmentSalesOrderNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | sentToRecipient
  , shipmentSentToRecipient :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | shipmentItems
  , shipmentShipmentItems :: (GHC.Maybe.Maybe ([ShipmentItem]))
  -- | shipmentMethodId
  , shipmentShipmentMethodId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | shipmentMethodName
  , shipmentShipmentMethodName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | shipmentNumber
  , shipmentShipmentNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | shipmentType
  , shipmentShipmentType :: (GHC.Maybe.Maybe ShipmentShipmentType')
  -- | shippedFromAddress
  , shipmentShippedFromAddress :: (GHC.Maybe.Maybe RecordAddress)
  -- | shippingCarrierId
  , shipmentShippingCarrierId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | shippingCarrierName
  , shipmentShippingCarrierName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | shippingDate
  , shipmentShippingDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | shippingLabelsCount
  , shipmentShippingLabelsCount :: (GHC.Maybe.Maybe GHC.Int.Int32)
  -- | shippingReturnCarrierId
  , shipmentShippingReturnCarrierId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | shippingReturnCarrierName
  , shipmentShippingReturnCarrierName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | status
  , shipmentStatus :: ShipmentStatus'
  -- | statusHistory
  , shipmentStatusHistory :: (GHC.Maybe.Maybe ([ShipmentStatus]))
  -- | tags
  , shipmentTags :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | version
  , shipmentVersion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | warehouseId
  , shipmentWarehouseId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | warehouseName
  , shipmentWarehouseName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | withdrawalsComplete
  , shipmentWithdrawalsComplete :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Shipment
    where toJSON obj = Data.Aeson.Types.Internal.object ("additionalDeliveryInformation" Data.Aeson.Types.ToJSON..= shipmentAdditionalDeliveryInformation obj : "allWithdrawalsConfirmed" Data.Aeson.Types.ToJSON..= shipmentAllWithdrawalsConfirmed obj : "assignedPickingUserId" Data.Aeson.Types.ToJSON..= shipmentAssignedPickingUserId obj : "assignedPickingUserUpdateDate" Data.Aeson.Types.ToJSON..= shipmentAssignedPickingUserUpdateDate obj : "assignedPickingUserUsername" Data.Aeson.Types.ToJSON..= shipmentAssignedPickingUserUsername obj : "commercialLanguage" Data.Aeson.Types.ToJSON..= shipmentCommercialLanguage obj : "createdDate" Data.Aeson.Types.ToJSON..= shipmentCreatedDate obj : "customAttributes" Data.Aeson.Types.ToJSON..= shipmentCustomAttributes obj : "customerPurchaseOrderNumber" Data.Aeson.Types.ToJSON..= shipmentCustomerPurchaseOrderNumber obj : "declaredValueAmount" Data.Aeson.Types.ToJSON..= shipmentDeclaredValueAmount obj : "declaredValueAmountCurrencyId" Data.Aeson.Types.ToJSON..= shipmentDeclaredValueAmountCurrencyId obj : "declaredValueAmountCurrencyName" Data.Aeson.Types.ToJSON..= shipmentDeclaredValueAmountCurrencyName obj : "deliveryDate" Data.Aeson.Types.ToJSON..= shipmentDeliveryDate obj : "description" Data.Aeson.Types.ToJSON..= shipmentDescription obj : "destinationWarehouseId" Data.Aeson.Types.ToJSON..= shipmentDestinationWarehouseId obj : "destinationWarehouseLevelId" Data.Aeson.Types.ToJSON..= shipmentDestinationWarehouseLevelId obj : "destinationWarehouseName" Data.Aeson.Types.ToJSON..= shipmentDestinationWarehouseName obj : "disableEmailTemplate" Data.Aeson.Types.ToJSON..= shipmentDisableEmailTemplate obj : "id" Data.Aeson.Types.ToJSON..= shipmentId obj : "invoiceAddress" Data.Aeson.Types.ToJSON..= shipmentInvoiceAddress obj : "invoiceRecipientId" Data.Aeson.Types.ToJSON..= shipmentInvoiceRecipientId obj : "lastModifiedDate" Data.Aeson.Types.ToJSON..= shipmentLastModifiedDate obj : "packageHeight" Data.Aeson.Types.ToJSON..= shipmentPackageHeight obj : "packageLength" Data.Aeson.Types.ToJSON..= shipmentPackageLength obj : "packageReferenceNumber" Data.Aeson.Types.ToJSON..= shipmentPackageReferenceNumber obj : "packageReturnTrackingNumber" Data.Aeson.Types.ToJSON..= shipmentPackageReturnTrackingNumber obj : "packageReturnTrackingUrl" Data.Aeson.Types.ToJSON..= shipmentPackageReturnTrackingUrl obj : "packageTrackingNumber" Data.Aeson.Types.ToJSON..= shipmentPackageTrackingNumber obj : "packageTrackingUrl" Data.Aeson.Types.ToJSON..= shipmentPackageTrackingUrl obj : "packageWeight" Data.Aeson.Types.ToJSON..= shipmentPackageWeight obj : "packageWidth" Data.Aeson.Types.ToJSON..= shipmentPackageWidth obj : "pickingInstructions" Data.Aeson.Types.ToJSON..= shipmentPickingInstructions obj : "purchaseOrders" Data.Aeson.Types.ToJSON..= shipmentPurchaseOrders obj : "recipientAddress" Data.Aeson.Types.ToJSON..= shipmentRecipientAddress obj : "recipientCustomerNumber" Data.Aeson.Types.ToJSON..= shipmentRecipientCustomerNumber obj : "recipientPartyId" Data.Aeson.Types.ToJSON..= shipmentRecipientPartyId obj : "recipientSupplierNumber" Data.Aeson.Types.ToJSON..= shipmentRecipientSupplierNumber obj : "recordComment" Data.Aeson.Types.ToJSON..= shipmentRecordComment obj : "recordEmailAddresses" Data.Aeson.Types.ToJSON..= shipmentRecordEmailAddresses obj : "recordFreeText" Data.Aeson.Types.ToJSON..= shipmentRecordFreeText obj : "recordOpening" Data.Aeson.Types.ToJSON..= shipmentRecordOpening obj : "salesInvoiceEmailAddresses" Data.Aeson.Types.ToJSON..= shipmentSalesInvoiceEmailAddresses obj : "salesOrderId" Data.Aeson.Types.ToJSON..= shipmentSalesOrderId obj : "salesOrderNumber" Data.Aeson.Types.ToJSON..= shipmentSalesOrderNumber obj : "sentToRecipient" Data.Aeson.Types.ToJSON..= shipmentSentToRecipient obj : "shipmentItems" Data.Aeson.Types.ToJSON..= shipmentShipmentItems obj : "shipmentMethodId" Data.Aeson.Types.ToJSON..= shipmentShipmentMethodId obj : "shipmentMethodName" Data.Aeson.Types.ToJSON..= shipmentShipmentMethodName obj : "shipmentNumber" Data.Aeson.Types.ToJSON..= shipmentShipmentNumber obj : "shipmentType" Data.Aeson.Types.ToJSON..= shipmentShipmentType obj : "shippedFromAddress" Data.Aeson.Types.ToJSON..= shipmentShippedFromAddress obj : "shippingCarrierId" Data.Aeson.Types.ToJSON..= shipmentShippingCarrierId obj : "shippingCarrierName" Data.Aeson.Types.ToJSON..= shipmentShippingCarrierName obj : "shippingDate" Data.Aeson.Types.ToJSON..= shipmentShippingDate obj : "shippingLabelsCount" Data.Aeson.Types.ToJSON..= shipmentShippingLabelsCount obj : "shippingReturnCarrierId" Data.Aeson.Types.ToJSON..= shipmentShippingReturnCarrierId obj : "shippingReturnCarrierName" Data.Aeson.Types.ToJSON..= shipmentShippingReturnCarrierName obj : "status" Data.Aeson.Types.ToJSON..= shipmentStatus obj : "statusHistory" Data.Aeson.Types.ToJSON..= shipmentStatusHistory obj : "tags" Data.Aeson.Types.ToJSON..= shipmentTags obj : "version" Data.Aeson.Types.ToJSON..= shipmentVersion obj : "warehouseId" Data.Aeson.Types.ToJSON..= shipmentWarehouseId obj : "warehouseName" Data.Aeson.Types.ToJSON..= shipmentWarehouseName obj : "withdrawalsComplete" Data.Aeson.Types.ToJSON..= shipmentWithdrawalsComplete obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("additionalDeliveryInformation" Data.Aeson.Types.ToJSON..= shipmentAdditionalDeliveryInformation obj) GHC.Base.<> (("allWithdrawalsConfirmed" Data.Aeson.Types.ToJSON..= shipmentAllWithdrawalsConfirmed obj) GHC.Base.<> (("assignedPickingUserId" Data.Aeson.Types.ToJSON..= shipmentAssignedPickingUserId obj) GHC.Base.<> (("assignedPickingUserUpdateDate" Data.Aeson.Types.ToJSON..= shipmentAssignedPickingUserUpdateDate obj) GHC.Base.<> (("assignedPickingUserUsername" Data.Aeson.Types.ToJSON..= shipmentAssignedPickingUserUsername obj) GHC.Base.<> (("commercialLanguage" Data.Aeson.Types.ToJSON..= shipmentCommercialLanguage obj) GHC.Base.<> (("createdDate" Data.Aeson.Types.ToJSON..= shipmentCreatedDate obj) GHC.Base.<> (("customAttributes" Data.Aeson.Types.ToJSON..= shipmentCustomAttributes obj) GHC.Base.<> (("customerPurchaseOrderNumber" Data.Aeson.Types.ToJSON..= shipmentCustomerPurchaseOrderNumber obj) GHC.Base.<> (("declaredValueAmount" Data.Aeson.Types.ToJSON..= shipmentDeclaredValueAmount obj) GHC.Base.<> (("declaredValueAmountCurrencyId" Data.Aeson.Types.ToJSON..= shipmentDeclaredValueAmountCurrencyId obj) GHC.Base.<> (("declaredValueAmountCurrencyName" Data.Aeson.Types.ToJSON..= shipmentDeclaredValueAmountCurrencyName obj) GHC.Base.<> (("deliveryDate" Data.Aeson.Types.ToJSON..= shipmentDeliveryDate obj) GHC.Base.<> (("description" Data.Aeson.Types.ToJSON..= shipmentDescription obj) GHC.Base.<> (("destinationWarehouseId" Data.Aeson.Types.ToJSON..= shipmentDestinationWarehouseId obj) GHC.Base.<> (("destinationWarehouseLevelId" Data.Aeson.Types.ToJSON..= shipmentDestinationWarehouseLevelId obj) GHC.Base.<> (("destinationWarehouseName" Data.Aeson.Types.ToJSON..= shipmentDestinationWarehouseName obj) GHC.Base.<> (("disableEmailTemplate" Data.Aeson.Types.ToJSON..= shipmentDisableEmailTemplate obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= shipmentId obj) GHC.Base.<> (("invoiceAddress" Data.Aeson.Types.ToJSON..= shipmentInvoiceAddress obj) GHC.Base.<> (("invoiceRecipientId" Data.Aeson.Types.ToJSON..= shipmentInvoiceRecipientId obj) GHC.Base.<> (("lastModifiedDate" Data.Aeson.Types.ToJSON..= shipmentLastModifiedDate obj) GHC.Base.<> (("packageHeight" Data.Aeson.Types.ToJSON..= shipmentPackageHeight obj) GHC.Base.<> (("packageLength" Data.Aeson.Types.ToJSON..= shipmentPackageLength obj) GHC.Base.<> (("packageReferenceNumber" Data.Aeson.Types.ToJSON..= shipmentPackageReferenceNumber obj) GHC.Base.<> (("packageReturnTrackingNumber" Data.Aeson.Types.ToJSON..= shipmentPackageReturnTrackingNumber obj) GHC.Base.<> (("packageReturnTrackingUrl" Data.Aeson.Types.ToJSON..= shipmentPackageReturnTrackingUrl obj) GHC.Base.<> (("packageTrackingNumber" Data.Aeson.Types.ToJSON..= shipmentPackageTrackingNumber obj) GHC.Base.<> (("packageTrackingUrl" Data.Aeson.Types.ToJSON..= shipmentPackageTrackingUrl obj) GHC.Base.<> (("packageWeight" Data.Aeson.Types.ToJSON..= shipmentPackageWeight obj) GHC.Base.<> (("packageWidth" Data.Aeson.Types.ToJSON..= shipmentPackageWidth obj) GHC.Base.<> (("pickingInstructions" Data.Aeson.Types.ToJSON..= shipmentPickingInstructions obj) GHC.Base.<> (("purchaseOrders" Data.Aeson.Types.ToJSON..= shipmentPurchaseOrders obj) GHC.Base.<> (("recipientAddress" Data.Aeson.Types.ToJSON..= shipmentRecipientAddress obj) GHC.Base.<> (("recipientCustomerNumber" Data.Aeson.Types.ToJSON..= shipmentRecipientCustomerNumber obj) GHC.Base.<> (("recipientPartyId" Data.Aeson.Types.ToJSON..= shipmentRecipientPartyId obj) GHC.Base.<> (("recipientSupplierNumber" Data.Aeson.Types.ToJSON..= shipmentRecipientSupplierNumber obj) GHC.Base.<> (("recordComment" Data.Aeson.Types.ToJSON..= shipmentRecordComment obj) GHC.Base.<> (("recordEmailAddresses" Data.Aeson.Types.ToJSON..= shipmentRecordEmailAddresses obj) GHC.Base.<> (("recordFreeText" Data.Aeson.Types.ToJSON..= shipmentRecordFreeText obj) GHC.Base.<> (("recordOpening" Data.Aeson.Types.ToJSON..= shipmentRecordOpening obj) GHC.Base.<> (("salesInvoiceEmailAddresses" Data.Aeson.Types.ToJSON..= shipmentSalesInvoiceEmailAddresses obj) GHC.Base.<> (("salesOrderId" Data.Aeson.Types.ToJSON..= shipmentSalesOrderId obj) GHC.Base.<> (("salesOrderNumber" Data.Aeson.Types.ToJSON..= shipmentSalesOrderNumber obj) GHC.Base.<> (("sentToRecipient" Data.Aeson.Types.ToJSON..= shipmentSentToRecipient obj) GHC.Base.<> (("shipmentItems" Data.Aeson.Types.ToJSON..= shipmentShipmentItems obj) GHC.Base.<> (("shipmentMethodId" Data.Aeson.Types.ToJSON..= shipmentShipmentMethodId obj) GHC.Base.<> (("shipmentMethodName" Data.Aeson.Types.ToJSON..= shipmentShipmentMethodName obj) GHC.Base.<> (("shipmentNumber" Data.Aeson.Types.ToJSON..= shipmentShipmentNumber obj) GHC.Base.<> (("shipmentType" Data.Aeson.Types.ToJSON..= shipmentShipmentType obj) GHC.Base.<> (("shippedFromAddress" Data.Aeson.Types.ToJSON..= shipmentShippedFromAddress obj) GHC.Base.<> (("shippingCarrierId" Data.Aeson.Types.ToJSON..= shipmentShippingCarrierId obj) GHC.Base.<> (("shippingCarrierName" Data.Aeson.Types.ToJSON..= shipmentShippingCarrierName obj) GHC.Base.<> (("shippingDate" Data.Aeson.Types.ToJSON..= shipmentShippingDate obj) GHC.Base.<> (("shippingLabelsCount" Data.Aeson.Types.ToJSON..= shipmentShippingLabelsCount obj) GHC.Base.<> (("shippingReturnCarrierId" Data.Aeson.Types.ToJSON..= shipmentShippingReturnCarrierId obj) GHC.Base.<> (("shippingReturnCarrierName" Data.Aeson.Types.ToJSON..= shipmentShippingReturnCarrierName obj) GHC.Base.<> (("status" Data.Aeson.Types.ToJSON..= shipmentStatus obj) GHC.Base.<> (("statusHistory" Data.Aeson.Types.ToJSON..= shipmentStatusHistory obj) GHC.Base.<> (("tags" Data.Aeson.Types.ToJSON..= shipmentTags obj) GHC.Base.<> (("version" Data.Aeson.Types.ToJSON..= shipmentVersion obj) GHC.Base.<> (("warehouseId" Data.Aeson.Types.ToJSON..= shipmentWarehouseId obj) GHC.Base.<> (("warehouseName" Data.Aeson.Types.ToJSON..= shipmentWarehouseName obj) GHC.Base.<> ("withdrawalsComplete" Data.Aeson.Types.ToJSON..= shipmentWithdrawalsComplete obj))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON Shipment
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Shipment" (\obj -> (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((GHC.Base.pure Shipment GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "additionalDeliveryInformation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "allWithdrawalsConfirmed")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "assignedPickingUserId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "assignedPickingUserUpdateDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "assignedPickingUserUsername")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "commercialLanguage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "createdDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customAttributes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customerPurchaseOrderNumber")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "declaredValueAmount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "declaredValueAmountCurrencyId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "declaredValueAmountCurrencyName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "deliveryDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "destinationWarehouseId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "destinationWarehouseLevelId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "destinationWarehouseName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "disableEmailTemplate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "invoiceAddress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "invoiceRecipientId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lastModifiedDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "packageHeight")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "packageLength")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "packageReferenceNumber")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "packageReturnTrackingNumber")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "packageReturnTrackingUrl")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "packageTrackingNumber")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "packageTrackingUrl")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "packageWeight")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "packageWidth")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pickingInstructions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "purchaseOrders")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "recipientAddress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "recipientCustomerNumber")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "recipientPartyId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "recipientSupplierNumber")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "recordComment")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "recordEmailAddresses")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "recordFreeText")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "recordOpening")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "salesInvoiceEmailAddresses")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "salesOrderId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "salesOrderNumber")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sentToRecipient")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipmentItems")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipmentMethodId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipmentMethodName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipmentNumber")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipmentType")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shippedFromAddress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shippingCarrierId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shippingCarrierName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shippingDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shippingLabelsCount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shippingReturnCarrierId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shippingReturnCarrierName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statusHistory")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tags")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "version")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "warehouseId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "warehouseName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "withdrawalsComplete"))
-- | Create a new 'Shipment' with all required fields.
mkShipment :: ShipmentStatus' -- ^ 'shipmentStatus'
  -> Shipment
mkShipment shipmentStatus = Shipment{shipmentAdditionalDeliveryInformation = GHC.Maybe.Nothing,
                                     shipmentAllWithdrawalsConfirmed = GHC.Maybe.Nothing,
                                     shipmentAssignedPickingUserId = GHC.Maybe.Nothing,
                                     shipmentAssignedPickingUserUpdateDate = GHC.Maybe.Nothing,
                                     shipmentAssignedPickingUserUsername = GHC.Maybe.Nothing,
                                     shipmentCommercialLanguage = GHC.Maybe.Nothing,
                                     shipmentCreatedDate = GHC.Maybe.Nothing,
                                     shipmentCustomAttributes = GHC.Maybe.Nothing,
                                     shipmentCustomerPurchaseOrderNumber = GHC.Maybe.Nothing,
                                     shipmentDeclaredValueAmount = GHC.Maybe.Nothing,
                                     shipmentDeclaredValueAmountCurrencyId = GHC.Maybe.Nothing,
                                     shipmentDeclaredValueAmountCurrencyName = GHC.Maybe.Nothing,
                                     shipmentDeliveryDate = GHC.Maybe.Nothing,
                                     shipmentDescription = GHC.Maybe.Nothing,
                                     shipmentDestinationWarehouseId = GHC.Maybe.Nothing,
                                     shipmentDestinationWarehouseLevelId = GHC.Maybe.Nothing,
                                     shipmentDestinationWarehouseName = GHC.Maybe.Nothing,
                                     shipmentDisableEmailTemplate = GHC.Maybe.Nothing,
                                     shipmentId = GHC.Maybe.Nothing,
                                     shipmentInvoiceAddress = GHC.Maybe.Nothing,
                                     shipmentInvoiceRecipientId = GHC.Maybe.Nothing,
                                     shipmentLastModifiedDate = GHC.Maybe.Nothing,
                                     shipmentPackageHeight = GHC.Maybe.Nothing,
                                     shipmentPackageLength = GHC.Maybe.Nothing,
                                     shipmentPackageReferenceNumber = GHC.Maybe.Nothing,
                                     shipmentPackageReturnTrackingNumber = GHC.Maybe.Nothing,
                                     shipmentPackageReturnTrackingUrl = GHC.Maybe.Nothing,
                                     shipmentPackageTrackingNumber = GHC.Maybe.Nothing,
                                     shipmentPackageTrackingUrl = GHC.Maybe.Nothing,
                                     shipmentPackageWeight = GHC.Maybe.Nothing,
                                     shipmentPackageWidth = GHC.Maybe.Nothing,
                                     shipmentPickingInstructions = GHC.Maybe.Nothing,
                                     shipmentPurchaseOrders = GHC.Maybe.Nothing,
                                     shipmentRecipientAddress = GHC.Maybe.Nothing,
                                     shipmentRecipientCustomerNumber = GHC.Maybe.Nothing,
                                     shipmentRecipientPartyId = GHC.Maybe.Nothing,
                                     shipmentRecipientSupplierNumber = GHC.Maybe.Nothing,
                                     shipmentRecordComment = GHC.Maybe.Nothing,
                                     shipmentRecordEmailAddresses = GHC.Maybe.Nothing,
                                     shipmentRecordFreeText = GHC.Maybe.Nothing,
                                     shipmentRecordOpening = GHC.Maybe.Nothing,
                                     shipmentSalesInvoiceEmailAddresses = GHC.Maybe.Nothing,
                                     shipmentSalesOrderId = GHC.Maybe.Nothing,
                                     shipmentSalesOrderNumber = GHC.Maybe.Nothing,
                                     shipmentSentToRecipient = GHC.Maybe.Nothing,
                                     shipmentShipmentItems = GHC.Maybe.Nothing,
                                     shipmentShipmentMethodId = GHC.Maybe.Nothing,
                                     shipmentShipmentMethodName = GHC.Maybe.Nothing,
                                     shipmentShipmentNumber = GHC.Maybe.Nothing,
                                     shipmentShipmentType = GHC.Maybe.Nothing,
                                     shipmentShippedFromAddress = GHC.Maybe.Nothing,
                                     shipmentShippingCarrierId = GHC.Maybe.Nothing,
                                     shipmentShippingCarrierName = GHC.Maybe.Nothing,
                                     shipmentShippingDate = GHC.Maybe.Nothing,
                                     shipmentShippingLabelsCount = GHC.Maybe.Nothing,
                                     shipmentShippingReturnCarrierId = GHC.Maybe.Nothing,
                                     shipmentShippingReturnCarrierName = GHC.Maybe.Nothing,
                                     shipmentStatus = shipmentStatus,
                                     shipmentStatusHistory = GHC.Maybe.Nothing,
                                     shipmentTags = GHC.Maybe.Nothing,
                                     shipmentVersion = GHC.Maybe.Nothing,
                                     shipmentWarehouseId = GHC.Maybe.Nothing,
                                     shipmentWarehouseName = GHC.Maybe.Nothing,
                                     shipmentWithdrawalsComplete = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.shipment.properties.shipmentType@ in the specification.
-- 
-- 
data ShipmentShipmentType' =
   ShipmentShipmentType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | ShipmentShipmentType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | ShipmentShipmentType'EnumCONSIGNMENT -- ^ Represents the JSON value @"CONSIGNMENT"@
  | ShipmentShipmentType'EnumCONSIGNMENT_RETURN -- ^ Represents the JSON value @"CONSIGNMENT_RETURN"@
  | ShipmentShipmentType'EnumCUSTOMER_COMPENSATION -- ^ Represents the JSON value @"CUSTOMER_COMPENSATION"@
  | ShipmentShipmentType'EnumINTERNAL -- ^ Represents the JSON value @"INTERNAL"@
  | ShipmentShipmentType'EnumSTANDARD -- ^ Represents the JSON value @"STANDARD"@
  | ShipmentShipmentType'EnumSUPPLIER_RETURN -- ^ Represents the JSON value @"SUPPLIER_RETURN"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ShipmentShipmentType'
    where toJSON (ShipmentShipmentType'Other val) = val
          toJSON (ShipmentShipmentType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (ShipmentShipmentType'EnumCONSIGNMENT) = "CONSIGNMENT"
          toJSON (ShipmentShipmentType'EnumCONSIGNMENT_RETURN) = "CONSIGNMENT_RETURN"
          toJSON (ShipmentShipmentType'EnumCUSTOMER_COMPENSATION) = "CUSTOMER_COMPENSATION"
          toJSON (ShipmentShipmentType'EnumINTERNAL) = "INTERNAL"
          toJSON (ShipmentShipmentType'EnumSTANDARD) = "STANDARD"
          toJSON (ShipmentShipmentType'EnumSUPPLIER_RETURN) = "SUPPLIER_RETURN"
instance Data.Aeson.Types.FromJSON.FromJSON ShipmentShipmentType'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "CONSIGNMENT" -> ShipmentShipmentType'EnumCONSIGNMENT
                                            | val GHC.Classes.== "CONSIGNMENT_RETURN" -> ShipmentShipmentType'EnumCONSIGNMENT_RETURN
                                            | val GHC.Classes.== "CUSTOMER_COMPENSATION" -> ShipmentShipmentType'EnumCUSTOMER_COMPENSATION
                                            | val GHC.Classes.== "INTERNAL" -> ShipmentShipmentType'EnumINTERNAL
                                            | val GHC.Classes.== "STANDARD" -> ShipmentShipmentType'EnumSTANDARD
                                            | val GHC.Classes.== "SUPPLIER_RETURN" -> ShipmentShipmentType'EnumSUPPLIER_RETURN
                                            | GHC.Base.otherwise -> ShipmentShipmentType'Other val)
-- | Defines the enum schema located at @components.schemas.shipment.properties.status@ in the specification.
-- 
-- 
data ShipmentStatus' =
   ShipmentStatus'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | ShipmentStatus'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | ShipmentStatus'EnumCANCELLED -- ^ Represents the JSON value @"CANCELLED"@
  | ShipmentStatus'EnumDELIVERED -- ^ Represents the JSON value @"DELIVERED"@
  | ShipmentStatus'EnumDELIVERY_NOTE_PRINTED -- ^ Represents the JSON value @"DELIVERY_NOTE_PRINTED"@
  | ShipmentStatus'EnumINCOMING_CANCELLED -- ^ Represents the JSON value @"INCOMING_CANCELLED"@
  | ShipmentStatus'EnumINCOMING_GOODS_MOVEMENT_PRINTED -- ^ Represents the JSON value @"INCOMING_GOODS_MOVEMENT_PRINTED"@
  | ShipmentStatus'EnumINCOMING_MOVED_INTO_STORE -- ^ Represents the JSON value @"INCOMING_MOVED_INTO_STORE"@
  | ShipmentStatus'EnumINCOMING_SHIPPED -- ^ Represents the JSON value @"INCOMING_SHIPPED"@
  | ShipmentStatus'EnumIN_ROUTE -- ^ Represents the JSON value @"IN_ROUTE"@
  | ShipmentStatus'EnumNEW -- ^ Represents the JSON value @"NEW"@
  | ShipmentStatus'EnumSHIPPED -- ^ Represents the JSON value @"SHIPPED"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ShipmentStatus'
    where toJSON (ShipmentStatus'Other val) = val
          toJSON (ShipmentStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (ShipmentStatus'EnumCANCELLED) = "CANCELLED"
          toJSON (ShipmentStatus'EnumDELIVERED) = "DELIVERED"
          toJSON (ShipmentStatus'EnumDELIVERY_NOTE_PRINTED) = "DELIVERY_NOTE_PRINTED"
          toJSON (ShipmentStatus'EnumINCOMING_CANCELLED) = "INCOMING_CANCELLED"
          toJSON (ShipmentStatus'EnumINCOMING_GOODS_MOVEMENT_PRINTED) = "INCOMING_GOODS_MOVEMENT_PRINTED"
          toJSON (ShipmentStatus'EnumINCOMING_MOVED_INTO_STORE) = "INCOMING_MOVED_INTO_STORE"
          toJSON (ShipmentStatus'EnumINCOMING_SHIPPED) = "INCOMING_SHIPPED"
          toJSON (ShipmentStatus'EnumIN_ROUTE) = "IN_ROUTE"
          toJSON (ShipmentStatus'EnumNEW) = "NEW"
          toJSON (ShipmentStatus'EnumSHIPPED) = "SHIPPED"
instance Data.Aeson.Types.FromJSON.FromJSON ShipmentStatus'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "CANCELLED" -> ShipmentStatus'EnumCANCELLED
                                            | val GHC.Classes.== "DELIVERED" -> ShipmentStatus'EnumDELIVERED
                                            | val GHC.Classes.== "DELIVERY_NOTE_PRINTED" -> ShipmentStatus'EnumDELIVERY_NOTE_PRINTED
                                            | val GHC.Classes.== "INCOMING_CANCELLED" -> ShipmentStatus'EnumINCOMING_CANCELLED
                                            | val GHC.Classes.== "INCOMING_GOODS_MOVEMENT_PRINTED" -> ShipmentStatus'EnumINCOMING_GOODS_MOVEMENT_PRINTED
                                            | val GHC.Classes.== "INCOMING_MOVED_INTO_STORE" -> ShipmentStatus'EnumINCOMING_MOVED_INTO_STORE
                                            | val GHC.Classes.== "INCOMING_SHIPPED" -> ShipmentStatus'EnumINCOMING_SHIPPED
                                            | val GHC.Classes.== "IN_ROUTE" -> ShipmentStatus'EnumIN_ROUTE
                                            | val GHC.Classes.== "NEW" -> ShipmentStatus'EnumNEW
                                            | val GHC.Classes.== "SHIPPED" -> ShipmentStatus'EnumSHIPPED
                                            | GHC.Base.otherwise -> ShipmentStatus'Other val)
