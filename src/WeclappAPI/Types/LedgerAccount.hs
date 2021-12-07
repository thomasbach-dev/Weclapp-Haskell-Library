-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema LedgerAccount
module WeclappAPI.Types.LedgerAccount where

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

-- | Defines the object schema located at @components.schemas.ledgerAccount@ in the specification.
-- 
-- 
data LedgerAccount = LedgerAccount {
  -- | accountNumber
  ledgerAccountAccountNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | automatic
  , ledgerAccountAutomatic :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | balanceSheetItem
  , ledgerAccountBalanceSheetItem :: (GHC.Maybe.Maybe LedgerAccountBalanceSheetItem')
  -- | createdDate
  , ledgerAccountCreatedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | description
  , ledgerAccountDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id
  , ledgerAccountId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | lastModifiedDate
  , ledgerAccountLastModifiedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | parentAccountId
  , ledgerAccountParentAccountId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | parentAccountNumber
  , ledgerAccountParentAccountNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | taxId
  , ledgerAccountTaxId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | taxName
  , ledgerAccountTaxName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | type
  , ledgerAccountType :: LedgerAccountType'
  -- | version
  , ledgerAccountVersion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON LedgerAccount
    where toJSON obj = Data.Aeson.Types.Internal.object ("accountNumber" Data.Aeson.Types.ToJSON..= ledgerAccountAccountNumber obj : "automatic" Data.Aeson.Types.ToJSON..= ledgerAccountAutomatic obj : "balanceSheetItem" Data.Aeson.Types.ToJSON..= ledgerAccountBalanceSheetItem obj : "createdDate" Data.Aeson.Types.ToJSON..= ledgerAccountCreatedDate obj : "description" Data.Aeson.Types.ToJSON..= ledgerAccountDescription obj : "id" Data.Aeson.Types.ToJSON..= ledgerAccountId obj : "lastModifiedDate" Data.Aeson.Types.ToJSON..= ledgerAccountLastModifiedDate obj : "parentAccountId" Data.Aeson.Types.ToJSON..= ledgerAccountParentAccountId obj : "parentAccountNumber" Data.Aeson.Types.ToJSON..= ledgerAccountParentAccountNumber obj : "taxId" Data.Aeson.Types.ToJSON..= ledgerAccountTaxId obj : "taxName" Data.Aeson.Types.ToJSON..= ledgerAccountTaxName obj : "type" Data.Aeson.Types.ToJSON..= ledgerAccountType obj : "version" Data.Aeson.Types.ToJSON..= ledgerAccountVersion obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("accountNumber" Data.Aeson.Types.ToJSON..= ledgerAccountAccountNumber obj) GHC.Base.<> (("automatic" Data.Aeson.Types.ToJSON..= ledgerAccountAutomatic obj) GHC.Base.<> (("balanceSheetItem" Data.Aeson.Types.ToJSON..= ledgerAccountBalanceSheetItem obj) GHC.Base.<> (("createdDate" Data.Aeson.Types.ToJSON..= ledgerAccountCreatedDate obj) GHC.Base.<> (("description" Data.Aeson.Types.ToJSON..= ledgerAccountDescription obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= ledgerAccountId obj) GHC.Base.<> (("lastModifiedDate" Data.Aeson.Types.ToJSON..= ledgerAccountLastModifiedDate obj) GHC.Base.<> (("parentAccountId" Data.Aeson.Types.ToJSON..= ledgerAccountParentAccountId obj) GHC.Base.<> (("parentAccountNumber" Data.Aeson.Types.ToJSON..= ledgerAccountParentAccountNumber obj) GHC.Base.<> (("taxId" Data.Aeson.Types.ToJSON..= ledgerAccountTaxId obj) GHC.Base.<> (("taxName" Data.Aeson.Types.ToJSON..= ledgerAccountTaxName obj) GHC.Base.<> (("type" Data.Aeson.Types.ToJSON..= ledgerAccountType obj) GHC.Base.<> ("version" Data.Aeson.Types.ToJSON..= ledgerAccountVersion obj)))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON LedgerAccount
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "LedgerAccount" (\obj -> ((((((((((((GHC.Base.pure LedgerAccount GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "accountNumber")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "automatic")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "balanceSheetItem")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "createdDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lastModifiedDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "parentAccountId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "parentAccountNumber")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "taxId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "taxName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "version"))
-- | Create a new 'LedgerAccount' with all required fields.
mkLedgerAccount :: LedgerAccountType' -- ^ 'ledgerAccountType'
  -> LedgerAccount
mkLedgerAccount ledgerAccountType = LedgerAccount{ledgerAccountAccountNumber = GHC.Maybe.Nothing,
                                                  ledgerAccountAutomatic = GHC.Maybe.Nothing,
                                                  ledgerAccountBalanceSheetItem = GHC.Maybe.Nothing,
                                                  ledgerAccountCreatedDate = GHC.Maybe.Nothing,
                                                  ledgerAccountDescription = GHC.Maybe.Nothing,
                                                  ledgerAccountId = GHC.Maybe.Nothing,
                                                  ledgerAccountLastModifiedDate = GHC.Maybe.Nothing,
                                                  ledgerAccountParentAccountId = GHC.Maybe.Nothing,
                                                  ledgerAccountParentAccountNumber = GHC.Maybe.Nothing,
                                                  ledgerAccountTaxId = GHC.Maybe.Nothing,
                                                  ledgerAccountTaxName = GHC.Maybe.Nothing,
                                                  ledgerAccountType = ledgerAccountType,
                                                  ledgerAccountVersion = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.ledgerAccount.properties.balanceSheetItem@ in the specification.
-- 
-- 
data LedgerAccountBalanceSheetItem' =
   LedgerAccountBalanceSheetItem'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | LedgerAccountBalanceSheetItem'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | LedgerAccountBalanceSheetItem'EnumABSCHREIBUNGEN_GWG_ACCOUNTS -- ^ Represents the JSON value @"ABSCHREIBUNGEN_GWG_ACCOUNTS"@
  | LedgerAccountBalanceSheetItem'EnumABSCHREIBUNGEN_UND_ANLAGEVERMOEGEN_ACCOUNTS -- ^ Represents the JSON value @"ABSCHREIBUNGEN_UND_ANLAGEVERMOEGEN_ACCOUNTS"@
  | LedgerAccountBalanceSheetItem'EnumBESONDERE_AUFWENDUNGEN_ACCOUNTS -- ^ Represents the JSON value @"BESONDERE_AUFWENDUNGEN_ACCOUNTS"@
  | LedgerAccountBalanceSheetItem'EnumBUCHWERT_ANLAGENABGAENGE_ACCOUNTS -- ^ Represents the JSON value @"BUCHWERT_ANLAGENABGAENGE_ACCOUNTS"@
  | LedgerAccountBalanceSheetItem'EnumFREMDLEISTUNGEN_ACCOUNTS -- ^ Represents the JSON value @"FREMDLEISTUNGEN_ACCOUNTS"@
  | LedgerAccountBalanceSheetItem'EnumGAS_STROM_ACCOUNTS -- ^ Represents the JSON value @"GAS_STROM_ACCOUNTS"@
  | LedgerAccountBalanceSheetItem'EnumGELEISTETE_ANZAHLUNGEN_ACCOUNTS -- ^ Represents the JSON value @"GELEISTETE_ANZAHLUNGEN_ACCOUNTS"@
  | LedgerAccountBalanceSheetItem'EnumGESETZLICHE_SOZIALE_AUFWENDUNGEN_ACCOUNTS -- ^ Represents the JSON value @"GESETZLICHE_SOZIALE_AUFWENDUNGEN_ACCOUNTS"@
  | LedgerAccountBalanceSheetItem'EnumHEIZUNG_ACCOUNTS -- ^ Represents the JSON value @"HEIZUNG_ACCOUNTS"@
  | LedgerAccountBalanceSheetItem'EnumINSTANDHALTUNG_ACCOUNTS -- ^ Represents the JSON value @"INSTANDHALTUNG_ACCOUNTS"@
  | LedgerAccountBalanceSheetItem'EnumINSTANDHALTUNG_UND_WERKZEUGE_ACCOUNTS -- ^ Represents the JSON value @"INSTANDHALTUNG_UND_WERKZEUGE_ACCOUNTS"@
  | LedgerAccountBalanceSheetItem'EnumKFZ_SONSTIGE_ACCOUNTS -- ^ Represents the JSON value @"KFZ_SONSTIGE_ACCOUNTS"@
  | LedgerAccountBalanceSheetItem'EnumKFZ_STEUER_ACCOUNTS -- ^ Represents the JSON value @"KFZ_STEUER_ACCOUNTS"@
  | LedgerAccountBalanceSheetItem'EnumKFZ_VERSICHERUNG_ACCOUNTS -- ^ Represents the JSON value @"KFZ_VERSICHERUNG_ACCOUNTS"@
  | LedgerAccountBalanceSheetItem'EnumKOSTEN_DER_WARENABGABE_ACCOUNTS -- ^ Represents the JSON value @"KOSTEN_DER_WARENABGABE_ACCOUNTS"@
  | LedgerAccountBalanceSheetItem'EnumLOEHENE_UND_GEHAELTER_ACCOUNTS -- ^ Represents the JSON value @"LOEHENE_UND_GEHAELTER_ACCOUNTS"@
  | LedgerAccountBalanceSheetItem'EnumMIETE_PACHT_ACCOUNTS -- ^ Represents the JSON value @"MIETE_PACHT_ACCOUNTS"@
  | LedgerAccountBalanceSheetItem'EnumNEUTRALE_AUFWENDUNGEN_ACCOUNTS -- ^ Represents the JSON value @"NEUTRALE_AUFWENDUNGEN_ACCOUNTS"@
  | LedgerAccountBalanceSheetItem'EnumNEUTRALE_ERTRAEGE_ACCOUNTS -- ^ Represents the JSON value @"NEUTRALE_ERTRAEGE_ACCOUNTS"@
  | LedgerAccountBalanceSheetItem'EnumPRIVAT_ANTEILE_ACCOUNTS -- ^ Represents the JSON value @"PRIVAT_ANTEILE_ACCOUNTS"@
  | LedgerAccountBalanceSheetItem'EnumREVENUE_ACCOUNTS -- ^ Represents the JSON value @"REVENUE_ACCOUNTS"@
  | LedgerAccountBalanceSheetItem'EnumROH_HILFS_UNDBETRIE_BSSTOFFE_ACCOUNTS -- ^ Represents the JSON value @"ROH_HILFS_UNDBETRIE_BSSTOFFE_ACCOUNTS"@
  | LedgerAccountBalanceSheetItem'EnumSALDO_DER_STATISTISCHEN_KONTEN_ACCOUNTS -- ^ Represents the JSON value @"SALDO_DER_STATISTISCHEN_KONTEN_ACCOUNTS"@
  | LedgerAccountBalanceSheetItem'EnumSONSTIGE_ERLOESE_ACCOUNTS -- ^ Represents the JSON value @"SONSTIGE_ERLOESE_ACCOUNTS"@
  | LedgerAccountBalanceSheetItem'EnumSONSTIGE_KONTEN_ACCOUNTS -- ^ Represents the JSON value @"SONSTIGE_KONTEN_ACCOUNTS"@
  | LedgerAccountBalanceSheetItem'EnumSONSTIGE_RAUMKOSTEN_ACCOUNTS -- ^ Represents the JSON value @"SONSTIGE_RAUMKOSTEN_ACCOUNTS"@
  | LedgerAccountBalanceSheetItem'EnumSTEUERN_VERSICHERUNGEN_BEITRAEGE_ACCOUNTS -- ^ Represents the JSON value @"STEUERN_VERSICHERUNGEN_BEITRAEGE_ACCOUNTS"@
  | LedgerAccountBalanceSheetItem'EnumUMSATZSTEUER_ACCOUNTS -- ^ Represents the JSON value @"UMSATZSTEUER_ACCOUNTS"@
  | LedgerAccountBalanceSheetItem'EnumUMSATZSTEUER_ZAHLUNGEN_ACCOUNTS -- ^ Represents the JSON value @"UMSATZSTEUER_ZAHLUNGEN_ACCOUNTS"@
  | LedgerAccountBalanceSheetItem'EnumVERSCHIEDENE_KOSTEN_ACCOUNTS -- ^ Represents the JSON value @"VERSCHIEDENE_KOSTEN_ACCOUNTS"@
  | LedgerAccountBalanceSheetItem'EnumVORSTEUER_ACCOUNTS -- ^ Represents the JSON value @"VORSTEUER_ACCOUNTS"@
  | LedgerAccountBalanceSheetItem'EnumWERBE_UND_REISEKOSTEN_ACCOUNTS -- ^ Represents the JSON value @"WERBE_UND_REISEKOSTEN_ACCOUNTS"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON LedgerAccountBalanceSheetItem'
    where toJSON (LedgerAccountBalanceSheetItem'Other val) = val
          toJSON (LedgerAccountBalanceSheetItem'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (LedgerAccountBalanceSheetItem'EnumABSCHREIBUNGEN_GWG_ACCOUNTS) = "ABSCHREIBUNGEN_GWG_ACCOUNTS"
          toJSON (LedgerAccountBalanceSheetItem'EnumABSCHREIBUNGEN_UND_ANLAGEVERMOEGEN_ACCOUNTS) = "ABSCHREIBUNGEN_UND_ANLAGEVERMOEGEN_ACCOUNTS"
          toJSON (LedgerAccountBalanceSheetItem'EnumBESONDERE_AUFWENDUNGEN_ACCOUNTS) = "BESONDERE_AUFWENDUNGEN_ACCOUNTS"
          toJSON (LedgerAccountBalanceSheetItem'EnumBUCHWERT_ANLAGENABGAENGE_ACCOUNTS) = "BUCHWERT_ANLAGENABGAENGE_ACCOUNTS"
          toJSON (LedgerAccountBalanceSheetItem'EnumFREMDLEISTUNGEN_ACCOUNTS) = "FREMDLEISTUNGEN_ACCOUNTS"
          toJSON (LedgerAccountBalanceSheetItem'EnumGAS_STROM_ACCOUNTS) = "GAS_STROM_ACCOUNTS"
          toJSON (LedgerAccountBalanceSheetItem'EnumGELEISTETE_ANZAHLUNGEN_ACCOUNTS) = "GELEISTETE_ANZAHLUNGEN_ACCOUNTS"
          toJSON (LedgerAccountBalanceSheetItem'EnumGESETZLICHE_SOZIALE_AUFWENDUNGEN_ACCOUNTS) = "GESETZLICHE_SOZIALE_AUFWENDUNGEN_ACCOUNTS"
          toJSON (LedgerAccountBalanceSheetItem'EnumHEIZUNG_ACCOUNTS) = "HEIZUNG_ACCOUNTS"
          toJSON (LedgerAccountBalanceSheetItem'EnumINSTANDHALTUNG_ACCOUNTS) = "INSTANDHALTUNG_ACCOUNTS"
          toJSON (LedgerAccountBalanceSheetItem'EnumINSTANDHALTUNG_UND_WERKZEUGE_ACCOUNTS) = "INSTANDHALTUNG_UND_WERKZEUGE_ACCOUNTS"
          toJSON (LedgerAccountBalanceSheetItem'EnumKFZ_SONSTIGE_ACCOUNTS) = "KFZ_SONSTIGE_ACCOUNTS"
          toJSON (LedgerAccountBalanceSheetItem'EnumKFZ_STEUER_ACCOUNTS) = "KFZ_STEUER_ACCOUNTS"
          toJSON (LedgerAccountBalanceSheetItem'EnumKFZ_VERSICHERUNG_ACCOUNTS) = "KFZ_VERSICHERUNG_ACCOUNTS"
          toJSON (LedgerAccountBalanceSheetItem'EnumKOSTEN_DER_WARENABGABE_ACCOUNTS) = "KOSTEN_DER_WARENABGABE_ACCOUNTS"
          toJSON (LedgerAccountBalanceSheetItem'EnumLOEHENE_UND_GEHAELTER_ACCOUNTS) = "LOEHENE_UND_GEHAELTER_ACCOUNTS"
          toJSON (LedgerAccountBalanceSheetItem'EnumMIETE_PACHT_ACCOUNTS) = "MIETE_PACHT_ACCOUNTS"
          toJSON (LedgerAccountBalanceSheetItem'EnumNEUTRALE_AUFWENDUNGEN_ACCOUNTS) = "NEUTRALE_AUFWENDUNGEN_ACCOUNTS"
          toJSON (LedgerAccountBalanceSheetItem'EnumNEUTRALE_ERTRAEGE_ACCOUNTS) = "NEUTRALE_ERTRAEGE_ACCOUNTS"
          toJSON (LedgerAccountBalanceSheetItem'EnumPRIVAT_ANTEILE_ACCOUNTS) = "PRIVAT_ANTEILE_ACCOUNTS"
          toJSON (LedgerAccountBalanceSheetItem'EnumREVENUE_ACCOUNTS) = "REVENUE_ACCOUNTS"
          toJSON (LedgerAccountBalanceSheetItem'EnumROH_HILFS_UNDBETRIE_BSSTOFFE_ACCOUNTS) = "ROH_HILFS_UNDBETRIE_BSSTOFFE_ACCOUNTS"
          toJSON (LedgerAccountBalanceSheetItem'EnumSALDO_DER_STATISTISCHEN_KONTEN_ACCOUNTS) = "SALDO_DER_STATISTISCHEN_KONTEN_ACCOUNTS"
          toJSON (LedgerAccountBalanceSheetItem'EnumSONSTIGE_ERLOESE_ACCOUNTS) = "SONSTIGE_ERLOESE_ACCOUNTS"
          toJSON (LedgerAccountBalanceSheetItem'EnumSONSTIGE_KONTEN_ACCOUNTS) = "SONSTIGE_KONTEN_ACCOUNTS"
          toJSON (LedgerAccountBalanceSheetItem'EnumSONSTIGE_RAUMKOSTEN_ACCOUNTS) = "SONSTIGE_RAUMKOSTEN_ACCOUNTS"
          toJSON (LedgerAccountBalanceSheetItem'EnumSTEUERN_VERSICHERUNGEN_BEITRAEGE_ACCOUNTS) = "STEUERN_VERSICHERUNGEN_BEITRAEGE_ACCOUNTS"
          toJSON (LedgerAccountBalanceSheetItem'EnumUMSATZSTEUER_ACCOUNTS) = "UMSATZSTEUER_ACCOUNTS"
          toJSON (LedgerAccountBalanceSheetItem'EnumUMSATZSTEUER_ZAHLUNGEN_ACCOUNTS) = "UMSATZSTEUER_ZAHLUNGEN_ACCOUNTS"
          toJSON (LedgerAccountBalanceSheetItem'EnumVERSCHIEDENE_KOSTEN_ACCOUNTS) = "VERSCHIEDENE_KOSTEN_ACCOUNTS"
          toJSON (LedgerAccountBalanceSheetItem'EnumVORSTEUER_ACCOUNTS) = "VORSTEUER_ACCOUNTS"
          toJSON (LedgerAccountBalanceSheetItem'EnumWERBE_UND_REISEKOSTEN_ACCOUNTS) = "WERBE_UND_REISEKOSTEN_ACCOUNTS"
instance Data.Aeson.Types.FromJSON.FromJSON LedgerAccountBalanceSheetItem'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "ABSCHREIBUNGEN_GWG_ACCOUNTS" -> LedgerAccountBalanceSheetItem'EnumABSCHREIBUNGEN_GWG_ACCOUNTS
                                            | val GHC.Classes.== "ABSCHREIBUNGEN_UND_ANLAGEVERMOEGEN_ACCOUNTS" -> LedgerAccountBalanceSheetItem'EnumABSCHREIBUNGEN_UND_ANLAGEVERMOEGEN_ACCOUNTS
                                            | val GHC.Classes.== "BESONDERE_AUFWENDUNGEN_ACCOUNTS" -> LedgerAccountBalanceSheetItem'EnumBESONDERE_AUFWENDUNGEN_ACCOUNTS
                                            | val GHC.Classes.== "BUCHWERT_ANLAGENABGAENGE_ACCOUNTS" -> LedgerAccountBalanceSheetItem'EnumBUCHWERT_ANLAGENABGAENGE_ACCOUNTS
                                            | val GHC.Classes.== "FREMDLEISTUNGEN_ACCOUNTS" -> LedgerAccountBalanceSheetItem'EnumFREMDLEISTUNGEN_ACCOUNTS
                                            | val GHC.Classes.== "GAS_STROM_ACCOUNTS" -> LedgerAccountBalanceSheetItem'EnumGAS_STROM_ACCOUNTS
                                            | val GHC.Classes.== "GELEISTETE_ANZAHLUNGEN_ACCOUNTS" -> LedgerAccountBalanceSheetItem'EnumGELEISTETE_ANZAHLUNGEN_ACCOUNTS
                                            | val GHC.Classes.== "GESETZLICHE_SOZIALE_AUFWENDUNGEN_ACCOUNTS" -> LedgerAccountBalanceSheetItem'EnumGESETZLICHE_SOZIALE_AUFWENDUNGEN_ACCOUNTS
                                            | val GHC.Classes.== "HEIZUNG_ACCOUNTS" -> LedgerAccountBalanceSheetItem'EnumHEIZUNG_ACCOUNTS
                                            | val GHC.Classes.== "INSTANDHALTUNG_ACCOUNTS" -> LedgerAccountBalanceSheetItem'EnumINSTANDHALTUNG_ACCOUNTS
                                            | val GHC.Classes.== "INSTANDHALTUNG_UND_WERKZEUGE_ACCOUNTS" -> LedgerAccountBalanceSheetItem'EnumINSTANDHALTUNG_UND_WERKZEUGE_ACCOUNTS
                                            | val GHC.Classes.== "KFZ_SONSTIGE_ACCOUNTS" -> LedgerAccountBalanceSheetItem'EnumKFZ_SONSTIGE_ACCOUNTS
                                            | val GHC.Classes.== "KFZ_STEUER_ACCOUNTS" -> LedgerAccountBalanceSheetItem'EnumKFZ_STEUER_ACCOUNTS
                                            | val GHC.Classes.== "KFZ_VERSICHERUNG_ACCOUNTS" -> LedgerAccountBalanceSheetItem'EnumKFZ_VERSICHERUNG_ACCOUNTS
                                            | val GHC.Classes.== "KOSTEN_DER_WARENABGABE_ACCOUNTS" -> LedgerAccountBalanceSheetItem'EnumKOSTEN_DER_WARENABGABE_ACCOUNTS
                                            | val GHC.Classes.== "LOEHENE_UND_GEHAELTER_ACCOUNTS" -> LedgerAccountBalanceSheetItem'EnumLOEHENE_UND_GEHAELTER_ACCOUNTS
                                            | val GHC.Classes.== "MIETE_PACHT_ACCOUNTS" -> LedgerAccountBalanceSheetItem'EnumMIETE_PACHT_ACCOUNTS
                                            | val GHC.Classes.== "NEUTRALE_AUFWENDUNGEN_ACCOUNTS" -> LedgerAccountBalanceSheetItem'EnumNEUTRALE_AUFWENDUNGEN_ACCOUNTS
                                            | val GHC.Classes.== "NEUTRALE_ERTRAEGE_ACCOUNTS" -> LedgerAccountBalanceSheetItem'EnumNEUTRALE_ERTRAEGE_ACCOUNTS
                                            | val GHC.Classes.== "PRIVAT_ANTEILE_ACCOUNTS" -> LedgerAccountBalanceSheetItem'EnumPRIVAT_ANTEILE_ACCOUNTS
                                            | val GHC.Classes.== "REVENUE_ACCOUNTS" -> LedgerAccountBalanceSheetItem'EnumREVENUE_ACCOUNTS
                                            | val GHC.Classes.== "ROH_HILFS_UNDBETRIE_BSSTOFFE_ACCOUNTS" -> LedgerAccountBalanceSheetItem'EnumROH_HILFS_UNDBETRIE_BSSTOFFE_ACCOUNTS
                                            | val GHC.Classes.== "SALDO_DER_STATISTISCHEN_KONTEN_ACCOUNTS" -> LedgerAccountBalanceSheetItem'EnumSALDO_DER_STATISTISCHEN_KONTEN_ACCOUNTS
                                            | val GHC.Classes.== "SONSTIGE_ERLOESE_ACCOUNTS" -> LedgerAccountBalanceSheetItem'EnumSONSTIGE_ERLOESE_ACCOUNTS
                                            | val GHC.Classes.== "SONSTIGE_KONTEN_ACCOUNTS" -> LedgerAccountBalanceSheetItem'EnumSONSTIGE_KONTEN_ACCOUNTS
                                            | val GHC.Classes.== "SONSTIGE_RAUMKOSTEN_ACCOUNTS" -> LedgerAccountBalanceSheetItem'EnumSONSTIGE_RAUMKOSTEN_ACCOUNTS
                                            | val GHC.Classes.== "STEUERN_VERSICHERUNGEN_BEITRAEGE_ACCOUNTS" -> LedgerAccountBalanceSheetItem'EnumSTEUERN_VERSICHERUNGEN_BEITRAEGE_ACCOUNTS
                                            | val GHC.Classes.== "UMSATZSTEUER_ACCOUNTS" -> LedgerAccountBalanceSheetItem'EnumUMSATZSTEUER_ACCOUNTS
                                            | val GHC.Classes.== "UMSATZSTEUER_ZAHLUNGEN_ACCOUNTS" -> LedgerAccountBalanceSheetItem'EnumUMSATZSTEUER_ZAHLUNGEN_ACCOUNTS
                                            | val GHC.Classes.== "VERSCHIEDENE_KOSTEN_ACCOUNTS" -> LedgerAccountBalanceSheetItem'EnumVERSCHIEDENE_KOSTEN_ACCOUNTS
                                            | val GHC.Classes.== "VORSTEUER_ACCOUNTS" -> LedgerAccountBalanceSheetItem'EnumVORSTEUER_ACCOUNTS
                                            | val GHC.Classes.== "WERBE_UND_REISEKOSTEN_ACCOUNTS" -> LedgerAccountBalanceSheetItem'EnumWERBE_UND_REISEKOSTEN_ACCOUNTS
                                            | GHC.Base.otherwise -> LedgerAccountBalanceSheetItem'Other val)
-- | Defines the enum schema located at @components.schemas.ledgerAccount.properties.type@ in the specification.
-- 
-- 
data LedgerAccountType' =
   LedgerAccountType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | LedgerAccountType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | LedgerAccountType'EnumIMPERSONAL_ACCOUNT -- ^ Represents the JSON value @"IMPERSONAL_ACCOUNT"@
  | LedgerAccountType'EnumPERSONAL_ACCOUNT -- ^ Represents the JSON value @"PERSONAL_ACCOUNT"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON LedgerAccountType'
    where toJSON (LedgerAccountType'Other val) = val
          toJSON (LedgerAccountType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (LedgerAccountType'EnumIMPERSONAL_ACCOUNT) = "IMPERSONAL_ACCOUNT"
          toJSON (LedgerAccountType'EnumPERSONAL_ACCOUNT) = "PERSONAL_ACCOUNT"
instance Data.Aeson.Types.FromJSON.FromJSON LedgerAccountType'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "IMPERSONAL_ACCOUNT" -> LedgerAccountType'EnumIMPERSONAL_ACCOUNT
                                            | val GHC.Classes.== "PERSONAL_ACCOUNT" -> LedgerAccountType'EnumPERSONAL_ACCOUNT
                                            | GHC.Base.otherwise -> LedgerAccountType'Other val)