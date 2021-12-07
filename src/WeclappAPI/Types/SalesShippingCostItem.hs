-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema SalesShippingCostItem
module WeclappAPI.Types.SalesShippingCostItem where

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

-- | Defines the object schema located at @components.schemas.salesShippingCostItem@ in the specification.
-- 
-- 
data SalesShippingCostItem = SalesShippingCostItem {
  -- | articleId
  salesShippingCostItemArticleId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | articleNumber
  , salesShippingCostItemArticleNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | createdDate
  , salesShippingCostItemCreatedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | grossAmount
  , salesShippingCostItemGrossAmount :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | grossAmountInCompanyCurrency
  , salesShippingCostItemGrossAmountInCompanyCurrency :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id
  , salesShippingCostItemId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | lastModifiedDate
  , salesShippingCostItemLastModifiedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | manualUnitCost
  , salesShippingCostItemManualUnitCost :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | manualUnitPrice
  , salesShippingCostItemManualUnitPrice :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | netAmount
  , salesShippingCostItemNetAmount :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | netAmountInCompanyCurrency
  , salesShippingCostItemNetAmountInCompanyCurrency :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | taxId
  , salesShippingCostItemTaxId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | taxName
  , salesShippingCostItemTaxName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | unitCost
  , salesShippingCostItemUnitCost :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | unitCostInCompanyCurrency
  , salesShippingCostItemUnitCostInCompanyCurrency :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | unitPrice
  , salesShippingCostItemUnitPrice :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | unitPriceInCompanyCurrency
  , salesShippingCostItemUnitPriceInCompanyCurrency :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | version
  , salesShippingCostItemVersion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SalesShippingCostItem
    where toJSON obj = Data.Aeson.Types.Internal.object ("articleId" Data.Aeson.Types.ToJSON..= salesShippingCostItemArticleId obj : "articleNumber" Data.Aeson.Types.ToJSON..= salesShippingCostItemArticleNumber obj : "createdDate" Data.Aeson.Types.ToJSON..= salesShippingCostItemCreatedDate obj : "grossAmount" Data.Aeson.Types.ToJSON..= salesShippingCostItemGrossAmount obj : "grossAmountInCompanyCurrency" Data.Aeson.Types.ToJSON..= salesShippingCostItemGrossAmountInCompanyCurrency obj : "id" Data.Aeson.Types.ToJSON..= salesShippingCostItemId obj : "lastModifiedDate" Data.Aeson.Types.ToJSON..= salesShippingCostItemLastModifiedDate obj : "manualUnitCost" Data.Aeson.Types.ToJSON..= salesShippingCostItemManualUnitCost obj : "manualUnitPrice" Data.Aeson.Types.ToJSON..= salesShippingCostItemManualUnitPrice obj : "netAmount" Data.Aeson.Types.ToJSON..= salesShippingCostItemNetAmount obj : "netAmountInCompanyCurrency" Data.Aeson.Types.ToJSON..= salesShippingCostItemNetAmountInCompanyCurrency obj : "taxId" Data.Aeson.Types.ToJSON..= salesShippingCostItemTaxId obj : "taxName" Data.Aeson.Types.ToJSON..= salesShippingCostItemTaxName obj : "unitCost" Data.Aeson.Types.ToJSON..= salesShippingCostItemUnitCost obj : "unitCostInCompanyCurrency" Data.Aeson.Types.ToJSON..= salesShippingCostItemUnitCostInCompanyCurrency obj : "unitPrice" Data.Aeson.Types.ToJSON..= salesShippingCostItemUnitPrice obj : "unitPriceInCompanyCurrency" Data.Aeson.Types.ToJSON..= salesShippingCostItemUnitPriceInCompanyCurrency obj : "version" Data.Aeson.Types.ToJSON..= salesShippingCostItemVersion obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("articleId" Data.Aeson.Types.ToJSON..= salesShippingCostItemArticleId obj) GHC.Base.<> (("articleNumber" Data.Aeson.Types.ToJSON..= salesShippingCostItemArticleNumber obj) GHC.Base.<> (("createdDate" Data.Aeson.Types.ToJSON..= salesShippingCostItemCreatedDate obj) GHC.Base.<> (("grossAmount" Data.Aeson.Types.ToJSON..= salesShippingCostItemGrossAmount obj) GHC.Base.<> (("grossAmountInCompanyCurrency" Data.Aeson.Types.ToJSON..= salesShippingCostItemGrossAmountInCompanyCurrency obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= salesShippingCostItemId obj) GHC.Base.<> (("lastModifiedDate" Data.Aeson.Types.ToJSON..= salesShippingCostItemLastModifiedDate obj) GHC.Base.<> (("manualUnitCost" Data.Aeson.Types.ToJSON..= salesShippingCostItemManualUnitCost obj) GHC.Base.<> (("manualUnitPrice" Data.Aeson.Types.ToJSON..= salesShippingCostItemManualUnitPrice obj) GHC.Base.<> (("netAmount" Data.Aeson.Types.ToJSON..= salesShippingCostItemNetAmount obj) GHC.Base.<> (("netAmountInCompanyCurrency" Data.Aeson.Types.ToJSON..= salesShippingCostItemNetAmountInCompanyCurrency obj) GHC.Base.<> (("taxId" Data.Aeson.Types.ToJSON..= salesShippingCostItemTaxId obj) GHC.Base.<> (("taxName" Data.Aeson.Types.ToJSON..= salesShippingCostItemTaxName obj) GHC.Base.<> (("unitCost" Data.Aeson.Types.ToJSON..= salesShippingCostItemUnitCost obj) GHC.Base.<> (("unitCostInCompanyCurrency" Data.Aeson.Types.ToJSON..= salesShippingCostItemUnitCostInCompanyCurrency obj) GHC.Base.<> (("unitPrice" Data.Aeson.Types.ToJSON..= salesShippingCostItemUnitPrice obj) GHC.Base.<> (("unitPriceInCompanyCurrency" Data.Aeson.Types.ToJSON..= salesShippingCostItemUnitPriceInCompanyCurrency obj) GHC.Base.<> ("version" Data.Aeson.Types.ToJSON..= salesShippingCostItemVersion obj))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON SalesShippingCostItem
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SalesShippingCostItem" (\obj -> (((((((((((((((((GHC.Base.pure SalesShippingCostItem GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "articleId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "articleNumber")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "createdDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "grossAmount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "grossAmountInCompanyCurrency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lastModifiedDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "manualUnitCost")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "manualUnitPrice")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "netAmount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "netAmountInCompanyCurrency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "taxId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "taxName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unitCost")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unitCostInCompanyCurrency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unitPrice")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unitPriceInCompanyCurrency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "version"))
-- | Create a new 'SalesShippingCostItem' with all required fields.
mkSalesShippingCostItem :: SalesShippingCostItem
mkSalesShippingCostItem = SalesShippingCostItem{salesShippingCostItemArticleId = GHC.Maybe.Nothing,
                                                salesShippingCostItemArticleNumber = GHC.Maybe.Nothing,
                                                salesShippingCostItemCreatedDate = GHC.Maybe.Nothing,
                                                salesShippingCostItemGrossAmount = GHC.Maybe.Nothing,
                                                salesShippingCostItemGrossAmountInCompanyCurrency = GHC.Maybe.Nothing,
                                                salesShippingCostItemId = GHC.Maybe.Nothing,
                                                salesShippingCostItemLastModifiedDate = GHC.Maybe.Nothing,
                                                salesShippingCostItemManualUnitCost = GHC.Maybe.Nothing,
                                                salesShippingCostItemManualUnitPrice = GHC.Maybe.Nothing,
                                                salesShippingCostItemNetAmount = GHC.Maybe.Nothing,
                                                salesShippingCostItemNetAmountInCompanyCurrency = GHC.Maybe.Nothing,
                                                salesShippingCostItemTaxId = GHC.Maybe.Nothing,
                                                salesShippingCostItemTaxName = GHC.Maybe.Nothing,
                                                salesShippingCostItemUnitCost = GHC.Maybe.Nothing,
                                                salesShippingCostItemUnitCostInCompanyCurrency = GHC.Maybe.Nothing,
                                                salesShippingCostItemUnitPrice = GHC.Maybe.Nothing,
                                                salesShippingCostItemUnitPriceInCompanyCurrency = GHC.Maybe.Nothing,
                                                salesShippingCostItemVersion = GHC.Maybe.Nothing}
