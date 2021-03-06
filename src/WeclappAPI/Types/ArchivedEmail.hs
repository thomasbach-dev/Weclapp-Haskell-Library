-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ArchivedEmail
module WeclappAPI.Types.ArchivedEmail where

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

-- | Defines the object schema located at @components.schemas.archivedEmail@ in the specification.
-- 
-- 
data ArchivedEmail = ArchivedEmail {
  -- | bccAddresses
  archivedEmailBccAddresses :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | body
  , archivedEmailBody :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | ccAddresses
  , archivedEmailCcAddresses :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | createdDate
  , archivedEmailCreatedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | fromAddress
  , archivedEmailFromAddress :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id
  , archivedEmailId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | lastModifiedDate
  , archivedEmailLastModifiedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | messageIdentifier
  , archivedEmailMessageIdentifier :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | receivedDate
  , archivedEmailReceivedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | replyToAddress
  , archivedEmailReplyToAddress :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | subject
  , archivedEmailSubject :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | toAddresses
  , archivedEmailToAddresses :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | version
  , archivedEmailVersion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ArchivedEmail
    where toJSON obj = Data.Aeson.Types.Internal.object ("bccAddresses" Data.Aeson.Types.ToJSON..= archivedEmailBccAddresses obj : "body" Data.Aeson.Types.ToJSON..= archivedEmailBody obj : "ccAddresses" Data.Aeson.Types.ToJSON..= archivedEmailCcAddresses obj : "createdDate" Data.Aeson.Types.ToJSON..= archivedEmailCreatedDate obj : "fromAddress" Data.Aeson.Types.ToJSON..= archivedEmailFromAddress obj : "id" Data.Aeson.Types.ToJSON..= archivedEmailId obj : "lastModifiedDate" Data.Aeson.Types.ToJSON..= archivedEmailLastModifiedDate obj : "messageIdentifier" Data.Aeson.Types.ToJSON..= archivedEmailMessageIdentifier obj : "receivedDate" Data.Aeson.Types.ToJSON..= archivedEmailReceivedDate obj : "replyToAddress" Data.Aeson.Types.ToJSON..= archivedEmailReplyToAddress obj : "subject" Data.Aeson.Types.ToJSON..= archivedEmailSubject obj : "toAddresses" Data.Aeson.Types.ToJSON..= archivedEmailToAddresses obj : "version" Data.Aeson.Types.ToJSON..= archivedEmailVersion obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("bccAddresses" Data.Aeson.Types.ToJSON..= archivedEmailBccAddresses obj) GHC.Base.<> (("body" Data.Aeson.Types.ToJSON..= archivedEmailBody obj) GHC.Base.<> (("ccAddresses" Data.Aeson.Types.ToJSON..= archivedEmailCcAddresses obj) GHC.Base.<> (("createdDate" Data.Aeson.Types.ToJSON..= archivedEmailCreatedDate obj) GHC.Base.<> (("fromAddress" Data.Aeson.Types.ToJSON..= archivedEmailFromAddress obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= archivedEmailId obj) GHC.Base.<> (("lastModifiedDate" Data.Aeson.Types.ToJSON..= archivedEmailLastModifiedDate obj) GHC.Base.<> (("messageIdentifier" Data.Aeson.Types.ToJSON..= archivedEmailMessageIdentifier obj) GHC.Base.<> (("receivedDate" Data.Aeson.Types.ToJSON..= archivedEmailReceivedDate obj) GHC.Base.<> (("replyToAddress" Data.Aeson.Types.ToJSON..= archivedEmailReplyToAddress obj) GHC.Base.<> (("subject" Data.Aeson.Types.ToJSON..= archivedEmailSubject obj) GHC.Base.<> (("toAddresses" Data.Aeson.Types.ToJSON..= archivedEmailToAddresses obj) GHC.Base.<> ("version" Data.Aeson.Types.ToJSON..= archivedEmailVersion obj)))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON ArchivedEmail
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ArchivedEmail" (\obj -> ((((((((((((GHC.Base.pure ArchivedEmail GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bccAddresses")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "body")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ccAddresses")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "createdDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "fromAddress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lastModifiedDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "messageIdentifier")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "receivedDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "replyToAddress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "subject")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "toAddresses")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "version"))
-- | Create a new 'ArchivedEmail' with all required fields.
mkArchivedEmail :: ArchivedEmail
mkArchivedEmail = ArchivedEmail{archivedEmailBccAddresses = GHC.Maybe.Nothing,
                                archivedEmailBody = GHC.Maybe.Nothing,
                                archivedEmailCcAddresses = GHC.Maybe.Nothing,
                                archivedEmailCreatedDate = GHC.Maybe.Nothing,
                                archivedEmailFromAddress = GHC.Maybe.Nothing,
                                archivedEmailId = GHC.Maybe.Nothing,
                                archivedEmailLastModifiedDate = GHC.Maybe.Nothing,
                                archivedEmailMessageIdentifier = GHC.Maybe.Nothing,
                                archivedEmailReceivedDate = GHC.Maybe.Nothing,
                                archivedEmailReplyToAddress = GHC.Maybe.Nothing,
                                archivedEmailSubject = GHC.Maybe.Nothing,
                                archivedEmailToAddresses = GHC.Maybe.Nothing,
                                archivedEmailVersion = GHC.Maybe.Nothing}
