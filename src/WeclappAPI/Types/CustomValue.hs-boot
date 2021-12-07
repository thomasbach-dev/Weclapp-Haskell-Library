module WeclappAPI.Types.CustomValue where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data CustomValue
instance Show CustomValue
instance Eq CustomValue
instance FromJSON CustomValue
instance ToJSON CustomValue
