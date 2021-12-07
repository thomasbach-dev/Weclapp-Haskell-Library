module WeclappAPI.Types.Webhook where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data Webhook
instance Show Webhook
instance Eq Webhook
instance FromJSON Webhook
instance ToJSON Webhook
data WebhookRequestMethod'
instance Show WebhookRequestMethod'
instance Eq WebhookRequestMethod'
instance FromJSON WebhookRequestMethod'
instance ToJSON WebhookRequestMethod'
