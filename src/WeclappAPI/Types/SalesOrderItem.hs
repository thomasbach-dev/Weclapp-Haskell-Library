-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema SalesOrderItem
module WeclappAPI.Types.SalesOrderItem where

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

-- | Defines the object schema located at @components.schemas.salesOrderItem@ in the specification.
-- 
-- 
data SalesOrderItem = SalesOrderItem {
  -- | addPageBreakBefore
  salesOrderItemAddPageBreakBefore :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | articleId
  , salesOrderItemArticleId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | articleNumber
  , salesOrderItemArticleNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | createdDate
  , salesOrderItemCreatedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | customAttributes
  , salesOrderItemCustomAttributes :: (GHC.Maybe.Maybe ([CustomAttribute]))
  -- | description
  , salesOrderItemDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | discountPercentage
  , salesOrderItemDiscountPercentage :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | ecommerceOrderItemId
  , salesOrderItemEcommerceOrderItemId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | freeTextItem
  , salesOrderItemFreeTextItem :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | grossAmount
  , salesOrderItemGrossAmount :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | grossAmountInCompanyCurrency
  , salesOrderItemGrossAmountInCompanyCurrency :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | groupName
  , salesOrderItemGroupName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id
  , salesOrderItemId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | invoicedQuantity
  , salesOrderItemInvoicedQuantity :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | lastModifiedDate
  , salesOrderItemLastModifiedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | manualUnitCost
  , salesOrderItemManualUnitCost :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | manualUnitPrice
  , salesOrderItemManualUnitPrice :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | netAmount
  , salesOrderItemNetAmount :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | netAmountForStatistics
  , salesOrderItemNetAmountForStatistics :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | netAmountForStatisticsInCompanyCurrency
  , salesOrderItemNetAmountForStatisticsInCompanyCurrency :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | netAmountInCompanyCurrency
  , salesOrderItemNetAmountInCompanyCurrency :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | note
  , salesOrderItemNote :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | parentItemId
  , salesOrderItemParentItemId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | plannedShippingDate
  , salesOrderItemPlannedShippingDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | positionNumber
  , salesOrderItemPositionNumber :: (GHC.Maybe.Maybe GHC.Int.Int32)
  -- | quantity
  , salesOrderItemQuantity :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | reductionAdditionItems
  , salesOrderItemReductionAdditionItems :: (GHC.Maybe.Maybe ([ReductionAdditionItem]))
  -- | servicePeriodFrom
  , salesOrderItemServicePeriodFrom :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | servicePeriodTo
  , salesOrderItemServicePeriodTo :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | shipped
  , salesOrderItemShipped :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | shippedQuantity
  , salesOrderItemShippedQuantity :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | taxId
  , salesOrderItemTaxId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | taxName
  , salesOrderItemTaxName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | title
  , salesOrderItemTitle :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | unitCost
  , salesOrderItemUnitCost :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | unitCostInCompanyCurrency
  , salesOrderItemUnitCostInCompanyCurrency :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | unitId
  , salesOrderItemUnitId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | unitName
  , salesOrderItemUnitName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | unitPrice
  , salesOrderItemUnitPrice :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | unitPriceInCompanyCurrency
  , salesOrderItemUnitPriceInCompanyCurrency :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | version
  , salesOrderItemVersion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | withdrawalBatchNumber
  , salesOrderItemWithdrawalBatchNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | withdrawalSerialNumbers
  , salesOrderItemWithdrawalSerialNumbers :: ([Data.Text.Internal.Text])
  -- | withdrawalWarehouseLevelId
  , salesOrderItemWithdrawalWarehouseLevelId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SalesOrderItem
    where toJSON obj = Data.Aeson.Types.Internal.object ("addPageBreakBefore" Data.Aeson.Types.ToJSON..= salesOrderItemAddPageBreakBefore obj : "articleId" Data.Aeson.Types.ToJSON..= salesOrderItemArticleId obj : "articleNumber" Data.Aeson.Types.ToJSON..= salesOrderItemArticleNumber obj : "createdDate" Data.Aeson.Types.ToJSON..= salesOrderItemCreatedDate obj : "customAttributes" Data.Aeson.Types.ToJSON..= salesOrderItemCustomAttributes obj : "description" Data.Aeson.Types.ToJSON..= salesOrderItemDescription obj : "discountPercentage" Data.Aeson.Types.ToJSON..= salesOrderItemDiscountPercentage obj : "ecommerceOrderItemId" Data.Aeson.Types.ToJSON..= salesOrderItemEcommerceOrderItemId obj : "freeTextItem" Data.Aeson.Types.ToJSON..= salesOrderItemFreeTextItem obj : "grossAmount" Data.Aeson.Types.ToJSON..= salesOrderItemGrossAmount obj : "grossAmountInCompanyCurrency" Data.Aeson.Types.ToJSON..= salesOrderItemGrossAmountInCompanyCurrency obj : "groupName" Data.Aeson.Types.ToJSON..= salesOrderItemGroupName obj : "id" Data.Aeson.Types.ToJSON..= salesOrderItemId obj : "invoicedQuantity" Data.Aeson.Types.ToJSON..= salesOrderItemInvoicedQuantity obj : "lastModifiedDate" Data.Aeson.Types.ToJSON..= salesOrderItemLastModifiedDate obj : "manualUnitCost" Data.Aeson.Types.ToJSON..= salesOrderItemManualUnitCost obj : "manualUnitPrice" Data.Aeson.Types.ToJSON..= salesOrderItemManualUnitPrice obj : "netAmount" Data.Aeson.Types.ToJSON..= salesOrderItemNetAmount obj : "netAmountForStatistics" Data.Aeson.Types.ToJSON..= salesOrderItemNetAmountForStatistics obj : "netAmountForStatisticsInCompanyCurrency" Data.Aeson.Types.ToJSON..= salesOrderItemNetAmountForStatisticsInCompanyCurrency obj : "netAmountInCompanyCurrency" Data.Aeson.Types.ToJSON..= salesOrderItemNetAmountInCompanyCurrency obj : "note" Data.Aeson.Types.ToJSON..= salesOrderItemNote obj : "parentItemId" Data.Aeson.Types.ToJSON..= salesOrderItemParentItemId obj : "plannedShippingDate" Data.Aeson.Types.ToJSON..= salesOrderItemPlannedShippingDate obj : "positionNumber" Data.Aeson.Types.ToJSON..= salesOrderItemPositionNumber obj : "quantity" Data.Aeson.Types.ToJSON..= salesOrderItemQuantity obj : "reductionAdditionItems" Data.Aeson.Types.ToJSON..= salesOrderItemReductionAdditionItems obj : "servicePeriodFrom" Data.Aeson.Types.ToJSON..= salesOrderItemServicePeriodFrom obj : "servicePeriodTo" Data.Aeson.Types.ToJSON..= salesOrderItemServicePeriodTo obj : "shipped" Data.Aeson.Types.ToJSON..= salesOrderItemShipped obj : "shippedQuantity" Data.Aeson.Types.ToJSON..= salesOrderItemShippedQuantity obj : "taxId" Data.Aeson.Types.ToJSON..= salesOrderItemTaxId obj : "taxName" Data.Aeson.Types.ToJSON..= salesOrderItemTaxName obj : "title" Data.Aeson.Types.ToJSON..= salesOrderItemTitle obj : "unitCost" Data.Aeson.Types.ToJSON..= salesOrderItemUnitCost obj : "unitCostInCompanyCurrency" Data.Aeson.Types.ToJSON..= salesOrderItemUnitCostInCompanyCurrency obj : "unitId" Data.Aeson.Types.ToJSON..= salesOrderItemUnitId obj : "unitName" Data.Aeson.Types.ToJSON..= salesOrderItemUnitName obj : "unitPrice" Data.Aeson.Types.ToJSON..= salesOrderItemUnitPrice obj : "unitPriceInCompanyCurrency" Data.Aeson.Types.ToJSON..= salesOrderItemUnitPriceInCompanyCurrency obj : "version" Data.Aeson.Types.ToJSON..= salesOrderItemVersion obj : "withdrawalBatchNumber" Data.Aeson.Types.ToJSON..= salesOrderItemWithdrawalBatchNumber obj : "withdrawalSerialNumbers" Data.Aeson.Types.ToJSON..= salesOrderItemWithdrawalSerialNumbers obj : "withdrawalWarehouseLevelId" Data.Aeson.Types.ToJSON..= salesOrderItemWithdrawalWarehouseLevelId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("addPageBreakBefore" Data.Aeson.Types.ToJSON..= salesOrderItemAddPageBreakBefore obj) GHC.Base.<> (("articleId" Data.Aeson.Types.ToJSON..= salesOrderItemArticleId obj) GHC.Base.<> (("articleNumber" Data.Aeson.Types.ToJSON..= salesOrderItemArticleNumber obj) GHC.Base.<> (("createdDate" Data.Aeson.Types.ToJSON..= salesOrderItemCreatedDate obj) GHC.Base.<> (("customAttributes" Data.Aeson.Types.ToJSON..= salesOrderItemCustomAttributes obj) GHC.Base.<> (("description" Data.Aeson.Types.ToJSON..= salesOrderItemDescription obj) GHC.Base.<> (("discountPercentage" Data.Aeson.Types.ToJSON..= salesOrderItemDiscountPercentage obj) GHC.Base.<> (("ecommerceOrderItemId" Data.Aeson.Types.ToJSON..= salesOrderItemEcommerceOrderItemId obj) GHC.Base.<> (("freeTextItem" Data.Aeson.Types.ToJSON..= salesOrderItemFreeTextItem obj) GHC.Base.<> (("grossAmount" Data.Aeson.Types.ToJSON..= salesOrderItemGrossAmount obj) GHC.Base.<> (("grossAmountInCompanyCurrency" Data.Aeson.Types.ToJSON..= salesOrderItemGrossAmountInCompanyCurrency obj) GHC.Base.<> (("groupName" Data.Aeson.Types.ToJSON..= salesOrderItemGroupName obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= salesOrderItemId obj) GHC.Base.<> (("invoicedQuantity" Data.Aeson.Types.ToJSON..= salesOrderItemInvoicedQuantity obj) GHC.Base.<> (("lastModifiedDate" Data.Aeson.Types.ToJSON..= salesOrderItemLastModifiedDate obj) GHC.Base.<> (("manualUnitCost" Data.Aeson.Types.ToJSON..= salesOrderItemManualUnitCost obj) GHC.Base.<> (("manualUnitPrice" Data.Aeson.Types.ToJSON..= salesOrderItemManualUnitPrice obj) GHC.Base.<> (("netAmount" Data.Aeson.Types.ToJSON..= salesOrderItemNetAmount obj) GHC.Base.<> (("netAmountForStatistics" Data.Aeson.Types.ToJSON..= salesOrderItemNetAmountForStatistics obj) GHC.Base.<> (("netAmountForStatisticsInCompanyCurrency" Data.Aeson.Types.ToJSON..= salesOrderItemNetAmountForStatisticsInCompanyCurrency obj) GHC.Base.<> (("netAmountInCompanyCurrency" Data.Aeson.Types.ToJSON..= salesOrderItemNetAmountInCompanyCurrency obj) GHC.Base.<> (("note" Data.Aeson.Types.ToJSON..= salesOrderItemNote obj) GHC.Base.<> (("parentItemId" Data.Aeson.Types.ToJSON..= salesOrderItemParentItemId obj) GHC.Base.<> (("plannedShippingDate" Data.Aeson.Types.ToJSON..= salesOrderItemPlannedShippingDate obj) GHC.Base.<> (("positionNumber" Data.Aeson.Types.ToJSON..= salesOrderItemPositionNumber obj) GHC.Base.<> (("quantity" Data.Aeson.Types.ToJSON..= salesOrderItemQuantity obj) GHC.Base.<> (("reductionAdditionItems" Data.Aeson.Types.ToJSON..= salesOrderItemReductionAdditionItems obj) GHC.Base.<> (("servicePeriodFrom" Data.Aeson.Types.ToJSON..= salesOrderItemServicePeriodFrom obj) GHC.Base.<> (("servicePeriodTo" Data.Aeson.Types.ToJSON..= salesOrderItemServicePeriodTo obj) GHC.Base.<> (("shipped" Data.Aeson.Types.ToJSON..= salesOrderItemShipped obj) GHC.Base.<> (("shippedQuantity" Data.Aeson.Types.ToJSON..= salesOrderItemShippedQuantity obj) GHC.Base.<> (("taxId" Data.Aeson.Types.ToJSON..= salesOrderItemTaxId obj) GHC.Base.<> (("taxName" Data.Aeson.Types.ToJSON..= salesOrderItemTaxName obj) GHC.Base.<> (("title" Data.Aeson.Types.ToJSON..= salesOrderItemTitle obj) GHC.Base.<> (("unitCost" Data.Aeson.Types.ToJSON..= salesOrderItemUnitCost obj) GHC.Base.<> (("unitCostInCompanyCurrency" Data.Aeson.Types.ToJSON..= salesOrderItemUnitCostInCompanyCurrency obj) GHC.Base.<> (("unitId" Data.Aeson.Types.ToJSON..= salesOrderItemUnitId obj) GHC.Base.<> (("unitName" Data.Aeson.Types.ToJSON..= salesOrderItemUnitName obj) GHC.Base.<> (("unitPrice" Data.Aeson.Types.ToJSON..= salesOrderItemUnitPrice obj) GHC.Base.<> (("unitPriceInCompanyCurrency" Data.Aeson.Types.ToJSON..= salesOrderItemUnitPriceInCompanyCurrency obj) GHC.Base.<> (("version" Data.Aeson.Types.ToJSON..= salesOrderItemVersion obj) GHC.Base.<> (("withdrawalBatchNumber" Data.Aeson.Types.ToJSON..= salesOrderItemWithdrawalBatchNumber obj) GHC.Base.<> (("withdrawalSerialNumbers" Data.Aeson.Types.ToJSON..= salesOrderItemWithdrawalSerialNumbers obj) GHC.Base.<> ("withdrawalWarehouseLevelId" Data.Aeson.Types.ToJSON..= salesOrderItemWithdrawalWarehouseLevelId obj))))))))))))))))))))))))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON SalesOrderItem
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SalesOrderItem" (\obj -> (((((((((((((((((((((((((((((((((((((((((((GHC.Base.pure SalesOrderItem GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "addPageBreakBefore")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "articleId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "articleNumber")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "createdDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customAttributes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "discountPercentage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ecommerceOrderItemId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "freeTextItem")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "grossAmount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "grossAmountInCompanyCurrency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "groupName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "invoicedQuantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lastModifiedDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "manualUnitCost")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "manualUnitPrice")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "netAmount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "netAmountForStatistics")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "netAmountForStatisticsInCompanyCurrency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "netAmountInCompanyCurrency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "note")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "parentItemId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "plannedShippingDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "positionNumber")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reductionAdditionItems")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "servicePeriodFrom")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "servicePeriodTo")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipped")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shippedQuantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "taxId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "taxName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "title")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unitCost")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unitCostInCompanyCurrency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unitId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unitName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unitPrice")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unitPriceInCompanyCurrency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "version")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "withdrawalBatchNumber")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "withdrawalSerialNumbers")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "withdrawalWarehouseLevelId"))
-- | Create a new 'SalesOrderItem' with all required fields.
mkSalesOrderItem :: [Data.Text.Internal.Text] -- ^ 'salesOrderItemWithdrawalSerialNumbers'
  -> SalesOrderItem
mkSalesOrderItem salesOrderItemWithdrawalSerialNumbers = SalesOrderItem{salesOrderItemAddPageBreakBefore = GHC.Maybe.Nothing,
                                                                        salesOrderItemArticleId = GHC.Maybe.Nothing,
                                                                        salesOrderItemArticleNumber = GHC.Maybe.Nothing,
                                                                        salesOrderItemCreatedDate = GHC.Maybe.Nothing,
                                                                        salesOrderItemCustomAttributes = GHC.Maybe.Nothing,
                                                                        salesOrderItemDescription = GHC.Maybe.Nothing,
                                                                        salesOrderItemDiscountPercentage = GHC.Maybe.Nothing,
                                                                        salesOrderItemEcommerceOrderItemId = GHC.Maybe.Nothing,
                                                                        salesOrderItemFreeTextItem = GHC.Maybe.Nothing,
                                                                        salesOrderItemGrossAmount = GHC.Maybe.Nothing,
                                                                        salesOrderItemGrossAmountInCompanyCurrency = GHC.Maybe.Nothing,
                                                                        salesOrderItemGroupName = GHC.Maybe.Nothing,
                                                                        salesOrderItemId = GHC.Maybe.Nothing,
                                                                        salesOrderItemInvoicedQuantity = GHC.Maybe.Nothing,
                                                                        salesOrderItemLastModifiedDate = GHC.Maybe.Nothing,
                                                                        salesOrderItemManualUnitCost = GHC.Maybe.Nothing,
                                                                        salesOrderItemManualUnitPrice = GHC.Maybe.Nothing,
                                                                        salesOrderItemNetAmount = GHC.Maybe.Nothing,
                                                                        salesOrderItemNetAmountForStatistics = GHC.Maybe.Nothing,
                                                                        salesOrderItemNetAmountForStatisticsInCompanyCurrency = GHC.Maybe.Nothing,
                                                                        salesOrderItemNetAmountInCompanyCurrency = GHC.Maybe.Nothing,
                                                                        salesOrderItemNote = GHC.Maybe.Nothing,
                                                                        salesOrderItemParentItemId = GHC.Maybe.Nothing,
                                                                        salesOrderItemPlannedShippingDate = GHC.Maybe.Nothing,
                                                                        salesOrderItemPositionNumber = GHC.Maybe.Nothing,
                                                                        salesOrderItemQuantity = GHC.Maybe.Nothing,
                                                                        salesOrderItemReductionAdditionItems = GHC.Maybe.Nothing,
                                                                        salesOrderItemServicePeriodFrom = GHC.Maybe.Nothing,
                                                                        salesOrderItemServicePeriodTo = GHC.Maybe.Nothing,
                                                                        salesOrderItemShipped = GHC.Maybe.Nothing,
                                                                        salesOrderItemShippedQuantity = GHC.Maybe.Nothing,
                                                                        salesOrderItemTaxId = GHC.Maybe.Nothing,
                                                                        salesOrderItemTaxName = GHC.Maybe.Nothing,
                                                                        salesOrderItemTitle = GHC.Maybe.Nothing,
                                                                        salesOrderItemUnitCost = GHC.Maybe.Nothing,
                                                                        salesOrderItemUnitCostInCompanyCurrency = GHC.Maybe.Nothing,
                                                                        salesOrderItemUnitId = GHC.Maybe.Nothing,
                                                                        salesOrderItemUnitName = GHC.Maybe.Nothing,
                                                                        salesOrderItemUnitPrice = GHC.Maybe.Nothing,
                                                                        salesOrderItemUnitPriceInCompanyCurrency = GHC.Maybe.Nothing,
                                                                        salesOrderItemVersion = GHC.Maybe.Nothing,
                                                                        salesOrderItemWithdrawalBatchNumber = GHC.Maybe.Nothing,
                                                                        salesOrderItemWithdrawalSerialNumbers = salesOrderItemWithdrawalSerialNumbers,
                                                                        salesOrderItemWithdrawalWarehouseLevelId = GHC.Maybe.Nothing}
