module WeclappAPI.Types.Currency where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data Currency
instance Show Currency
instance Eq Currency
instance FromJSON Currency
instance ToJSON Currency
