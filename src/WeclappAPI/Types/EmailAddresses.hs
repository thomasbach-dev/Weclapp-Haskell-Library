-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema EmailAddresses
module WeclappAPI.Types.EmailAddresses where

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

-- | Defines the object schema located at @components.schemas.emailAddresses@ in the specification.
-- 
-- 
data EmailAddresses = EmailAddresses {
  -- | bccAddresses
  emailAddressesBccAddresses :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | ccAddresses
  , emailAddressesCcAddresses :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | toAddresses
  , emailAddressesToAddresses :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON EmailAddresses
    where toJSON obj = Data.Aeson.Types.Internal.object ("bccAddresses" Data.Aeson.Types.ToJSON..= emailAddressesBccAddresses obj : "ccAddresses" Data.Aeson.Types.ToJSON..= emailAddressesCcAddresses obj : "toAddresses" Data.Aeson.Types.ToJSON..= emailAddressesToAddresses obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("bccAddresses" Data.Aeson.Types.ToJSON..= emailAddressesBccAddresses obj) GHC.Base.<> (("ccAddresses" Data.Aeson.Types.ToJSON..= emailAddressesCcAddresses obj) GHC.Base.<> ("toAddresses" Data.Aeson.Types.ToJSON..= emailAddressesToAddresses obj)))
instance Data.Aeson.Types.FromJSON.FromJSON EmailAddresses
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "EmailAddresses" (\obj -> ((GHC.Base.pure EmailAddresses GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bccAddresses")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ccAddresses")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "toAddresses"))
-- | Create a new 'EmailAddresses' with all required fields.
mkEmailAddresses :: EmailAddresses
mkEmailAddresses = EmailAddresses{emailAddressesBccAddresses = GHC.Maybe.Nothing,
                                  emailAddressesCcAddresses = GHC.Maybe.Nothing,
                                  emailAddressesToAddresses = GHC.Maybe.Nothing}
