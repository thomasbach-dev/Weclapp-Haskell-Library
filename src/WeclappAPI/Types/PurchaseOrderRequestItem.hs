-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PurchaseOrderRequestItem
module WeclappAPI.Types.PurchaseOrderRequestItem where

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

-- | Defines the object schema located at @components.schemas.purchaseOrderRequestItem@ in the specification.
-- 
-- 
data PurchaseOrderRequestItem = PurchaseOrderRequestItem {
  -- | articleId
  purchaseOrderRequestItemArticleId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | articleNumber
  , purchaseOrderRequestItemArticleNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | createdDate
  , purchaseOrderRequestItemCreatedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | customAttributes
  , purchaseOrderRequestItemCustomAttributes :: (GHC.Maybe.Maybe ([CustomAttribute]))
  -- | deleted
  , purchaseOrderRequestItemDeleted :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | description
  , purchaseOrderRequestItemDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id
  , purchaseOrderRequestItemId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | lastModifiedDate
  , purchaseOrderRequestItemLastModifiedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | note
  , purchaseOrderRequestItemNote :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | parentItemId
  , purchaseOrderRequestItemParentItemId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | positionNumber
  , purchaseOrderRequestItemPositionNumber :: (GHC.Maybe.Maybe GHC.Int.Int32)
  -- | priceScaleType
  , purchaseOrderRequestItemPriceScaleType :: (GHC.Maybe.Maybe PurchaseOrderRequestItemPriceScaleType')
  -- | priceScaleValues
  , purchaseOrderRequestItemPriceScaleValues :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | quantity
  , purchaseOrderRequestItemQuantity :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | title
  , purchaseOrderRequestItemTitle :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | unitId
  , purchaseOrderRequestItemUnitId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | unitName
  , purchaseOrderRequestItemUnitName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | version
  , purchaseOrderRequestItemVersion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PurchaseOrderRequestItem
    where toJSON obj = Data.Aeson.Types.Internal.object ("articleId" Data.Aeson.Types.ToJSON..= purchaseOrderRequestItemArticleId obj : "articleNumber" Data.Aeson.Types.ToJSON..= purchaseOrderRequestItemArticleNumber obj : "createdDate" Data.Aeson.Types.ToJSON..= purchaseOrderRequestItemCreatedDate obj : "customAttributes" Data.Aeson.Types.ToJSON..= purchaseOrderRequestItemCustomAttributes obj : "deleted" Data.Aeson.Types.ToJSON..= purchaseOrderRequestItemDeleted obj : "description" Data.Aeson.Types.ToJSON..= purchaseOrderRequestItemDescription obj : "id" Data.Aeson.Types.ToJSON..= purchaseOrderRequestItemId obj : "lastModifiedDate" Data.Aeson.Types.ToJSON..= purchaseOrderRequestItemLastModifiedDate obj : "note" Data.Aeson.Types.ToJSON..= purchaseOrderRequestItemNote obj : "parentItemId" Data.Aeson.Types.ToJSON..= purchaseOrderRequestItemParentItemId obj : "positionNumber" Data.Aeson.Types.ToJSON..= purchaseOrderRequestItemPositionNumber obj : "priceScaleType" Data.Aeson.Types.ToJSON..= purchaseOrderRequestItemPriceScaleType obj : "priceScaleValues" Data.Aeson.Types.ToJSON..= purchaseOrderRequestItemPriceScaleValues obj : "quantity" Data.Aeson.Types.ToJSON..= purchaseOrderRequestItemQuantity obj : "title" Data.Aeson.Types.ToJSON..= purchaseOrderRequestItemTitle obj : "unitId" Data.Aeson.Types.ToJSON..= purchaseOrderRequestItemUnitId obj : "unitName" Data.Aeson.Types.ToJSON..= purchaseOrderRequestItemUnitName obj : "version" Data.Aeson.Types.ToJSON..= purchaseOrderRequestItemVersion obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("articleId" Data.Aeson.Types.ToJSON..= purchaseOrderRequestItemArticleId obj) GHC.Base.<> (("articleNumber" Data.Aeson.Types.ToJSON..= purchaseOrderRequestItemArticleNumber obj) GHC.Base.<> (("createdDate" Data.Aeson.Types.ToJSON..= purchaseOrderRequestItemCreatedDate obj) GHC.Base.<> (("customAttributes" Data.Aeson.Types.ToJSON..= purchaseOrderRequestItemCustomAttributes obj) GHC.Base.<> (("deleted" Data.Aeson.Types.ToJSON..= purchaseOrderRequestItemDeleted obj) GHC.Base.<> (("description" Data.Aeson.Types.ToJSON..= purchaseOrderRequestItemDescription obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= purchaseOrderRequestItemId obj) GHC.Base.<> (("lastModifiedDate" Data.Aeson.Types.ToJSON..= purchaseOrderRequestItemLastModifiedDate obj) GHC.Base.<> (("note" Data.Aeson.Types.ToJSON..= purchaseOrderRequestItemNote obj) GHC.Base.<> (("parentItemId" Data.Aeson.Types.ToJSON..= purchaseOrderRequestItemParentItemId obj) GHC.Base.<> (("positionNumber" Data.Aeson.Types.ToJSON..= purchaseOrderRequestItemPositionNumber obj) GHC.Base.<> (("priceScaleType" Data.Aeson.Types.ToJSON..= purchaseOrderRequestItemPriceScaleType obj) GHC.Base.<> (("priceScaleValues" Data.Aeson.Types.ToJSON..= purchaseOrderRequestItemPriceScaleValues obj) GHC.Base.<> (("quantity" Data.Aeson.Types.ToJSON..= purchaseOrderRequestItemQuantity obj) GHC.Base.<> (("title" Data.Aeson.Types.ToJSON..= purchaseOrderRequestItemTitle obj) GHC.Base.<> (("unitId" Data.Aeson.Types.ToJSON..= purchaseOrderRequestItemUnitId obj) GHC.Base.<> (("unitName" Data.Aeson.Types.ToJSON..= purchaseOrderRequestItemUnitName obj) GHC.Base.<> ("version" Data.Aeson.Types.ToJSON..= purchaseOrderRequestItemVersion obj))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PurchaseOrderRequestItem
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PurchaseOrderRequestItem" (\obj -> (((((((((((((((((GHC.Base.pure PurchaseOrderRequestItem GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "articleId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "articleNumber")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "createdDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customAttributes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "deleted")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lastModifiedDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "note")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "parentItemId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "positionNumber")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "priceScaleType")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "priceScaleValues")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "title")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unitId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unitName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "version"))
-- | Create a new 'PurchaseOrderRequestItem' with all required fields.
mkPurchaseOrderRequestItem :: PurchaseOrderRequestItem
mkPurchaseOrderRequestItem = PurchaseOrderRequestItem{purchaseOrderRequestItemArticleId = GHC.Maybe.Nothing,
                                                      purchaseOrderRequestItemArticleNumber = GHC.Maybe.Nothing,
                                                      purchaseOrderRequestItemCreatedDate = GHC.Maybe.Nothing,
                                                      purchaseOrderRequestItemCustomAttributes = GHC.Maybe.Nothing,
                                                      purchaseOrderRequestItemDeleted = GHC.Maybe.Nothing,
                                                      purchaseOrderRequestItemDescription = GHC.Maybe.Nothing,
                                                      purchaseOrderRequestItemId = GHC.Maybe.Nothing,
                                                      purchaseOrderRequestItemLastModifiedDate = GHC.Maybe.Nothing,
                                                      purchaseOrderRequestItemNote = GHC.Maybe.Nothing,
                                                      purchaseOrderRequestItemParentItemId = GHC.Maybe.Nothing,
                                                      purchaseOrderRequestItemPositionNumber = GHC.Maybe.Nothing,
                                                      purchaseOrderRequestItemPriceScaleType = GHC.Maybe.Nothing,
                                                      purchaseOrderRequestItemPriceScaleValues = GHC.Maybe.Nothing,
                                                      purchaseOrderRequestItemQuantity = GHC.Maybe.Nothing,
                                                      purchaseOrderRequestItemTitle = GHC.Maybe.Nothing,
                                                      purchaseOrderRequestItemUnitId = GHC.Maybe.Nothing,
                                                      purchaseOrderRequestItemUnitName = GHC.Maybe.Nothing,
                                                      purchaseOrderRequestItemVersion = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.purchaseOrderRequestItem.properties.priceScaleType@ in the specification.
-- 
-- 
data PurchaseOrderRequestItemPriceScaleType' =
   PurchaseOrderRequestItemPriceScaleType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PurchaseOrderRequestItemPriceScaleType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PurchaseOrderRequestItemPriceScaleType'EnumSCALE_FROM -- ^ Represents the JSON value @"SCALE_FROM"@
  | PurchaseOrderRequestItemPriceScaleType'EnumSCALE_TO -- ^ Represents the JSON value @"SCALE_TO"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PurchaseOrderRequestItemPriceScaleType'
    where toJSON (PurchaseOrderRequestItemPriceScaleType'Other val) = val
          toJSON (PurchaseOrderRequestItemPriceScaleType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (PurchaseOrderRequestItemPriceScaleType'EnumSCALE_FROM) = "SCALE_FROM"
          toJSON (PurchaseOrderRequestItemPriceScaleType'EnumSCALE_TO) = "SCALE_TO"
instance Data.Aeson.Types.FromJSON.FromJSON PurchaseOrderRequestItemPriceScaleType'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "SCALE_FROM" -> PurchaseOrderRequestItemPriceScaleType'EnumSCALE_FROM
                                            | val GHC.Classes.== "SCALE_TO" -> PurchaseOrderRequestItemPriceScaleType'EnumSCALE_TO
                                            | GHC.Base.otherwise -> PurchaseOrderRequestItemPriceScaleType'Other val)
