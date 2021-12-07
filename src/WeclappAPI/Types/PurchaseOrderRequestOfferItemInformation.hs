-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PurchaseOrderRequestOfferItemInformation
module WeclappAPI.Types.PurchaseOrderRequestOfferItemInformation where

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

-- | Defines the object schema located at @components.schemas.purchaseOrderRequestOfferItemInformation@ in the specification.
-- 
-- 
data PurchaseOrderRequestOfferItemInformation = PurchaseOrderRequestOfferItemInformation {
  -- | offerItemId
  purchaseOrderRequestOfferItemInformationOfferItemId :: (GHC.Maybe.Maybe GHC.Int.Int32)
  -- | quantity
  , purchaseOrderRequestOfferItemInformationQuantity :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | salesOrderItemId
  , purchaseOrderRequestOfferItemInformationSalesOrderItemId :: (GHC.Maybe.Maybe GHC.Int.Int32)
  -- | updateInformation
  , purchaseOrderRequestOfferItemInformationUpdateInformation :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PurchaseOrderRequestOfferItemInformation
    where toJSON obj = Data.Aeson.Types.Internal.object ("offerItemId" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferItemInformationOfferItemId obj : "quantity" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferItemInformationQuantity obj : "salesOrderItemId" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferItemInformationSalesOrderItemId obj : "updateInformation" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferItemInformationUpdateInformation obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("offerItemId" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferItemInformationOfferItemId obj) GHC.Base.<> (("quantity" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferItemInformationQuantity obj) GHC.Base.<> (("salesOrderItemId" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferItemInformationSalesOrderItemId obj) GHC.Base.<> ("updateInformation" Data.Aeson.Types.ToJSON..= purchaseOrderRequestOfferItemInformationUpdateInformation obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PurchaseOrderRequestOfferItemInformation
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PurchaseOrderRequestOfferItemInformation" (\obj -> (((GHC.Base.pure PurchaseOrderRequestOfferItemInformation GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "offerItemId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "salesOrderItemId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "updateInformation"))
-- | Create a new 'PurchaseOrderRequestOfferItemInformation' with all required fields.
mkPurchaseOrderRequestOfferItemInformation :: PurchaseOrderRequestOfferItemInformation
mkPurchaseOrderRequestOfferItemInformation = PurchaseOrderRequestOfferItemInformation{purchaseOrderRequestOfferItemInformationOfferItemId = GHC.Maybe.Nothing,
                                                                                      purchaseOrderRequestOfferItemInformationQuantity = GHC.Maybe.Nothing,
                                                                                      purchaseOrderRequestOfferItemInformationSalesOrderItemId = GHC.Maybe.Nothing,
                                                                                      purchaseOrderRequestOfferItemInformationUpdateInformation = GHC.Maybe.Nothing}