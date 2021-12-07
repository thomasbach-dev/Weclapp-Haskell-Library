module WeclappAPI.Types.Entity where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data Entity
instance Show Entity
instance Eq Entity
instance FromJSON Entity
instance ToJSON Entity
