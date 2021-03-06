-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema Supplier
module WeclappAPI.Types.Supplier where

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
import {-# SOURCE #-} WeclappAPI.Types.Address
import {-# SOURCE #-} WeclappAPI.Types.Contact
import {-# SOURCE #-} WeclappAPI.Types.CustomAttribute
import {-# SOURCE #-} WeclappAPI.Types.OnlineAccount
import {-# SOURCE #-} WeclappAPI.Types.PartyBankAccount

-- | Defines the object schema located at @components.schemas.supplier@ in the specification.
-- 
-- 
data Supplier = Supplier {
  -- | addresses
  supplierAddresses :: (GHC.Maybe.Maybe ([Address]))
  -- | bankAccounts
  , supplierBankAccounts :: (GHC.Maybe.Maybe ([PartyBankAccount]))
  -- | birthDate
  , supplierBirthDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | commercialLanguageId
  , supplierCommercialLanguageId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | company
  , supplierCompany :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | company2
  , supplierCompany2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | contacts
  , supplierContacts :: (GHC.Maybe.Maybe ([Contact]))
  -- | createdDate
  , supplierCreatedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | currencyId
  , supplierCurrencyId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | currencyName
  , supplierCurrencyName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | customAttributes
  , supplierCustomAttributes :: (GHC.Maybe.Maybe ([CustomAttribute]))
  -- | customerNumberAtSupplier
  , supplierCustomerNumberAtSupplier :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | deliveryAddressId
  , supplierDeliveryAddressId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | description
  , supplierDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | email
  , supplierEmail :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | fax
  , supplierFax :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | firstName
  , supplierFirstName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id
  , supplierId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | invoiceAddressId
  , supplierInvoiceAddressId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | lastModifiedDate
  , supplierLastModifiedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | lastName
  , supplierLastName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | middleName
  , supplierMiddleName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | mobilePhone1
  , supplierMobilePhone1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | onlineAccounts
  , supplierOnlineAccounts :: (GHC.Maybe.Maybe ([OnlineAccount]))
  -- | orderBlock
  , supplierOrderBlock :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | partyType
  , supplierPartyType :: SupplierPartyType'
  -- | paymentMethodId
  , supplierPaymentMethodId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | paymentMethodName
  , supplierPaymentMethodName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | personCompany
  , supplierPersonCompany :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | personDepartment
  , supplierPersonDepartment :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | personRole
  , supplierPersonRole :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | phone
  , supplierPhone :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | primaryAddressId
  , supplierPrimaryAddressId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | primaryContactId
  , supplierPrimaryContactId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | referenceNumber
  , supplierReferenceNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | salutation
  , supplierSalutation :: (GHC.Maybe.Maybe SupplierSalutation')
  -- | sectorId
  , supplierSectorId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | sectorName
  , supplierSectorName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | shipmentMethodId
  , supplierShipmentMethodId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | shipmentMethodName
  , supplierShipmentMethodName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | supplierNumber
  , supplierSupplierNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | supplierRatingId
  , supplierSupplierRatingId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | supplierRatingName
  , supplierSupplierRatingName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | tags
  , supplierTags :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | termOfPaymentId
  , supplierTermOfPaymentId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | termOfPaymentName
  , supplierTermOfPaymentName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | title
  , supplierTitle :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | titleId
  , supplierTitleId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | vatRegistrationNumber
  , supplierVatRegistrationNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | version
  , supplierVersion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | website
  , supplierWebsite :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Supplier
    where toJSON obj = Data.Aeson.Types.Internal.object ("addresses" Data.Aeson.Types.ToJSON..= supplierAddresses obj : "bankAccounts" Data.Aeson.Types.ToJSON..= supplierBankAccounts obj : "birthDate" Data.Aeson.Types.ToJSON..= supplierBirthDate obj : "commercialLanguageId" Data.Aeson.Types.ToJSON..= supplierCommercialLanguageId obj : "company" Data.Aeson.Types.ToJSON..= supplierCompany obj : "company2" Data.Aeson.Types.ToJSON..= supplierCompany2 obj : "contacts" Data.Aeson.Types.ToJSON..= supplierContacts obj : "createdDate" Data.Aeson.Types.ToJSON..= supplierCreatedDate obj : "currencyId" Data.Aeson.Types.ToJSON..= supplierCurrencyId obj : "currencyName" Data.Aeson.Types.ToJSON..= supplierCurrencyName obj : "customAttributes" Data.Aeson.Types.ToJSON..= supplierCustomAttributes obj : "customerNumberAtSupplier" Data.Aeson.Types.ToJSON..= supplierCustomerNumberAtSupplier obj : "deliveryAddressId" Data.Aeson.Types.ToJSON..= supplierDeliveryAddressId obj : "description" Data.Aeson.Types.ToJSON..= supplierDescription obj : "email" Data.Aeson.Types.ToJSON..= supplierEmail obj : "fax" Data.Aeson.Types.ToJSON..= supplierFax obj : "firstName" Data.Aeson.Types.ToJSON..= supplierFirstName obj : "id" Data.Aeson.Types.ToJSON..= supplierId obj : "invoiceAddressId" Data.Aeson.Types.ToJSON..= supplierInvoiceAddressId obj : "lastModifiedDate" Data.Aeson.Types.ToJSON..= supplierLastModifiedDate obj : "lastName" Data.Aeson.Types.ToJSON..= supplierLastName obj : "middleName" Data.Aeson.Types.ToJSON..= supplierMiddleName obj : "mobilePhone1" Data.Aeson.Types.ToJSON..= supplierMobilePhone1 obj : "onlineAccounts" Data.Aeson.Types.ToJSON..= supplierOnlineAccounts obj : "orderBlock" Data.Aeson.Types.ToJSON..= supplierOrderBlock obj : "partyType" Data.Aeson.Types.ToJSON..= supplierPartyType obj : "paymentMethodId" Data.Aeson.Types.ToJSON..= supplierPaymentMethodId obj : "paymentMethodName" Data.Aeson.Types.ToJSON..= supplierPaymentMethodName obj : "personCompany" Data.Aeson.Types.ToJSON..= supplierPersonCompany obj : "personDepartment" Data.Aeson.Types.ToJSON..= supplierPersonDepartment obj : "personRole" Data.Aeson.Types.ToJSON..= supplierPersonRole obj : "phone" Data.Aeson.Types.ToJSON..= supplierPhone obj : "primaryAddressId" Data.Aeson.Types.ToJSON..= supplierPrimaryAddressId obj : "primaryContactId" Data.Aeson.Types.ToJSON..= supplierPrimaryContactId obj : "referenceNumber" Data.Aeson.Types.ToJSON..= supplierReferenceNumber obj : "salutation" Data.Aeson.Types.ToJSON..= supplierSalutation obj : "sectorId" Data.Aeson.Types.ToJSON..= supplierSectorId obj : "sectorName" Data.Aeson.Types.ToJSON..= supplierSectorName obj : "shipmentMethodId" Data.Aeson.Types.ToJSON..= supplierShipmentMethodId obj : "shipmentMethodName" Data.Aeson.Types.ToJSON..= supplierShipmentMethodName obj : "supplierNumber" Data.Aeson.Types.ToJSON..= supplierSupplierNumber obj : "supplierRatingId" Data.Aeson.Types.ToJSON..= supplierSupplierRatingId obj : "supplierRatingName" Data.Aeson.Types.ToJSON..= supplierSupplierRatingName obj : "tags" Data.Aeson.Types.ToJSON..= supplierTags obj : "termOfPaymentId" Data.Aeson.Types.ToJSON..= supplierTermOfPaymentId obj : "termOfPaymentName" Data.Aeson.Types.ToJSON..= supplierTermOfPaymentName obj : "title" Data.Aeson.Types.ToJSON..= supplierTitle obj : "titleId" Data.Aeson.Types.ToJSON..= supplierTitleId obj : "vatRegistrationNumber" Data.Aeson.Types.ToJSON..= supplierVatRegistrationNumber obj : "version" Data.Aeson.Types.ToJSON..= supplierVersion obj : "website" Data.Aeson.Types.ToJSON..= supplierWebsite obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("addresses" Data.Aeson.Types.ToJSON..= supplierAddresses obj) GHC.Base.<> (("bankAccounts" Data.Aeson.Types.ToJSON..= supplierBankAccounts obj) GHC.Base.<> (("birthDate" Data.Aeson.Types.ToJSON..= supplierBirthDate obj) GHC.Base.<> (("commercialLanguageId" Data.Aeson.Types.ToJSON..= supplierCommercialLanguageId obj) GHC.Base.<> (("company" Data.Aeson.Types.ToJSON..= supplierCompany obj) GHC.Base.<> (("company2" Data.Aeson.Types.ToJSON..= supplierCompany2 obj) GHC.Base.<> (("contacts" Data.Aeson.Types.ToJSON..= supplierContacts obj) GHC.Base.<> (("createdDate" Data.Aeson.Types.ToJSON..= supplierCreatedDate obj) GHC.Base.<> (("currencyId" Data.Aeson.Types.ToJSON..= supplierCurrencyId obj) GHC.Base.<> (("currencyName" Data.Aeson.Types.ToJSON..= supplierCurrencyName obj) GHC.Base.<> (("customAttributes" Data.Aeson.Types.ToJSON..= supplierCustomAttributes obj) GHC.Base.<> (("customerNumberAtSupplier" Data.Aeson.Types.ToJSON..= supplierCustomerNumberAtSupplier obj) GHC.Base.<> (("deliveryAddressId" Data.Aeson.Types.ToJSON..= supplierDeliveryAddressId obj) GHC.Base.<> (("description" Data.Aeson.Types.ToJSON..= supplierDescription obj) GHC.Base.<> (("email" Data.Aeson.Types.ToJSON..= supplierEmail obj) GHC.Base.<> (("fax" Data.Aeson.Types.ToJSON..= supplierFax obj) GHC.Base.<> (("firstName" Data.Aeson.Types.ToJSON..= supplierFirstName obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= supplierId obj) GHC.Base.<> (("invoiceAddressId" Data.Aeson.Types.ToJSON..= supplierInvoiceAddressId obj) GHC.Base.<> (("lastModifiedDate" Data.Aeson.Types.ToJSON..= supplierLastModifiedDate obj) GHC.Base.<> (("lastName" Data.Aeson.Types.ToJSON..= supplierLastName obj) GHC.Base.<> (("middleName" Data.Aeson.Types.ToJSON..= supplierMiddleName obj) GHC.Base.<> (("mobilePhone1" Data.Aeson.Types.ToJSON..= supplierMobilePhone1 obj) GHC.Base.<> (("onlineAccounts" Data.Aeson.Types.ToJSON..= supplierOnlineAccounts obj) GHC.Base.<> (("orderBlock" Data.Aeson.Types.ToJSON..= supplierOrderBlock obj) GHC.Base.<> (("partyType" Data.Aeson.Types.ToJSON..= supplierPartyType obj) GHC.Base.<> (("paymentMethodId" Data.Aeson.Types.ToJSON..= supplierPaymentMethodId obj) GHC.Base.<> (("paymentMethodName" Data.Aeson.Types.ToJSON..= supplierPaymentMethodName obj) GHC.Base.<> (("personCompany" Data.Aeson.Types.ToJSON..= supplierPersonCompany obj) GHC.Base.<> (("personDepartment" Data.Aeson.Types.ToJSON..= supplierPersonDepartment obj) GHC.Base.<> (("personRole" Data.Aeson.Types.ToJSON..= supplierPersonRole obj) GHC.Base.<> (("phone" Data.Aeson.Types.ToJSON..= supplierPhone obj) GHC.Base.<> (("primaryAddressId" Data.Aeson.Types.ToJSON..= supplierPrimaryAddressId obj) GHC.Base.<> (("primaryContactId" Data.Aeson.Types.ToJSON..= supplierPrimaryContactId obj) GHC.Base.<> (("referenceNumber" Data.Aeson.Types.ToJSON..= supplierReferenceNumber obj) GHC.Base.<> (("salutation" Data.Aeson.Types.ToJSON..= supplierSalutation obj) GHC.Base.<> (("sectorId" Data.Aeson.Types.ToJSON..= supplierSectorId obj) GHC.Base.<> (("sectorName" Data.Aeson.Types.ToJSON..= supplierSectorName obj) GHC.Base.<> (("shipmentMethodId" Data.Aeson.Types.ToJSON..= supplierShipmentMethodId obj) GHC.Base.<> (("shipmentMethodName" Data.Aeson.Types.ToJSON..= supplierShipmentMethodName obj) GHC.Base.<> (("supplierNumber" Data.Aeson.Types.ToJSON..= supplierSupplierNumber obj) GHC.Base.<> (("supplierRatingId" Data.Aeson.Types.ToJSON..= supplierSupplierRatingId obj) GHC.Base.<> (("supplierRatingName" Data.Aeson.Types.ToJSON..= supplierSupplierRatingName obj) GHC.Base.<> (("tags" Data.Aeson.Types.ToJSON..= supplierTags obj) GHC.Base.<> (("termOfPaymentId" Data.Aeson.Types.ToJSON..= supplierTermOfPaymentId obj) GHC.Base.<> (("termOfPaymentName" Data.Aeson.Types.ToJSON..= supplierTermOfPaymentName obj) GHC.Base.<> (("title" Data.Aeson.Types.ToJSON..= supplierTitle obj) GHC.Base.<> (("titleId" Data.Aeson.Types.ToJSON..= supplierTitleId obj) GHC.Base.<> (("vatRegistrationNumber" Data.Aeson.Types.ToJSON..= supplierVatRegistrationNumber obj) GHC.Base.<> (("version" Data.Aeson.Types.ToJSON..= supplierVersion obj) GHC.Base.<> ("website" Data.Aeson.Types.ToJSON..= supplierWebsite obj)))))))))))))))))))))))))))))))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON Supplier
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Supplier" (\obj -> ((((((((((((((((((((((((((((((((((((((((((((((((((GHC.Base.pure Supplier GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "addresses")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bankAccounts")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "birthDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "commercialLanguageId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "company")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "company2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "contacts")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "createdDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currencyId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currencyName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customAttributes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customerNumberAtSupplier")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "deliveryAddressId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "fax")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "firstName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "invoiceAddressId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lastModifiedDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lastName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "middleName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mobilePhone1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "onlineAccounts")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "orderBlock")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "partyType")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "paymentMethodId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "paymentMethodName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "personCompany")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "personDepartment")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "personRole")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "primaryAddressId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "primaryContactId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "referenceNumber")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "salutation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sectorId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sectorName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipmentMethodId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipmentMethodName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "supplierNumber")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "supplierRatingId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "supplierRatingName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tags")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "termOfPaymentId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "termOfPaymentName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "title")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "titleId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "vatRegistrationNumber")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "version")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "website"))
-- | Create a new 'Supplier' with all required fields.
mkSupplier :: SupplierPartyType' -- ^ 'supplierPartyType'
  -> Supplier
mkSupplier supplierPartyType = Supplier{supplierAddresses = GHC.Maybe.Nothing,
                                        supplierBankAccounts = GHC.Maybe.Nothing,
                                        supplierBirthDate = GHC.Maybe.Nothing,
                                        supplierCommercialLanguageId = GHC.Maybe.Nothing,
                                        supplierCompany = GHC.Maybe.Nothing,
                                        supplierCompany2 = GHC.Maybe.Nothing,
                                        supplierContacts = GHC.Maybe.Nothing,
                                        supplierCreatedDate = GHC.Maybe.Nothing,
                                        supplierCurrencyId = GHC.Maybe.Nothing,
                                        supplierCurrencyName = GHC.Maybe.Nothing,
                                        supplierCustomAttributes = GHC.Maybe.Nothing,
                                        supplierCustomerNumberAtSupplier = GHC.Maybe.Nothing,
                                        supplierDeliveryAddressId = GHC.Maybe.Nothing,
                                        supplierDescription = GHC.Maybe.Nothing,
                                        supplierEmail = GHC.Maybe.Nothing,
                                        supplierFax = GHC.Maybe.Nothing,
                                        supplierFirstName = GHC.Maybe.Nothing,
                                        supplierId = GHC.Maybe.Nothing,
                                        supplierInvoiceAddressId = GHC.Maybe.Nothing,
                                        supplierLastModifiedDate = GHC.Maybe.Nothing,
                                        supplierLastName = GHC.Maybe.Nothing,
                                        supplierMiddleName = GHC.Maybe.Nothing,
                                        supplierMobilePhone1 = GHC.Maybe.Nothing,
                                        supplierOnlineAccounts = GHC.Maybe.Nothing,
                                        supplierOrderBlock = GHC.Maybe.Nothing,
                                        supplierPartyType = supplierPartyType,
                                        supplierPaymentMethodId = GHC.Maybe.Nothing,
                                        supplierPaymentMethodName = GHC.Maybe.Nothing,
                                        supplierPersonCompany = GHC.Maybe.Nothing,
                                        supplierPersonDepartment = GHC.Maybe.Nothing,
                                        supplierPersonRole = GHC.Maybe.Nothing,
                                        supplierPhone = GHC.Maybe.Nothing,
                                        supplierPrimaryAddressId = GHC.Maybe.Nothing,
                                        supplierPrimaryContactId = GHC.Maybe.Nothing,
                                        supplierReferenceNumber = GHC.Maybe.Nothing,
                                        supplierSalutation = GHC.Maybe.Nothing,
                                        supplierSectorId = GHC.Maybe.Nothing,
                                        supplierSectorName = GHC.Maybe.Nothing,
                                        supplierShipmentMethodId = GHC.Maybe.Nothing,
                                        supplierShipmentMethodName = GHC.Maybe.Nothing,
                                        supplierSupplierNumber = GHC.Maybe.Nothing,
                                        supplierSupplierRatingId = GHC.Maybe.Nothing,
                                        supplierSupplierRatingName = GHC.Maybe.Nothing,
                                        supplierTags = GHC.Maybe.Nothing,
                                        supplierTermOfPaymentId = GHC.Maybe.Nothing,
                                        supplierTermOfPaymentName = GHC.Maybe.Nothing,
                                        supplierTitle = GHC.Maybe.Nothing,
                                        supplierTitleId = GHC.Maybe.Nothing,
                                        supplierVatRegistrationNumber = GHC.Maybe.Nothing,
                                        supplierVersion = GHC.Maybe.Nothing,
                                        supplierWebsite = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.supplier.properties.partyType@ in the specification.
-- 
-- 
data SupplierPartyType' =
   SupplierPartyType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | SupplierPartyType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | SupplierPartyType'EnumORGANIZATION -- ^ Represents the JSON value @"ORGANIZATION"@
  | SupplierPartyType'EnumPERSON -- ^ Represents the JSON value @"PERSON"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SupplierPartyType'
    where toJSON (SupplierPartyType'Other val) = val
          toJSON (SupplierPartyType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (SupplierPartyType'EnumORGANIZATION) = "ORGANIZATION"
          toJSON (SupplierPartyType'EnumPERSON) = "PERSON"
instance Data.Aeson.Types.FromJSON.FromJSON SupplierPartyType'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "ORGANIZATION" -> SupplierPartyType'EnumORGANIZATION
                                            | val GHC.Classes.== "PERSON" -> SupplierPartyType'EnumPERSON
                                            | GHC.Base.otherwise -> SupplierPartyType'Other val)
-- | Defines the enum schema located at @components.schemas.supplier.properties.salutation@ in the specification.
-- 
-- 
data SupplierSalutation' =
   SupplierSalutation'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | SupplierSalutation'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | SupplierSalutation'EnumCOMPANY -- ^ Represents the JSON value @"COMPANY"@
  | SupplierSalutation'EnumFAMILY -- ^ Represents the JSON value @"FAMILY"@
  | SupplierSalutation'EnumMR -- ^ Represents the JSON value @"MR"@
  | SupplierSalutation'EnumMRS -- ^ Represents the JSON value @"MRS"@
  | SupplierSalutation'EnumNO_SALUTATION -- ^ Represents the JSON value @"NO_SALUTATION"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SupplierSalutation'
    where toJSON (SupplierSalutation'Other val) = val
          toJSON (SupplierSalutation'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (SupplierSalutation'EnumCOMPANY) = "COMPANY"
          toJSON (SupplierSalutation'EnumFAMILY) = "FAMILY"
          toJSON (SupplierSalutation'EnumMR) = "MR"
          toJSON (SupplierSalutation'EnumMRS) = "MRS"
          toJSON (SupplierSalutation'EnumNO_SALUTATION) = "NO_SALUTATION"
instance Data.Aeson.Types.FromJSON.FromJSON SupplierSalutation'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "COMPANY" -> SupplierSalutation'EnumCOMPANY
                                            | val GHC.Classes.== "FAMILY" -> SupplierSalutation'EnumFAMILY
                                            | val GHC.Classes.== "MR" -> SupplierSalutation'EnumMR
                                            | val GHC.Classes.== "MRS" -> SupplierSalutation'EnumMRS
                                            | val GHC.Classes.== "NO_SALUTATION" -> SupplierSalutation'EnumNO_SALUTATION
                                            | GHC.Base.otherwise -> SupplierSalutation'Other val)
