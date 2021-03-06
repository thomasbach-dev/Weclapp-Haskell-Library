-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation get_user_currentUser
module WeclappAPI.Operations.Get_user_currentUser where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Either
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified Data.Vector
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Network.HTTP.Client
import qualified Network.HTTP.Client as Network.HTTP.Client.Request
import qualified Network.HTTP.Client as Network.HTTP.Client.Types
import qualified Network.HTTP.Simple
import qualified Network.HTTP.Types
import qualified Network.HTTP.Types as Network.HTTP.Types.Status
import qualified Network.HTTP.Types as Network.HTTP.Types.URI
import qualified WeclappAPI.Common
import WeclappAPI.Types

-- | > GET /user/currentUser
-- 
-- 
get_user_currentUser :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Get_user_currentUserResponse) -- ^ Monadic computation which returns the result of the operation
get_user_currentUser = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either Get_user_currentUserResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Get_user_currentUserResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                          Get_user_currentUserResponseBody200)
                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (WeclappAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/user/currentUser") GHC.Base.mempty)
-- | Represents a response of the operation 'get_user_currentUser'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Get_user_currentUserResponseError' is used.
data Get_user_currentUserResponse =
   Get_user_currentUserResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | Get_user_currentUserResponse200 Get_user_currentUserResponseBody200 -- ^ currentUser response
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/user\/currentUser.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data Get_user_currentUserResponseBody200 = Get_user_currentUserResponseBody200 {
  -- | result
  get_user_currentUserResponseBody200Result :: (GHC.Maybe.Maybe User)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Get_user_currentUserResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("result" Data.Aeson.Types.ToJSON..= get_user_currentUserResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("result" Data.Aeson.Types.ToJSON..= get_user_currentUserResponseBody200Result obj)
instance Data.Aeson.Types.FromJSON.FromJSON Get_user_currentUserResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Get_user_currentUserResponseBody200" (\obj -> GHC.Base.pure Get_user_currentUserResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "result"))
-- | Create a new 'Get_user_currentUserResponseBody200' with all required fields.
mkGet_user_currentUserResponseBody200 :: Get_user_currentUserResponseBody200
mkGet_user_currentUserResponseBody200 = Get_user_currentUserResponseBody200{get_user_currentUserResponseBody200Result = GHC.Maybe.Nothing}
-- | > GET /user/currentUser
-- 
-- The same as 'get_user_currentUser' but accepts an explicit configuration.
get_user_currentUserWithConfiguration :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.Configuration -- ^ The configuration to use in the request
  -> m (Network.HTTP.Client.Types.Response Get_user_currentUserResponse) -- ^ Monadic computation which returns the result of the operation
get_user_currentUserWithConfiguration config = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either Get_user_currentUserResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Get_user_currentUserResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                  Get_user_currentUserResponseBody200)
                                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (WeclappAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/user/currentUser") GHC.Base.mempty)
-- | > GET /user/currentUser
-- 
-- The same as 'get_user_currentUser' but returns the raw 'Data.ByteString.Char8.ByteString'.
get_user_currentUserRaw :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
get_user_currentUserRaw = GHC.Base.id (WeclappAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/user/currentUser") GHC.Base.mempty)
-- | > GET /user/currentUser
-- 
-- The same as 'get_user_currentUser' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
get_user_currentUserWithConfigurationRaw :: forall m . WeclappAPI.Common.MonadHTTP m => WeclappAPI.Common.Configuration -- ^ The configuration to use in the request
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
get_user_currentUserWithConfigurationRaw config = GHC.Base.id (WeclappAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/user/currentUser") GHC.Base.mempty)
