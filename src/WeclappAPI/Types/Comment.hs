-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema Comment
module WeclappAPI.Types.Comment where

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
import {-# SOURCE #-} WeclappAPI.Types.OnlyId

-- | Defines the object schema located at @components.schemas.comment@ in the specification.
-- 
-- 
data Comment = Comment {
  -- | authorName
  commentAuthorName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | authorUserId
  , commentAuthorUserId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | authorUserUsername
  , commentAuthorUserUsername :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | comment
  , commentComment :: Data.Text.Internal.Text
  -- | createdDate
  , commentCreatedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | entityId
  , commentEntityId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | entityName
  , commentEntityName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | htmlComment
  , commentHtmlComment :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id
  , commentId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | lastEditDate
  , commentLastEditDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | lastModifiedDate
  , commentLastModifiedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | parentCommentId
  , commentParentCommentId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | privateComment
  , commentPrivateComment :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | publicComment
  , commentPublicComment :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | recipientUsers
  , commentRecipientUsers :: (GHC.Maybe.Maybe ([OnlyId]))
  -- | solution
  , commentSolution :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | version
  , commentVersion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Comment
    where toJSON obj = Data.Aeson.Types.Internal.object ("authorName" Data.Aeson.Types.ToJSON..= commentAuthorName obj : "authorUserId" Data.Aeson.Types.ToJSON..= commentAuthorUserId obj : "authorUserUsername" Data.Aeson.Types.ToJSON..= commentAuthorUserUsername obj : "comment" Data.Aeson.Types.ToJSON..= commentComment obj : "createdDate" Data.Aeson.Types.ToJSON..= commentCreatedDate obj : "entityId" Data.Aeson.Types.ToJSON..= commentEntityId obj : "entityName" Data.Aeson.Types.ToJSON..= commentEntityName obj : "htmlComment" Data.Aeson.Types.ToJSON..= commentHtmlComment obj : "id" Data.Aeson.Types.ToJSON..= commentId obj : "lastEditDate" Data.Aeson.Types.ToJSON..= commentLastEditDate obj : "lastModifiedDate" Data.Aeson.Types.ToJSON..= commentLastModifiedDate obj : "parentCommentId" Data.Aeson.Types.ToJSON..= commentParentCommentId obj : "privateComment" Data.Aeson.Types.ToJSON..= commentPrivateComment obj : "publicComment" Data.Aeson.Types.ToJSON..= commentPublicComment obj : "recipientUsers" Data.Aeson.Types.ToJSON..= commentRecipientUsers obj : "solution" Data.Aeson.Types.ToJSON..= commentSolution obj : "version" Data.Aeson.Types.ToJSON..= commentVersion obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("authorName" Data.Aeson.Types.ToJSON..= commentAuthorName obj) GHC.Base.<> (("authorUserId" Data.Aeson.Types.ToJSON..= commentAuthorUserId obj) GHC.Base.<> (("authorUserUsername" Data.Aeson.Types.ToJSON..= commentAuthorUserUsername obj) GHC.Base.<> (("comment" Data.Aeson.Types.ToJSON..= commentComment obj) GHC.Base.<> (("createdDate" Data.Aeson.Types.ToJSON..= commentCreatedDate obj) GHC.Base.<> (("entityId" Data.Aeson.Types.ToJSON..= commentEntityId obj) GHC.Base.<> (("entityName" Data.Aeson.Types.ToJSON..= commentEntityName obj) GHC.Base.<> (("htmlComment" Data.Aeson.Types.ToJSON..= commentHtmlComment obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= commentId obj) GHC.Base.<> (("lastEditDate" Data.Aeson.Types.ToJSON..= commentLastEditDate obj) GHC.Base.<> (("lastModifiedDate" Data.Aeson.Types.ToJSON..= commentLastModifiedDate obj) GHC.Base.<> (("parentCommentId" Data.Aeson.Types.ToJSON..= commentParentCommentId obj) GHC.Base.<> (("privateComment" Data.Aeson.Types.ToJSON..= commentPrivateComment obj) GHC.Base.<> (("publicComment" Data.Aeson.Types.ToJSON..= commentPublicComment obj) GHC.Base.<> (("recipientUsers" Data.Aeson.Types.ToJSON..= commentRecipientUsers obj) GHC.Base.<> (("solution" Data.Aeson.Types.ToJSON..= commentSolution obj) GHC.Base.<> ("version" Data.Aeson.Types.ToJSON..= commentVersion obj)))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON Comment
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Comment" (\obj -> ((((((((((((((((GHC.Base.pure Comment GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "authorName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "authorUserId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "authorUserUsername")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "comment")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "createdDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "entityId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "entityName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "htmlComment")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lastEditDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lastModifiedDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "parentCommentId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "privateComment")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "publicComment")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "recipientUsers")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "solution")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "version"))
-- | Create a new 'Comment' with all required fields.
mkComment :: Data.Text.Internal.Text -- ^ 'commentComment'
  -> Comment
mkComment commentComment = Comment{commentAuthorName = GHC.Maybe.Nothing,
                                   commentAuthorUserId = GHC.Maybe.Nothing,
                                   commentAuthorUserUsername = GHC.Maybe.Nothing,
                                   commentComment = commentComment,
                                   commentCreatedDate = GHC.Maybe.Nothing,
                                   commentEntityId = GHC.Maybe.Nothing,
                                   commentEntityName = GHC.Maybe.Nothing,
                                   commentHtmlComment = GHC.Maybe.Nothing,
                                   commentId = GHC.Maybe.Nothing,
                                   commentLastEditDate = GHC.Maybe.Nothing,
                                   commentLastModifiedDate = GHC.Maybe.Nothing,
                                   commentParentCommentId = GHC.Maybe.Nothing,
                                   commentPrivateComment = GHC.Maybe.Nothing,
                                   commentPublicComment = GHC.Maybe.Nothing,
                                   commentRecipientUsers = GHC.Maybe.Nothing,
                                   commentSolution = GHC.Maybe.Nothing,
                                   commentVersion = GHC.Maybe.Nothing}
