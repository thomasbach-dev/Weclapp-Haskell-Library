-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema OnlineAccount
module WeclappAPI.Types.OnlineAccount where

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

-- | Defines the object schema located at @components.schemas.onlineAccount@ in the specification.
-- 
-- 
data OnlineAccount = OnlineAccount {
  -- | accountName
  onlineAccountAccountName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | accountType
  , onlineAccountAccountType :: (GHC.Maybe.Maybe OnlineAccountAccountType')
  -- | createdDate
  , onlineAccountCreatedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | id
  , onlineAccountId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | lastModifiedDate
  , onlineAccountLastModifiedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | url
  , onlineAccountUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | version
  , onlineAccountVersion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON OnlineAccount
    where toJSON obj = Data.Aeson.Types.Internal.object ("accountName" Data.Aeson.Types.ToJSON..= onlineAccountAccountName obj : "accountType" Data.Aeson.Types.ToJSON..= onlineAccountAccountType obj : "createdDate" Data.Aeson.Types.ToJSON..= onlineAccountCreatedDate obj : "id" Data.Aeson.Types.ToJSON..= onlineAccountId obj : "lastModifiedDate" Data.Aeson.Types.ToJSON..= onlineAccountLastModifiedDate obj : "url" Data.Aeson.Types.ToJSON..= onlineAccountUrl obj : "version" Data.Aeson.Types.ToJSON..= onlineAccountVersion obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("accountName" Data.Aeson.Types.ToJSON..= onlineAccountAccountName obj) GHC.Base.<> (("accountType" Data.Aeson.Types.ToJSON..= onlineAccountAccountType obj) GHC.Base.<> (("createdDate" Data.Aeson.Types.ToJSON..= onlineAccountCreatedDate obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= onlineAccountId obj) GHC.Base.<> (("lastModifiedDate" Data.Aeson.Types.ToJSON..= onlineAccountLastModifiedDate obj) GHC.Base.<> (("url" Data.Aeson.Types.ToJSON..= onlineAccountUrl obj) GHC.Base.<> ("version" Data.Aeson.Types.ToJSON..= onlineAccountVersion obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON OnlineAccount
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "OnlineAccount" (\obj -> ((((((GHC.Base.pure OnlineAccount GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "accountName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "accountType")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "createdDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lastModifiedDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "version"))
-- | Create a new 'OnlineAccount' with all required fields.
mkOnlineAccount :: OnlineAccount
mkOnlineAccount = OnlineAccount{onlineAccountAccountName = GHC.Maybe.Nothing,
                                onlineAccountAccountType = GHC.Maybe.Nothing,
                                onlineAccountCreatedDate = GHC.Maybe.Nothing,
                                onlineAccountId = GHC.Maybe.Nothing,
                                onlineAccountLastModifiedDate = GHC.Maybe.Nothing,
                                onlineAccountUrl = GHC.Maybe.Nothing,
                                onlineAccountVersion = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.onlineAccount.properties.accountType@ in the specification.
-- 
-- 
data OnlineAccountAccountType' =
   OnlineAccountAccountType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | OnlineAccountAccountType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | OnlineAccountAccountType'EnumAMAZON -- ^ Represents the JSON value @"AMAZON"@
  | OnlineAccountAccountType'EnumBLOG -- ^ Represents the JSON value @"BLOG"@
  | OnlineAccountAccountType'EnumEBAY -- ^ Represents the JSON value @"EBAY"@
  | OnlineAccountAccountType'EnumFACEBOOK -- ^ Represents the JSON value @"FACEBOOK"@
  | OnlineAccountAccountType'EnumGOOGLE_DRIVE -- ^ Represents the JSON value @"GOOGLE_DRIVE"@
  | OnlineAccountAccountType'EnumGOOGLE_PLUS -- ^ Represents the JSON value @"GOOGLE_PLUS"@
  | OnlineAccountAccountType'EnumINSTAGRAM -- ^ Represents the JSON value @"INSTAGRAM"@
  | OnlineAccountAccountType'EnumLINKEDIN -- ^ Represents the JSON value @"LINKEDIN"@
  | OnlineAccountAccountType'EnumOTHER -- ^ Represents the JSON value @"OTHER"@
  | OnlineAccountAccountType'EnumPINTEREST -- ^ Represents the JSON value @"PINTEREST"@
  | OnlineAccountAccountType'EnumSKYPE -- ^ Represents the JSON value @"SKYPE"@
  | OnlineAccountAccountType'EnumSLIDESHARE -- ^ Represents the JSON value @"SLIDESHARE"@
  | OnlineAccountAccountType'EnumTWITTER -- ^ Represents the JSON value @"TWITTER"@
  | OnlineAccountAccountType'EnumWIKIPEDIA -- ^ Represents the JSON value @"WIKIPEDIA"@
  | OnlineAccountAccountType'EnumXING -- ^ Represents the JSON value @"XING"@
  | OnlineAccountAccountType'EnumYELP -- ^ Represents the JSON value @"YELP"@
  | OnlineAccountAccountType'EnumYOUTUBE -- ^ Represents the JSON value @"YOUTUBE"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON OnlineAccountAccountType'
    where toJSON (OnlineAccountAccountType'Other val) = val
          toJSON (OnlineAccountAccountType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (OnlineAccountAccountType'EnumAMAZON) = "AMAZON"
          toJSON (OnlineAccountAccountType'EnumBLOG) = "BLOG"
          toJSON (OnlineAccountAccountType'EnumEBAY) = "EBAY"
          toJSON (OnlineAccountAccountType'EnumFACEBOOK) = "FACEBOOK"
          toJSON (OnlineAccountAccountType'EnumGOOGLE_DRIVE) = "GOOGLE_DRIVE"
          toJSON (OnlineAccountAccountType'EnumGOOGLE_PLUS) = "GOOGLE_PLUS"
          toJSON (OnlineAccountAccountType'EnumINSTAGRAM) = "INSTAGRAM"
          toJSON (OnlineAccountAccountType'EnumLINKEDIN) = "LINKEDIN"
          toJSON (OnlineAccountAccountType'EnumOTHER) = "OTHER"
          toJSON (OnlineAccountAccountType'EnumPINTEREST) = "PINTEREST"
          toJSON (OnlineAccountAccountType'EnumSKYPE) = "SKYPE"
          toJSON (OnlineAccountAccountType'EnumSLIDESHARE) = "SLIDESHARE"
          toJSON (OnlineAccountAccountType'EnumTWITTER) = "TWITTER"
          toJSON (OnlineAccountAccountType'EnumWIKIPEDIA) = "WIKIPEDIA"
          toJSON (OnlineAccountAccountType'EnumXING) = "XING"
          toJSON (OnlineAccountAccountType'EnumYELP) = "YELP"
          toJSON (OnlineAccountAccountType'EnumYOUTUBE) = "YOUTUBE"
instance Data.Aeson.Types.FromJSON.FromJSON OnlineAccountAccountType'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "AMAZON" -> OnlineAccountAccountType'EnumAMAZON
                                            | val GHC.Classes.== "BLOG" -> OnlineAccountAccountType'EnumBLOG
                                            | val GHC.Classes.== "EBAY" -> OnlineAccountAccountType'EnumEBAY
                                            | val GHC.Classes.== "FACEBOOK" -> OnlineAccountAccountType'EnumFACEBOOK
                                            | val GHC.Classes.== "GOOGLE_DRIVE" -> OnlineAccountAccountType'EnumGOOGLE_DRIVE
                                            | val GHC.Classes.== "GOOGLE_PLUS" -> OnlineAccountAccountType'EnumGOOGLE_PLUS
                                            | val GHC.Classes.== "INSTAGRAM" -> OnlineAccountAccountType'EnumINSTAGRAM
                                            | val GHC.Classes.== "LINKEDIN" -> OnlineAccountAccountType'EnumLINKEDIN
                                            | val GHC.Classes.== "OTHER" -> OnlineAccountAccountType'EnumOTHER
                                            | val GHC.Classes.== "PINTEREST" -> OnlineAccountAccountType'EnumPINTEREST
                                            | val GHC.Classes.== "SKYPE" -> OnlineAccountAccountType'EnumSKYPE
                                            | val GHC.Classes.== "SLIDESHARE" -> OnlineAccountAccountType'EnumSLIDESHARE
                                            | val GHC.Classes.== "TWITTER" -> OnlineAccountAccountType'EnumTWITTER
                                            | val GHC.Classes.== "WIKIPEDIA" -> OnlineAccountAccountType'EnumWIKIPEDIA
                                            | val GHC.Classes.== "XING" -> OnlineAccountAccountType'EnumXING
                                            | val GHC.Classes.== "YELP" -> OnlineAccountAccountType'EnumYELP
                                            | val GHC.Classes.== "YOUTUBE" -> OnlineAccountAccountType'EnumYOUTUBE
                                            | GHC.Base.otherwise -> OnlineAccountAccountType'Other val)
