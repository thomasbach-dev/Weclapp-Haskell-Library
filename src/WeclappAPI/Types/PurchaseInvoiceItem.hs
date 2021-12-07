-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PurchaseInvoiceItem
module WeclappAPI.Types.PurchaseInvoiceItem where

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
import {-# SOURCE #-} WeclappAPI.Types.CostCenterWithDistributionPercentage
import {-# SOURCE #-} WeclappAPI.Types.CustomAttribute
import {-# SOURCE #-} WeclappAPI.Types.ReductionAdditionItem

-- | Defines the object schema located at @components.schemas.purchaseInvoiceItem@ in the specification.
-- 
-- 
data PurchaseInvoiceItem = PurchaseInvoiceItem {
  -- | accountId
  purchaseInvoiceItemAccountId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | accountNumber
  , purchaseInvoiceItemAccountNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | articleId
  , purchaseInvoiceItemArticleId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | articleNumber
  , purchaseInvoiceItemArticleNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | costCenterItems
  , purchaseInvoiceItemCostCenterItems :: (GHC.Maybe.Maybe ([CostCenterWithDistributionPercentage]))
  -- | createdDate
  , purchaseInvoiceItemCreatedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | creditedInvoiceItemId
  , purchaseInvoiceItemCreditedInvoiceItemId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | customAttributes
  , purchaseInvoiceItemCustomAttributes :: (GHC.Maybe.Maybe ([CustomAttribute]))
  -- | description
  , purchaseInvoiceItemDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | discountPercentage
  , purchaseInvoiceItemDiscountPercentage :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | grossAmount
  , purchaseInvoiceItemGrossAmount :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | grossAmountInCompanyCurrency
  , purchaseInvoiceItemGrossAmountInCompanyCurrency :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id
  , purchaseInvoiceItemId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | lastModifiedDate
  , purchaseInvoiceItemLastModifiedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | manualUnitPrice
  , purchaseInvoiceItemManualUnitPrice :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | netAmount
  , purchaseInvoiceItemNetAmount :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | netAmountForStatistics
  , purchaseInvoiceItemNetAmountForStatistics :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | netAmountForStatisticsInCompanyCurrency
  , purchaseInvoiceItemNetAmountForStatisticsInCompanyCurrency :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | netAmountInCompanyCurrency
  , purchaseInvoiceItemNetAmountInCompanyCurrency :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | note
  , purchaseInvoiceItemNote :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | parentItemId
  , purchaseInvoiceItemParentItemId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | positionNumber
  , purchaseInvoiceItemPositionNumber :: (GHC.Maybe.Maybe GHC.Int.Int32)
  -- | quantity
  , purchaseInvoiceItemQuantity :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | reductionAdditionItems
  , purchaseInvoiceItemReductionAdditionItems :: (GHC.Maybe.Maybe ([ReductionAdditionItem]))
  -- | supplierArticleId
  , purchaseInvoiceItemSupplierArticleId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | taxId
  , purchaseInvoiceItemTaxId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | taxName
  , purchaseInvoiceItemTaxName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | title
  , purchaseInvoiceItemTitle :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | unitId
  , purchaseInvoiceItemUnitId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | unitName
  , purchaseInvoiceItemUnitName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | unitPrice
  , purchaseInvoiceItemUnitPrice :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | unitPriceInCompanyCurrency
  , purchaseInvoiceItemUnitPriceInCompanyCurrency :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | version
  , purchaseInvoiceItemVersion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PurchaseInvoiceItem
    where toJSON obj = Data.Aeson.Types.Internal.object ("accountId" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemAccountId obj : "accountNumber" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemAccountNumber obj : "articleId" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemArticleId obj : "articleNumber" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemArticleNumber obj : "costCenterItems" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemCostCenterItems obj : "createdDate" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemCreatedDate obj : "creditedInvoiceItemId" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemCreditedInvoiceItemId obj : "customAttributes" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemCustomAttributes obj : "description" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemDescription obj : "discountPercentage" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemDiscountPercentage obj : "grossAmount" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemGrossAmount obj : "grossAmountInCompanyCurrency" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemGrossAmountInCompanyCurrency obj : "id" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemId obj : "lastModifiedDate" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemLastModifiedDate obj : "manualUnitPrice" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemManualUnitPrice obj : "netAmount" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemNetAmount obj : "netAmountForStatistics" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemNetAmountForStatistics obj : "netAmountForStatisticsInCompanyCurrency" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemNetAmountForStatisticsInCompanyCurrency obj : "netAmountInCompanyCurrency" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemNetAmountInCompanyCurrency obj : "note" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemNote obj : "parentItemId" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemParentItemId obj : "positionNumber" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemPositionNumber obj : "quantity" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemQuantity obj : "reductionAdditionItems" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemReductionAdditionItems obj : "supplierArticleId" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemSupplierArticleId obj : "taxId" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemTaxId obj : "taxName" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemTaxName obj : "title" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemTitle obj : "unitId" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemUnitId obj : "unitName" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemUnitName obj : "unitPrice" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemUnitPrice obj : "unitPriceInCompanyCurrency" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemUnitPriceInCompanyCurrency obj : "version" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemVersion obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("accountId" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemAccountId obj) GHC.Base.<> (("accountNumber" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemAccountNumber obj) GHC.Base.<> (("articleId" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemArticleId obj) GHC.Base.<> (("articleNumber" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemArticleNumber obj) GHC.Base.<> (("costCenterItems" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemCostCenterItems obj) GHC.Base.<> (("createdDate" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemCreatedDate obj) GHC.Base.<> (("creditedInvoiceItemId" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemCreditedInvoiceItemId obj) GHC.Base.<> (("customAttributes" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemCustomAttributes obj) GHC.Base.<> (("description" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemDescription obj) GHC.Base.<> (("discountPercentage" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemDiscountPercentage obj) GHC.Base.<> (("grossAmount" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemGrossAmount obj) GHC.Base.<> (("grossAmountInCompanyCurrency" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemGrossAmountInCompanyCurrency obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemId obj) GHC.Base.<> (("lastModifiedDate" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemLastModifiedDate obj) GHC.Base.<> (("manualUnitPrice" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemManualUnitPrice obj) GHC.Base.<> (("netAmount" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemNetAmount obj) GHC.Base.<> (("netAmountForStatistics" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemNetAmountForStatistics obj) GHC.Base.<> (("netAmountForStatisticsInCompanyCurrency" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemNetAmountForStatisticsInCompanyCurrency obj) GHC.Base.<> (("netAmountInCompanyCurrency" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemNetAmountInCompanyCurrency obj) GHC.Base.<> (("note" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemNote obj) GHC.Base.<> (("parentItemId" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemParentItemId obj) GHC.Base.<> (("positionNumber" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemPositionNumber obj) GHC.Base.<> (("quantity" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemQuantity obj) GHC.Base.<> (("reductionAdditionItems" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemReductionAdditionItems obj) GHC.Base.<> (("supplierArticleId" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemSupplierArticleId obj) GHC.Base.<> (("taxId" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemTaxId obj) GHC.Base.<> (("taxName" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemTaxName obj) GHC.Base.<> (("title" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemTitle obj) GHC.Base.<> (("unitId" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemUnitId obj) GHC.Base.<> (("unitName" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemUnitName obj) GHC.Base.<> (("unitPrice" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemUnitPrice obj) GHC.Base.<> (("unitPriceInCompanyCurrency" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemUnitPriceInCompanyCurrency obj) GHC.Base.<> ("version" Data.Aeson.Types.ToJSON..= purchaseInvoiceItemVersion obj)))))))))))))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PurchaseInvoiceItem
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PurchaseInvoiceItem" (\obj -> ((((((((((((((((((((((((((((((((GHC.Base.pure PurchaseInvoiceItem GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "accountId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "accountNumber")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "articleId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "articleNumber")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "costCenterItems")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "createdDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "creditedInvoiceItemId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customAttributes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "discountPercentage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "grossAmount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "grossAmountInCompanyCurrency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lastModifiedDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "manualUnitPrice")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "netAmount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "netAmountForStatistics")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "netAmountForStatisticsInCompanyCurrency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "netAmountInCompanyCurrency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "note")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "parentItemId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "positionNumber")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reductionAdditionItems")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "supplierArticleId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "taxId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "taxName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "title")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unitId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unitName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unitPrice")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unitPriceInCompanyCurrency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "version"))
-- | Create a new 'PurchaseInvoiceItem' with all required fields.
mkPurchaseInvoiceItem :: PurchaseInvoiceItem
mkPurchaseInvoiceItem = PurchaseInvoiceItem{purchaseInvoiceItemAccountId = GHC.Maybe.Nothing,
                                            purchaseInvoiceItemAccountNumber = GHC.Maybe.Nothing,
                                            purchaseInvoiceItemArticleId = GHC.Maybe.Nothing,
                                            purchaseInvoiceItemArticleNumber = GHC.Maybe.Nothing,
                                            purchaseInvoiceItemCostCenterItems = GHC.Maybe.Nothing,
                                            purchaseInvoiceItemCreatedDate = GHC.Maybe.Nothing,
                                            purchaseInvoiceItemCreditedInvoiceItemId = GHC.Maybe.Nothing,
                                            purchaseInvoiceItemCustomAttributes = GHC.Maybe.Nothing,
                                            purchaseInvoiceItemDescription = GHC.Maybe.Nothing,
                                            purchaseInvoiceItemDiscountPercentage = GHC.Maybe.Nothing,
                                            purchaseInvoiceItemGrossAmount = GHC.Maybe.Nothing,
                                            purchaseInvoiceItemGrossAmountInCompanyCurrency = GHC.Maybe.Nothing,
                                            purchaseInvoiceItemId = GHC.Maybe.Nothing,
                                            purchaseInvoiceItemLastModifiedDate = GHC.Maybe.Nothing,
                                            purchaseInvoiceItemManualUnitPrice = GHC.Maybe.Nothing,
                                            purchaseInvoiceItemNetAmount = GHC.Maybe.Nothing,
                                            purchaseInvoiceItemNetAmountForStatistics = GHC.Maybe.Nothing,
                                            purchaseInvoiceItemNetAmountForStatisticsInCompanyCurrency = GHC.Maybe.Nothing,
                                            purchaseInvoiceItemNetAmountInCompanyCurrency = GHC.Maybe.Nothing,
                                            purchaseInvoiceItemNote = GHC.Maybe.Nothing,
                                            purchaseInvoiceItemParentItemId = GHC.Maybe.Nothing,
                                            purchaseInvoiceItemPositionNumber = GHC.Maybe.Nothing,
                                            purchaseInvoiceItemQuantity = GHC.Maybe.Nothing,
                                            purchaseInvoiceItemReductionAdditionItems = GHC.Maybe.Nothing,
                                            purchaseInvoiceItemSupplierArticleId = GHC.Maybe.Nothing,
                                            purchaseInvoiceItemTaxId = GHC.Maybe.Nothing,
                                            purchaseInvoiceItemTaxName = GHC.Maybe.Nothing,
                                            purchaseInvoiceItemTitle = GHC.Maybe.Nothing,
                                            purchaseInvoiceItemUnitId = GHC.Maybe.Nothing,
                                            purchaseInvoiceItemUnitName = GHC.Maybe.Nothing,
                                            purchaseInvoiceItemUnitPrice = GHC.Maybe.Nothing,
                                            purchaseInvoiceItemUnitPriceInCompanyCurrency = GHC.Maybe.Nothing,
                                            purchaseInvoiceItemVersion = GHC.Maybe.Nothing}
