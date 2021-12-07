-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PurchaseOrderItem
module WeclappAPI.Types.PurchaseOrderItem where

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
import {-# SOURCE #-} WeclappAPI.Types.ReductionAdditionItem

-- | Defines the object schema located at @components.schemas.purchaseOrderItem@ in the specification.
-- 
-- 
data PurchaseOrderItem = PurchaseOrderItem {
  -- | addPageBreakBefore
  purchaseOrderItemAddPageBreakBefore :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | articleId
  , purchaseOrderItemArticleId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | articleNumber
  , purchaseOrderItemArticleNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | createdDate
  , purchaseOrderItemCreatedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | customAttributes
  , purchaseOrderItemCustomAttributes :: (GHC.Maybe.Maybe ([CustomAttribute]))
  -- | description
  , purchaseOrderItemDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | discountPercentage
  , purchaseOrderItemDiscountPercentage :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | freeTextItem
  , purchaseOrderItemFreeTextItem :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | grossAmount
  , purchaseOrderItemGrossAmount :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | grossAmountInCompanyCurrency
  , purchaseOrderItemGrossAmountInCompanyCurrency :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | groupName
  , purchaseOrderItemGroupName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id
  , purchaseOrderItemId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | lastModifiedDate
  , purchaseOrderItemLastModifiedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | manualUnitPrice
  , purchaseOrderItemManualUnitPrice :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | netAmount
  , purchaseOrderItemNetAmount :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | netAmountForStatistics
  , purchaseOrderItemNetAmountForStatistics :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | netAmountForStatisticsInCompanyCurrency
  , purchaseOrderItemNetAmountForStatisticsInCompanyCurrency :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | netAmountInCompanyCurrency
  , purchaseOrderItemNetAmountInCompanyCurrency :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | note
  , purchaseOrderItemNote :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | parentItemId
  , purchaseOrderItemParentItemId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | plannedDeliveryDate
  , purchaseOrderItemPlannedDeliveryDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | plannedShippingDate
  , purchaseOrderItemPlannedShippingDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | positionNumber
  , purchaseOrderItemPositionNumber :: (GHC.Maybe.Maybe GHC.Int.Int32)
  -- | quantity
  , purchaseOrderItemQuantity :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | receivedQuantity
  , purchaseOrderItemReceivedQuantity :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | reductionAdditionItems
  , purchaseOrderItemReductionAdditionItems :: (GHC.Maybe.Maybe ([ReductionAdditionItem]))
  -- | supplierArticleId
  , purchaseOrderItemSupplierArticleId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | taxId
  , purchaseOrderItemTaxId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | taxName
  , purchaseOrderItemTaxName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | title
  , purchaseOrderItemTitle :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | unitId
  , purchaseOrderItemUnitId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | unitName
  , purchaseOrderItemUnitName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | unitPrice
  , purchaseOrderItemUnitPrice :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | unitPriceInCompanyCurrency
  , purchaseOrderItemUnitPriceInCompanyCurrency :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | version
  , purchaseOrderItemVersion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PurchaseOrderItem
    where toJSON obj = Data.Aeson.Types.Internal.object ("addPageBreakBefore" Data.Aeson.Types.ToJSON..= purchaseOrderItemAddPageBreakBefore obj : "articleId" Data.Aeson.Types.ToJSON..= purchaseOrderItemArticleId obj : "articleNumber" Data.Aeson.Types.ToJSON..= purchaseOrderItemArticleNumber obj : "createdDate" Data.Aeson.Types.ToJSON..= purchaseOrderItemCreatedDate obj : "customAttributes" Data.Aeson.Types.ToJSON..= purchaseOrderItemCustomAttributes obj : "description" Data.Aeson.Types.ToJSON..= purchaseOrderItemDescription obj : "discountPercentage" Data.Aeson.Types.ToJSON..= purchaseOrderItemDiscountPercentage obj : "freeTextItem" Data.Aeson.Types.ToJSON..= purchaseOrderItemFreeTextItem obj : "grossAmount" Data.Aeson.Types.ToJSON..= purchaseOrderItemGrossAmount obj : "grossAmountInCompanyCurrency" Data.Aeson.Types.ToJSON..= purchaseOrderItemGrossAmountInCompanyCurrency obj : "groupName" Data.Aeson.Types.ToJSON..= purchaseOrderItemGroupName obj : "id" Data.Aeson.Types.ToJSON..= purchaseOrderItemId obj : "lastModifiedDate" Data.Aeson.Types.ToJSON..= purchaseOrderItemLastModifiedDate obj : "manualUnitPrice" Data.Aeson.Types.ToJSON..= purchaseOrderItemManualUnitPrice obj : "netAmount" Data.Aeson.Types.ToJSON..= purchaseOrderItemNetAmount obj : "netAmountForStatistics" Data.Aeson.Types.ToJSON..= purchaseOrderItemNetAmountForStatistics obj : "netAmountForStatisticsInCompanyCurrency" Data.Aeson.Types.ToJSON..= purchaseOrderItemNetAmountForStatisticsInCompanyCurrency obj : "netAmountInCompanyCurrency" Data.Aeson.Types.ToJSON..= purchaseOrderItemNetAmountInCompanyCurrency obj : "note" Data.Aeson.Types.ToJSON..= purchaseOrderItemNote obj : "parentItemId" Data.Aeson.Types.ToJSON..= purchaseOrderItemParentItemId obj : "plannedDeliveryDate" Data.Aeson.Types.ToJSON..= purchaseOrderItemPlannedDeliveryDate obj : "plannedShippingDate" Data.Aeson.Types.ToJSON..= purchaseOrderItemPlannedShippingDate obj : "positionNumber" Data.Aeson.Types.ToJSON..= purchaseOrderItemPositionNumber obj : "quantity" Data.Aeson.Types.ToJSON..= purchaseOrderItemQuantity obj : "receivedQuantity" Data.Aeson.Types.ToJSON..= purchaseOrderItemReceivedQuantity obj : "reductionAdditionItems" Data.Aeson.Types.ToJSON..= purchaseOrderItemReductionAdditionItems obj : "supplierArticleId" Data.Aeson.Types.ToJSON..= purchaseOrderItemSupplierArticleId obj : "taxId" Data.Aeson.Types.ToJSON..= purchaseOrderItemTaxId obj : "taxName" Data.Aeson.Types.ToJSON..= purchaseOrderItemTaxName obj : "title" Data.Aeson.Types.ToJSON..= purchaseOrderItemTitle obj : "unitId" Data.Aeson.Types.ToJSON..= purchaseOrderItemUnitId obj : "unitName" Data.Aeson.Types.ToJSON..= purchaseOrderItemUnitName obj : "unitPrice" Data.Aeson.Types.ToJSON..= purchaseOrderItemUnitPrice obj : "unitPriceInCompanyCurrency" Data.Aeson.Types.ToJSON..= purchaseOrderItemUnitPriceInCompanyCurrency obj : "version" Data.Aeson.Types.ToJSON..= purchaseOrderItemVersion obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("addPageBreakBefore" Data.Aeson.Types.ToJSON..= purchaseOrderItemAddPageBreakBefore obj) GHC.Base.<> (("articleId" Data.Aeson.Types.ToJSON..= purchaseOrderItemArticleId obj) GHC.Base.<> (("articleNumber" Data.Aeson.Types.ToJSON..= purchaseOrderItemArticleNumber obj) GHC.Base.<> (("createdDate" Data.Aeson.Types.ToJSON..= purchaseOrderItemCreatedDate obj) GHC.Base.<> (("customAttributes" Data.Aeson.Types.ToJSON..= purchaseOrderItemCustomAttributes obj) GHC.Base.<> (("description" Data.Aeson.Types.ToJSON..= purchaseOrderItemDescription obj) GHC.Base.<> (("discountPercentage" Data.Aeson.Types.ToJSON..= purchaseOrderItemDiscountPercentage obj) GHC.Base.<> (("freeTextItem" Data.Aeson.Types.ToJSON..= purchaseOrderItemFreeTextItem obj) GHC.Base.<> (("grossAmount" Data.Aeson.Types.ToJSON..= purchaseOrderItemGrossAmount obj) GHC.Base.<> (("grossAmountInCompanyCurrency" Data.Aeson.Types.ToJSON..= purchaseOrderItemGrossAmountInCompanyCurrency obj) GHC.Base.<> (("groupName" Data.Aeson.Types.ToJSON..= purchaseOrderItemGroupName obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= purchaseOrderItemId obj) GHC.Base.<> (("lastModifiedDate" Data.Aeson.Types.ToJSON..= purchaseOrderItemLastModifiedDate obj) GHC.Base.<> (("manualUnitPrice" Data.Aeson.Types.ToJSON..= purchaseOrderItemManualUnitPrice obj) GHC.Base.<> (("netAmount" Data.Aeson.Types.ToJSON..= purchaseOrderItemNetAmount obj) GHC.Base.<> (("netAmountForStatistics" Data.Aeson.Types.ToJSON..= purchaseOrderItemNetAmountForStatistics obj) GHC.Base.<> (("netAmountForStatisticsInCompanyCurrency" Data.Aeson.Types.ToJSON..= purchaseOrderItemNetAmountForStatisticsInCompanyCurrency obj) GHC.Base.<> (("netAmountInCompanyCurrency" Data.Aeson.Types.ToJSON..= purchaseOrderItemNetAmountInCompanyCurrency obj) GHC.Base.<> (("note" Data.Aeson.Types.ToJSON..= purchaseOrderItemNote obj) GHC.Base.<> (("parentItemId" Data.Aeson.Types.ToJSON..= purchaseOrderItemParentItemId obj) GHC.Base.<> (("plannedDeliveryDate" Data.Aeson.Types.ToJSON..= purchaseOrderItemPlannedDeliveryDate obj) GHC.Base.<> (("plannedShippingDate" Data.Aeson.Types.ToJSON..= purchaseOrderItemPlannedShippingDate obj) GHC.Base.<> (("positionNumber" Data.Aeson.Types.ToJSON..= purchaseOrderItemPositionNumber obj) GHC.Base.<> (("quantity" Data.Aeson.Types.ToJSON..= purchaseOrderItemQuantity obj) GHC.Base.<> (("receivedQuantity" Data.Aeson.Types.ToJSON..= purchaseOrderItemReceivedQuantity obj) GHC.Base.<> (("reductionAdditionItems" Data.Aeson.Types.ToJSON..= purchaseOrderItemReductionAdditionItems obj) GHC.Base.<> (("supplierArticleId" Data.Aeson.Types.ToJSON..= purchaseOrderItemSupplierArticleId obj) GHC.Base.<> (("taxId" Data.Aeson.Types.ToJSON..= purchaseOrderItemTaxId obj) GHC.Base.<> (("taxName" Data.Aeson.Types.ToJSON..= purchaseOrderItemTaxName obj) GHC.Base.<> (("title" Data.Aeson.Types.ToJSON..= purchaseOrderItemTitle obj) GHC.Base.<> (("unitId" Data.Aeson.Types.ToJSON..= purchaseOrderItemUnitId obj) GHC.Base.<> (("unitName" Data.Aeson.Types.ToJSON..= purchaseOrderItemUnitName obj) GHC.Base.<> (("unitPrice" Data.Aeson.Types.ToJSON..= purchaseOrderItemUnitPrice obj) GHC.Base.<> (("unitPriceInCompanyCurrency" Data.Aeson.Types.ToJSON..= purchaseOrderItemUnitPriceInCompanyCurrency obj) GHC.Base.<> ("version" Data.Aeson.Types.ToJSON..= purchaseOrderItemVersion obj)))))))))))))))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PurchaseOrderItem
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PurchaseOrderItem" (\obj -> ((((((((((((((((((((((((((((((((((GHC.Base.pure PurchaseOrderItem GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "addPageBreakBefore")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "articleId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "articleNumber")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "createdDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customAttributes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "discountPercentage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "freeTextItem")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "grossAmount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "grossAmountInCompanyCurrency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "groupName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lastModifiedDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "manualUnitPrice")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "netAmount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "netAmountForStatistics")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "netAmountForStatisticsInCompanyCurrency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "netAmountInCompanyCurrency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "note")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "parentItemId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "plannedDeliveryDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "plannedShippingDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "positionNumber")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "receivedQuantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reductionAdditionItems")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "supplierArticleId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "taxId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "taxName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "title")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unitId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unitName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unitPrice")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unitPriceInCompanyCurrency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "version"))
-- | Create a new 'PurchaseOrderItem' with all required fields.
mkPurchaseOrderItem :: PurchaseOrderItem
mkPurchaseOrderItem = PurchaseOrderItem{purchaseOrderItemAddPageBreakBefore = GHC.Maybe.Nothing,
                                        purchaseOrderItemArticleId = GHC.Maybe.Nothing,
                                        purchaseOrderItemArticleNumber = GHC.Maybe.Nothing,
                                        purchaseOrderItemCreatedDate = GHC.Maybe.Nothing,
                                        purchaseOrderItemCustomAttributes = GHC.Maybe.Nothing,
                                        purchaseOrderItemDescription = GHC.Maybe.Nothing,
                                        purchaseOrderItemDiscountPercentage = GHC.Maybe.Nothing,
                                        purchaseOrderItemFreeTextItem = GHC.Maybe.Nothing,
                                        purchaseOrderItemGrossAmount = GHC.Maybe.Nothing,
                                        purchaseOrderItemGrossAmountInCompanyCurrency = GHC.Maybe.Nothing,
                                        purchaseOrderItemGroupName = GHC.Maybe.Nothing,
                                        purchaseOrderItemId = GHC.Maybe.Nothing,
                                        purchaseOrderItemLastModifiedDate = GHC.Maybe.Nothing,
                                        purchaseOrderItemManualUnitPrice = GHC.Maybe.Nothing,
                                        purchaseOrderItemNetAmount = GHC.Maybe.Nothing,
                                        purchaseOrderItemNetAmountForStatistics = GHC.Maybe.Nothing,
                                        purchaseOrderItemNetAmountForStatisticsInCompanyCurrency = GHC.Maybe.Nothing,
                                        purchaseOrderItemNetAmountInCompanyCurrency = GHC.Maybe.Nothing,
                                        purchaseOrderItemNote = GHC.Maybe.Nothing,
                                        purchaseOrderItemParentItemId = GHC.Maybe.Nothing,
                                        purchaseOrderItemPlannedDeliveryDate = GHC.Maybe.Nothing,
                                        purchaseOrderItemPlannedShippingDate = GHC.Maybe.Nothing,
                                        purchaseOrderItemPositionNumber = GHC.Maybe.Nothing,
                                        purchaseOrderItemQuantity = GHC.Maybe.Nothing,
                                        purchaseOrderItemReceivedQuantity = GHC.Maybe.Nothing,
                                        purchaseOrderItemReductionAdditionItems = GHC.Maybe.Nothing,
                                        purchaseOrderItemSupplierArticleId = GHC.Maybe.Nothing,
                                        purchaseOrderItemTaxId = GHC.Maybe.Nothing,
                                        purchaseOrderItemTaxName = GHC.Maybe.Nothing,
                                        purchaseOrderItemTitle = GHC.Maybe.Nothing,
                                        purchaseOrderItemUnitId = GHC.Maybe.Nothing,
                                        purchaseOrderItemUnitName = GHC.Maybe.Nothing,
                                        purchaseOrderItemUnitPrice = GHC.Maybe.Nothing,
                                        purchaseOrderItemUnitPriceInCompanyCurrency = GHC.Maybe.Nothing,
                                        purchaseOrderItemVersion = GHC.Maybe.Nothing}
