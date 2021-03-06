-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema RecordAddress
module WeclappAPI.Types.RecordAddress where

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

-- | Defines the object schema located at @components.schemas.recordAddress@ in the specification.
-- 
-- 
data RecordAddress = RecordAddress {
  -- | city
  recordAddressCity :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | company
  , recordAddressCompany :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | company2
  , recordAddressCompany2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | countryCode
  , recordAddressCountryCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | firstName
  , recordAddressFirstName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | globalLocationNumber
  , recordAddressGlobalLocationNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | lastName
  , recordAddressLastName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | middleName
  , recordAddressMiddleName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | phoneNumber
  , recordAddressPhoneNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | postOfficeBoxCity
  , recordAddressPostOfficeBoxCity :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | postOfficeBoxNumber
  , recordAddressPostOfficeBoxNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | postOfficeBoxZipCode
  , recordAddressPostOfficeBoxZipCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | salutation
  , recordAddressSalutation :: (GHC.Maybe.Maybe RecordAddressSalutation')
  -- | state
  , recordAddressState :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | street1
  , recordAddressStreet1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | street2
  , recordAddressStreet2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | title
  , recordAddressTitle :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | titleId
  , recordAddressTitleId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | zipcode
  , recordAddressZipcode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON RecordAddress
    where toJSON obj = Data.Aeson.Types.Internal.object ("city" Data.Aeson.Types.ToJSON..= recordAddressCity obj : "company" Data.Aeson.Types.ToJSON..= recordAddressCompany obj : "company2" Data.Aeson.Types.ToJSON..= recordAddressCompany2 obj : "countryCode" Data.Aeson.Types.ToJSON..= recordAddressCountryCode obj : "firstName" Data.Aeson.Types.ToJSON..= recordAddressFirstName obj : "globalLocationNumber" Data.Aeson.Types.ToJSON..= recordAddressGlobalLocationNumber obj : "lastName" Data.Aeson.Types.ToJSON..= recordAddressLastName obj : "middleName" Data.Aeson.Types.ToJSON..= recordAddressMiddleName obj : "phoneNumber" Data.Aeson.Types.ToJSON..= recordAddressPhoneNumber obj : "postOfficeBoxCity" Data.Aeson.Types.ToJSON..= recordAddressPostOfficeBoxCity obj : "postOfficeBoxNumber" Data.Aeson.Types.ToJSON..= recordAddressPostOfficeBoxNumber obj : "postOfficeBoxZipCode" Data.Aeson.Types.ToJSON..= recordAddressPostOfficeBoxZipCode obj : "salutation" Data.Aeson.Types.ToJSON..= recordAddressSalutation obj : "state" Data.Aeson.Types.ToJSON..= recordAddressState obj : "street1" Data.Aeson.Types.ToJSON..= recordAddressStreet1 obj : "street2" Data.Aeson.Types.ToJSON..= recordAddressStreet2 obj : "title" Data.Aeson.Types.ToJSON..= recordAddressTitle obj : "titleId" Data.Aeson.Types.ToJSON..= recordAddressTitleId obj : "zipcode" Data.Aeson.Types.ToJSON..= recordAddressZipcode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("city" Data.Aeson.Types.ToJSON..= recordAddressCity obj) GHC.Base.<> (("company" Data.Aeson.Types.ToJSON..= recordAddressCompany obj) GHC.Base.<> (("company2" Data.Aeson.Types.ToJSON..= recordAddressCompany2 obj) GHC.Base.<> (("countryCode" Data.Aeson.Types.ToJSON..= recordAddressCountryCode obj) GHC.Base.<> (("firstName" Data.Aeson.Types.ToJSON..= recordAddressFirstName obj) GHC.Base.<> (("globalLocationNumber" Data.Aeson.Types.ToJSON..= recordAddressGlobalLocationNumber obj) GHC.Base.<> (("lastName" Data.Aeson.Types.ToJSON..= recordAddressLastName obj) GHC.Base.<> (("middleName" Data.Aeson.Types.ToJSON..= recordAddressMiddleName obj) GHC.Base.<> (("phoneNumber" Data.Aeson.Types.ToJSON..= recordAddressPhoneNumber obj) GHC.Base.<> (("postOfficeBoxCity" Data.Aeson.Types.ToJSON..= recordAddressPostOfficeBoxCity obj) GHC.Base.<> (("postOfficeBoxNumber" Data.Aeson.Types.ToJSON..= recordAddressPostOfficeBoxNumber obj) GHC.Base.<> (("postOfficeBoxZipCode" Data.Aeson.Types.ToJSON..= recordAddressPostOfficeBoxZipCode obj) GHC.Base.<> (("salutation" Data.Aeson.Types.ToJSON..= recordAddressSalutation obj) GHC.Base.<> (("state" Data.Aeson.Types.ToJSON..= recordAddressState obj) GHC.Base.<> (("street1" Data.Aeson.Types.ToJSON..= recordAddressStreet1 obj) GHC.Base.<> (("street2" Data.Aeson.Types.ToJSON..= recordAddressStreet2 obj) GHC.Base.<> (("title" Data.Aeson.Types.ToJSON..= recordAddressTitle obj) GHC.Base.<> (("titleId" Data.Aeson.Types.ToJSON..= recordAddressTitleId obj) GHC.Base.<> ("zipcode" Data.Aeson.Types.ToJSON..= recordAddressZipcode obj)))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON RecordAddress
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "RecordAddress" (\obj -> ((((((((((((((((((GHC.Base.pure RecordAddress GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "company")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "company2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "countryCode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "firstName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "globalLocationNumber")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lastName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "middleName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phoneNumber")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postOfficeBoxCity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postOfficeBoxNumber")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postOfficeBoxZipCode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "salutation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "street1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "street2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "title")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "titleId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "zipcode"))
-- | Create a new 'RecordAddress' with all required fields.
mkRecordAddress :: RecordAddress
mkRecordAddress = RecordAddress{recordAddressCity = GHC.Maybe.Nothing,
                                recordAddressCompany = GHC.Maybe.Nothing,
                                recordAddressCompany2 = GHC.Maybe.Nothing,
                                recordAddressCountryCode = GHC.Maybe.Nothing,
                                recordAddressFirstName = GHC.Maybe.Nothing,
                                recordAddressGlobalLocationNumber = GHC.Maybe.Nothing,
                                recordAddressLastName = GHC.Maybe.Nothing,
                                recordAddressMiddleName = GHC.Maybe.Nothing,
                                recordAddressPhoneNumber = GHC.Maybe.Nothing,
                                recordAddressPostOfficeBoxCity = GHC.Maybe.Nothing,
                                recordAddressPostOfficeBoxNumber = GHC.Maybe.Nothing,
                                recordAddressPostOfficeBoxZipCode = GHC.Maybe.Nothing,
                                recordAddressSalutation = GHC.Maybe.Nothing,
                                recordAddressState = GHC.Maybe.Nothing,
                                recordAddressStreet1 = GHC.Maybe.Nothing,
                                recordAddressStreet2 = GHC.Maybe.Nothing,
                                recordAddressTitle = GHC.Maybe.Nothing,
                                recordAddressTitleId = GHC.Maybe.Nothing,
                                recordAddressZipcode = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.recordAddress.properties.salutation@ in the specification.
-- 
-- 
data RecordAddressSalutation' =
   RecordAddressSalutation'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | RecordAddressSalutation'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | RecordAddressSalutation'EnumCOMPANY -- ^ Represents the JSON value @"COMPANY"@
  | RecordAddressSalutation'EnumFAMILY -- ^ Represents the JSON value @"FAMILY"@
  | RecordAddressSalutation'EnumMR -- ^ Represents the JSON value @"MR"@
  | RecordAddressSalutation'EnumMRS -- ^ Represents the JSON value @"MRS"@
  | RecordAddressSalutation'EnumNO_SALUTATION -- ^ Represents the JSON value @"NO_SALUTATION"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON RecordAddressSalutation'
    where toJSON (RecordAddressSalutation'Other val) = val
          toJSON (RecordAddressSalutation'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (RecordAddressSalutation'EnumCOMPANY) = "COMPANY"
          toJSON (RecordAddressSalutation'EnumFAMILY) = "FAMILY"
          toJSON (RecordAddressSalutation'EnumMR) = "MR"
          toJSON (RecordAddressSalutation'EnumMRS) = "MRS"
          toJSON (RecordAddressSalutation'EnumNO_SALUTATION) = "NO_SALUTATION"
instance Data.Aeson.Types.FromJSON.FromJSON RecordAddressSalutation'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "COMPANY" -> RecordAddressSalutation'EnumCOMPANY
                                            | val GHC.Classes.== "FAMILY" -> RecordAddressSalutation'EnumFAMILY
                                            | val GHC.Classes.== "MR" -> RecordAddressSalutation'EnumMR
                                            | val GHC.Classes.== "MRS" -> RecordAddressSalutation'EnumMRS
                                            | val GHC.Classes.== "NO_SALUTATION" -> RecordAddressSalutation'EnumNO_SALUTATION
                                            | GHC.Base.otherwise -> RecordAddressSalutation'Other val)
