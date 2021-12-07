module WeclappAPI.Types.User where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data User
instance Show User
instance Eq User
instance FromJSON User
instance ToJSON User
data UserStatus'
instance Show UserStatus'
instance Eq UserStatus'
instance FromJSON UserStatus'
instance ToJSON UserStatus'
