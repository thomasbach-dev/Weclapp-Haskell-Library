module WeclappAPI.Types.Address where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data Address
instance Show Address
instance Eq Address
instance FromJSON Address
instance ToJSON Address
data AddressSalutation'
instance Show AddressSalutation'
instance Eq AddressSalutation'
instance FromJSON AddressSalutation'
instance ToJSON AddressSalutation'
