-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PurchaseOrderRequestOffer
module WeclappAPI.Types.PurchaseOrderRequestOffer where

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
import {-# SOURCE #-} WeclappAPI.Types.PurchaseOrderRequestOfferItem

-- | Defines the object schema located at @components.schemas.purchaseOrderRequestOffer@ in the specification.
-- 
-- 
data PurchaseOrderRequestOffer = PurchaseOrderRequestOffer {
  -- | commercialLanguage
  purchaseOrderRequestOfferCommercialLanguage :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | createdDate
  , purchaseOrderRequestOfferCreatedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | currencyConversionDate
  , purchaseOrderRequestOfferCurrencyConversionDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | currencyConversionRate
  , purchaseOrderRequestOfferCurrencyConversionRate :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | customAttributes
  , purchaseOrderRequestOfferCustomAttributes :: (GHC.Maybe.Maybe ([CustomAttribute]))
  -- | description
  , purchaseOrderRequestOfferDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | disableEmailTemplate
  , purchaseOrderRequestOfferDisableEmailTemplate :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | endDate
  , purchaseOrderRequestOfferEndDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | grossAmount
  , purchaseOrderRequestOfferGrossAmount :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | grossAmountInCompanyCurrency
  , purchaseOrderRequestOfferGrossAmountInCompanyCurrency :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | headerDiscount
  , purchaseOrderRequestOfferHeaderDiscount :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | headerSurcharge
  , purchaseOrderRequestOfferHeaderSurcharge :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id
  , purchaseOrderRequestOfferId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | lastModifiedDate
  , purchaseOrderRequestOfferLastModifiedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | netAmount
  , purchaseOrderRequestOfferNetAmount :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | netAmountInCompanyCurrency
  , purchaseOrderRequestOfferNetAmountInCompanyCurrency :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | nonStandardTaxId
  , purchaseOrderRequestOfferNonStandardTaxId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | nonStandardTaxName
  , purchaseOrderRequestOfferNonStandardTaxName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | offerDate
  , purchaseOrderRequestOfferOfferDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | paymentMethodId
  , purchaseOrderRequestOfferPaymentMethodId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | paymentMethodName
  , purchaseOrderRequestOfferPaymentMethodName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | plannedDeliveryDate
  , purchaseOrderRequestOfferPlannedDeliveryDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | purchaseOrderRequestOfferItems
  , purchaseOrderRequestOfferPurchaseOrderRequestOfferItems :: (GHC.Maybe.Maybe ([PurchaseOrderRequestOfferItem]))
  -- | recordComment
  , purchaseOrderRequestOfferRecordComment :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | recordCurrencyId
  , purchaseOrderRequestOfferRecordCurrencyId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | recordCurrencyName
  , purchaseOrderRequestOfferRecordCurrencyName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | recordEmailAddresses
  , purchaseOrderRequestOfferRecordEmailAddresses :: (GHC.Maybe.Maybe EmailAddresses)
  -- | recordFreeText
  , purchaseOrderRequestOfferRecordFreeText :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | recordOpening
  , purchaseOrderRequestOfferRecordOpening :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | replyDate
  , purchaseOrderRequestOfferReplyDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | requestDate
  , purchaseOrderRequestOfferRequestDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | sentToRecipient
  , purchaseOrderRequestOfferSentToRecipient :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | startDate
  , purchaseOrderRequestOfferStartDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | status
  , purchaseOrderRequestOfferStatus :: PurchaseOrderRequestOfferStatus'
  -- | supplierId
  , purchaseOrderRequestOfferSupplierId :: Data.Text.Internal.Text
  -- | supplierNumber
  , purchaseOrderRequestOfferSupplierNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | supplierReference
  , purchaseOrderRequestOfferSupplierReference :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | tags
  , purchaseOrderRequestOfferTags :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | termOfPaymentId
  , purchaseOrderRequestOfferTermOfPaymentId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | termOfPaymentName
  , purchaseOrderRequestOfferTermOfPaymentName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | validFrom
  , purchaseOrderRequestOfferValidFrom :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | validTo
  , purchaseOrderRequestOfferValidTo :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | version
  , purchaseOrderRequestOfferVersion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PurchaseOrderRequestOffer
    where toJSON obj = Data.Aeson.Types.Internal.object ("commercialLanguage" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferCommercialLanguage obj : "createdDate" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferCreatedDate obj : "currencyConversionDate" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferCurrencyConversionDate obj : "currencyConversionRate" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferCurrencyConversionRate obj : "customAttributes" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferCustomAttributes obj : "description" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferDescription obj : "disableEmailTemplate" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferDisableEmailTemplate obj : "endDate" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferEndDate obj : "grossAmount" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferGrossAmount obj : "grossAmountInCompanyCurrency" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferGrossAmountInCompanyCurrency obj : "headerDiscount" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferHeaderDiscount obj : "headerSurcharge" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferHeaderSurcharge obj : "id" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferId obj : "lastModifiedDate" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferLastModifiedDate obj : "netAmount" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferNetAmount obj : "netAmountInCompanyCurrency" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferNetAmountInCompanyCurrency obj : "nonStandardTaxId" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferNonStandardTaxId obj : "nonStandardTaxName" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferNonStandardTaxName obj : "offerDate" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferOfferDate obj : "paymentMethodId" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferPaymentMethodId obj : "paymentMethodName" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferPaymentMethodName obj : "plannedDeliveryDate" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferPlannedDeliveryDate obj : "purchaseOrderRequestOfferItems" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferPurchaseOrderRequestOfferItems obj : "recordComment" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferRecordComment obj : "recordCurrencyId" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferRecordCurrencyId obj : "recordCurrencyName" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferRecordCurrencyName obj : "recordEmailAddresses" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferRecordEmailAddresses obj : "recordFreeText" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferRecordFreeText obj : "recordOpening" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferRecordOpening obj : "replyDate" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferReplyDate obj : "requestDate" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferRequestDate obj : "sentToRecipient" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferSentToRecipient obj : "startDate" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferStartDate obj : "status" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferStatus obj : "supplierId" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferSupplierId obj : "supplierNumber" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferSupplierNumber obj : "supplierReference" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferSupplierReference obj : "tags" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferTags obj : "termOfPaymentId" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferTermOfPaymentId obj : "termOfPaymentName" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferTermOfPaymentName obj : "validFrom" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferValidFrom obj : "validTo" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferValidTo obj : "version" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferVersion obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("commercialLanguage" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferCommercialLanguage obj) GHC.Base.<> (("createdDate" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferCreatedDate obj) GHC.Base.<> (("currencyConversionDate" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferCurrencyConversionDate obj) GHC.Base.<> (("currencyConversionRate" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferCurrencyConversionRate obj) GHC.Base.<> (("customAttributes" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferCustomAttributes obj) GHC.Base.<> (("description" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferDescription obj) GHC.Base.<> (("disableEmailTemplate" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferDisableEmailTemplate obj) GHC.Base.<> (("endDate" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferEndDate obj) GHC.Base.<> (("grossAmount" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferGrossAmount obj) GHC.Base.<> (("grossAmountInCompanyCurrency" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferGrossAmountInCompanyCurrency obj) GHC.Base.<> (("headerDiscount" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferHeaderDiscount obj) GHC.Base.<> (("headerSurcharge" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferHeaderSurcharge obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferId obj) GHC.Base.<> (("lastModifiedDate" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferLastModifiedDate obj) GHC.Base.<> (("netAmount" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferNetAmount obj) GHC.Base.<> (("netAmountInCompanyCurrency" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferNetAmountInCompanyCurrency obj) GHC.Base.<> (("nonStandardTaxId" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferNonStandardTaxId obj) GHC.Base.<> (("nonStandardTaxName" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferNonStandardTaxName obj) GHC.Base.<> (("offerDate" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferOfferDate obj) GHC.Base.<> (("paymentMethodId" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferPaymentMethodId obj) GHC.Base.<> (("paymentMethodName" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferPaymentMethodName obj) GHC.Base.<> (("plannedDeliveryDate" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferPlannedDeliveryDate obj) GHC.Base.<> (("purchaseOrderRequestOfferItems" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferPurchaseOrderRequestOfferItems obj) GHC.Base.<> (("recordComment" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferRecordComment obj) GHC.Base.<> (("recordCurrencyId" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferRecordCurrencyId obj) GHC.Base.<> (("recordCurrencyName" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferRecordCurrencyName obj) GHC.Base.<> (("recordEmailAddresses" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferRecordEmailAddresses obj) GHC.Base.<> (("recordFreeText" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferRecordFreeText obj) GHC.Base.<> (("recordOpening" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferRecordOpening obj) GHC.Base.<> (("replyDate" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferReplyDate obj) GHC.Base.<> (("requestDate" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferRequestDate obj) GHC.Base.<> (("sentToRecipient" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferSentToRecipient obj) GHC.Base.<> (("startDate" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferStartDate obj) GHC.Base.<> (("status" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferStatus obj) GHC.Base.<> (("supplierId" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferSupplierId obj) GHC.Base.<> (("supplierNumber" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferSupplierNumber obj) GHC.Base.<> (("supplierReference" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferSupplierReference obj) GHC.Base.<> (("tags" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferTags obj) GHC.Base.<> (("termOfPaymentId" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferTermOfPaymentId obj) GHC.Base.<> (("termOfPaymentName" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferTermOfPaymentName obj) GHC.Base.<> (("validFrom" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferValidFrom obj) GHC.Base.<> (("validTo" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferValidTo obj) GHC.Base.<> ("version" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferVersion obj)))))))))))))))))))))))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PurchaseOrderRequestOffer
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PurchaseOrderRequestOffer" (\obj -> ((((((((((((((((((((((((((((((((((((((((((GHC.Base.pure PurchaseOrderRequestOffer GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "commercialLanguage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "createdDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currencyConversionDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currencyConversionRate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customAttributes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "disableEmailTemplate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "endDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "grossAmount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "grossAmountInCompanyCurrency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "headerDiscount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "headerSurcharge")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lastModifiedDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "netAmount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "netAmountInCompanyCurrency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "nonStandardTaxId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "nonStandardTaxName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "offerDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "paymentMethodId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "paymentMethodName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "plannedDeliveryDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "purchaseOrderRequestOfferItems")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "recordComment")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "recordCurrencyId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "recordCurrencyName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "recordEmailAddresses")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "recordFreeText")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "recordOpening")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "replyDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "requestDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sentToRecipient")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "startDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "supplierId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "supplierNumber")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "supplierReference")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tags")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "termOfPaymentId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "termOfPaymentName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "validFrom")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "validTo")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "version"))
-- | Create a new 'PurchaseOrderRequestOffer' with all required fields.
mkPurchaseOrderRequestOffer :: PurchaseOrderRequestOfferStatus' -- ^ 'purchaseOrderRequestOfferStatus'
  -> Data.Text.Internal.Text -- ^ 'purchaseOrderRequestOfferSupplierId'
  -> PurchaseOrderRequestOffer
mkPurchaseOrderRequestOffer purchaseOrderRequestOfferStatus purchaseOrderRequestOfferSupplierId = PurchaseOrderRequestOffer{purchaseOrderRequestOfferCommercialLanguage = GHC.Maybe.Nothing,
                                                                                                                            purchaseOrderRequestOfferCreatedDate = GHC.Maybe.Nothing,
                                                                                                                            purchaseOrderRequestOfferCurrencyConversionDate = GHC.Maybe.Nothing,
                                                                                                                            purchaseOrderRequestOfferCurrencyConversionRate = GHC.Maybe.Nothing,
                                                                                                                            purchaseOrderRequestOfferCustomAttributes = GHC.Maybe.Nothing,
                                                                                                                            purchaseOrderRequestOfferDescription = GHC.Maybe.Nothing,
                                                                                                                            purchaseOrderRequestOfferDisableEmailTemplate = GHC.Maybe.Nothing,
                                                                                                                            purchaseOrderRequestOfferEndDate = GHC.Maybe.Nothing,
                                                                                                                            purchaseOrderRequestOfferGrossAmount = GHC.Maybe.Nothing,
                                                                                                                            purchaseOrderRequestOfferGrossAmountInCompanyCurrency = GHC.Maybe.Nothing,
                                                                                                                            purchaseOrderRequestOfferHeaderDiscount = GHC.Maybe.Nothing,
                                                                                                                            purchaseOrderRequestOfferHeaderSurcharge = GHC.Maybe.Nothing,
                                                                                                                            purchaseOrderRequestOfferId = GHC.Maybe.Nothing,
                                                                                                                            purchaseOrderRequestOfferLastModifiedDate = GHC.Maybe.Nothing,
                                                                                                                            purchaseOrderRequestOfferNetAmount = GHC.Maybe.Nothing,
                                                                                                                            purchaseOrderRequestOfferNetAmountInCompanyCurrency = GHC.Maybe.Nothing,
                                                                                                                            purchaseOrderRequestOfferNonStandardTaxId = GHC.Maybe.Nothing,
                                                                                                                            purchaseOrderRequestOfferNonStandardTaxName = GHC.Maybe.Nothing,
                                                                                                                            purchaseOrderRequestOfferOfferDate = GHC.Maybe.Nothing,
                                                                                                                            purchaseOrderRequestOfferPaymentMethodId = GHC.Maybe.Nothing,
                                                                                                                            purchaseOrderRequestOfferPaymentMethodName = GHC.Maybe.Nothing,
                                                                                                                            purchaseOrderRequestOfferPlannedDeliveryDate = GHC.Maybe.Nothing,
                                                                                                                            purchaseOrderRequestOfferPurchaseOrderRequestOfferItems = GHC.Maybe.Nothing,
                                                                                                                            purchaseOrderRequestOfferRecordComment = GHC.Maybe.Nothing,
                                                                                                                            purchaseOrderRequestOfferRecordCurrencyId = GHC.Maybe.Nothing,
                                                                                                                            purchaseOrderRequestOfferRecordCurrencyName = GHC.Maybe.Nothing,
                                                                                                                            purchaseOrderRequestOfferRecordEmailAddresses = GHC.Maybe.Nothing,
                                                                                                                            purchaseOrderRequestOfferRecordFreeText = GHC.Maybe.Nothing,
                                                                                                                            purchaseOrderRequestOfferRecordOpening = GHC.Maybe.Nothing,
                                                                                                                            purchaseOrderRequestOfferReplyDate = GHC.Maybe.Nothing,
                                                                                                                            purchaseOrderRequestOfferRequestDate = GHC.Maybe.Nothing,
                                                                                                                            purchaseOrderRequestOfferSentToRecipient = GHC.Maybe.Nothing,
                                                                                                                            purchaseOrderRequestOfferStartDate = GHC.Maybe.Nothing,
                                                                                                                            purchaseOrderRequestOfferStatus = purchaseOrderRequestOfferStatus,
                                                                                                                            purchaseOrderRequestOfferSupplierId = purchaseOrderRequestOfferSupplierId,
                                                                                                                            purchaseOrderRequestOfferSupplierNumber = GHC.Maybe.Nothing,
                                                                                                                            purchaseOrderRequestOfferSupplierReference = GHC.Maybe.Nothing,
                                                                                                                            purchaseOrderRequestOfferTags = GHC.Maybe.Nothing,
                                                                                                                            purchaseOrderRequestOfferTermOfPaymentId = GHC.Maybe.Nothing,
                                                                                                                            purchaseOrderRequestOfferTermOfPaymentName = GHC.Maybe.Nothing,
                                                                                                                            purchaseOrderRequestOfferValidFrom = GHC.Maybe.Nothing,
                                                                                                                            purchaseOrderRequestOfferValidTo = GHC.Maybe.Nothing,
                                                                                                                            purchaseOrderRequestOfferVersion = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.purchaseOrderRequestOffer.properties.status@ in the specification.
-- 
-- 
data PurchaseOrderRequestOfferStatus' =
   PurchaseOrderRequestOfferStatus'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PurchaseOrderRequestOfferStatus'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PurchaseOrderRequestOfferStatus'EnumACCEPTED -- ^ Represents the JSON value @"ACCEPTED"@
  | PurchaseOrderRequestOfferStatus'EnumDECLINED -- ^ Represents the JSON value @"DECLINED"@
  | PurchaseOrderRequestOfferStatus'EnumOFFER_RECEIVED -- ^ Represents the JSON value @"OFFER_RECEIVED"@
  | PurchaseOrderRequestOfferStatus'EnumOPEN -- ^ Represents the JSON value @"OPEN"@
  | PurchaseOrderRequestOfferStatus'EnumREQUESTED -- ^ Represents the JSON value @"REQUESTED"@
  | PurchaseOrderRequestOfferStatus'EnumREVISED -- ^ Represents the JSON value @"REVISED"@
  | PurchaseOrderRequestOfferStatus'EnumREVISED_REQUEST -- ^ Represents the JSON value @"REVISED_REQUEST"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PurchaseOrderRequestOfferStatus'
    where toJSON (PurchaseOrderRequestOfferStatus'Other val) = val
          toJSON (PurchaseOrderRequestOfferStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (PurchaseOrderRequestOfferStatus'EnumACCEPTED) = "ACCEPTED"
          toJSON (PurchaseOrderRequestOfferStatus'EnumDECLINED) = "DECLINED"
          toJSON (PurchaseOrderRequestOfferStatus'EnumOFFER_RECEIVED) = "OFFER_RECEIVED"
          toJSON (PurchaseOrderRequestOfferStatus'EnumOPEN) = "OPEN"
          toJSON (PurchaseOrderRequestOfferStatus'EnumREQUESTED) = "REQUESTED"
          toJSON (PurchaseOrderRequestOfferStatus'EnumREVISED) = "REVISED"
          toJSON (PurchaseOrderRequestOfferStatus'EnumREVISED_REQUEST) = "REVISED_REQUEST"
instance Data.Aeson.Types.FromJSON.FromJSON PurchaseOrderRequestOfferStatus'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "ACCEPTED" -> PurchaseOrderRequestOfferStatus'EnumACCEPTED
                                            | val GHC.Classes.== "DECLINED" -> PurchaseOrderRequestOfferStatus'EnumDECLINED
                                            | val GHC.Classes.== "OFFER_RECEIVED" -> PurchaseOrderRequestOfferStatus'EnumOFFER_RECEIVED
                                            | val GHC.Classes.== "OPEN" -> PurchaseOrderRequestOfferStatus'EnumOPEN
                                            | val GHC.Classes.== "REQUESTED" -> PurchaseOrderRequestOfferStatus'EnumREQUESTED
                                            | val GHC.Classes.== "REVISED" -> PurchaseOrderRequestOfferStatus'EnumREVISED
                                            | val GHC.Classes.== "REVISED_REQUEST" -> PurchaseOrderRequestOfferStatus'EnumREVISED_REQUEST
                                            | GHC.Base.otherwise -> PurchaseOrderRequestOfferStatus'Other val)