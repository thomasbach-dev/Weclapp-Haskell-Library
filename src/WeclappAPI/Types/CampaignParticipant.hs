-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema CampaignParticipant
module WeclappAPI.Types.CampaignParticipant where

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

-- | Defines the object schema located at @components.schemas.campaignParticipant@ in the specification.
-- 
-- 
data CampaignParticipant = CampaignParticipant {
  -- | campaignId
  campaignParticipantCampaignId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | campaignNumber
  , campaignParticipantCampaignNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | createdDate
  , campaignParticipantCreatedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | id
  , campaignParticipantId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | lastModifiedDate
  , campaignParticipantLastModifiedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | participation
  , campaignParticipantParticipation :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | partyId
  , campaignParticipantPartyId :: Data.Text.Internal.Text
  -- | version
  , campaignParticipantVersion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CampaignParticipant
    where toJSON obj = Data.Aeson.Types.Internal.object ("campaignId" Data.Aeson.Types.ToJSON..= campaignParticipantCampaignId obj : "campaignNumber" Data.Aeson.Types.ToJSON..= campaignParticipantCampaignNumber obj : "createdDate" Data.Aeson.Types.ToJSON..= campaignParticipantCreatedDate obj : "id" Data.Aeson.Types.ToJSON..= campaignParticipantId obj : "lastModifiedDate" Data.Aeson.Types.ToJSON..= campaignParticipantLastModifiedDate obj : "participation" Data.Aeson.Types.ToJSON..= campaignParticipantParticipation obj : "partyId" Data.Aeson.Types.ToJSON..= campaignParticipantPartyId obj : "version" Data.Aeson.Types.ToJSON..= campaignParticipantVersion obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("campaignId" Data.Aeson.Types.ToJSON..= campaignParticipantCampaignId obj) GHC.Base.<> (("campaignNumber" Data.Aeson.Types.ToJSON..= campaignParticipantCampaignNumber obj) GHC.Base.<> (("createdDate" Data.Aeson.Types.ToJSON..= campaignParticipantCreatedDate obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= campaignParticipantId obj) GHC.Base.<> (("lastModifiedDate" Data.Aeson.Types.ToJSON..= campaignParticipantLastModifiedDate obj) GHC.Base.<> (("participation" Data.Aeson.Types.ToJSON..= campaignParticipantParticipation obj) GHC.Base.<> (("partyId" Data.Aeson.Types.ToJSON..= campaignParticipantPartyId obj) GHC.Base.<> ("version" Data.Aeson.Types.ToJSON..= campaignParticipantVersion obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON CampaignParticipant
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "CampaignParticipant" (\obj -> (((((((GHC.Base.pure CampaignParticipant GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "campaignId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "campaignNumber")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "createdDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lastModifiedDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "participation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "partyId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "version"))
-- | Create a new 'CampaignParticipant' with all required fields.
mkCampaignParticipant :: Data.Text.Internal.Text -- ^ 'campaignParticipantPartyId'
  -> CampaignParticipant
mkCampaignParticipant campaignParticipantPartyId = CampaignParticipant{campaignParticipantCampaignId = GHC.Maybe.Nothing,
                                                                       campaignParticipantCampaignNumber = GHC.Maybe.Nothing,
                                                                       campaignParticipantCreatedDate = GHC.Maybe.Nothing,
                                                                       campaignParticipantId = GHC.Maybe.Nothing,
                                                                       campaignParticipantLastModifiedDate = GHC.Maybe.Nothing,
                                                                       campaignParticipantParticipation = GHC.Maybe.Nothing,
                                                                       campaignParticipantPartyId = campaignParticipantPartyId,
                                                                       campaignParticipantVersion = GHC.Maybe.Nothing}
