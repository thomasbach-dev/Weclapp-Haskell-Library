module WeclappAPI.Types.PaymentMethod where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data PaymentMethod
instance Show PaymentMethod
instance Eq PaymentMethod
instance FromJSON PaymentMethod
instance ToJSON PaymentMethod
