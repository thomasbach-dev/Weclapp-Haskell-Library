module WeclappAPI.Types.Comment where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data Comment
instance Show Comment
instance Eq Comment
instance FromJSON Comment
instance ToJSON Comment
