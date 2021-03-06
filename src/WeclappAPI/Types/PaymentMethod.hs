-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PaymentMethod
module WeclappAPI.Types.PaymentMethod where

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

-- | Defines the object schema located at @components.schemas.paymentMethod@ in the specification.
-- 
-- 
data PaymentMethod = PaymentMethod {
  -- | createdDate
  paymentMethodCreatedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | id
  , paymentMethodId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | lastModifiedDate
  , paymentMethodLastModifiedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | name
  , paymentMethodName :: Data.Text.Internal.Text
  -- | version
  , paymentMethodVersion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethod
    where toJSON obj = Data.Aeson.Types.Internal.object ("createdDate" Data.Aeson.Types.ToJSON..= paymentMethodCreatedDate obj : "id" Data.Aeson.Types.ToJSON..= paymentMethodId obj : "lastModifiedDate" Data.Aeson.Types.ToJSON..= paymentMethodLastModifiedDate obj : "name" Data.Aeson.Types.ToJSON..= paymentMethodName obj : "version" Data.Aeson.Types.ToJSON..= paymentMethodVersion obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("createdDate" Data.Aeson.Types.ToJSON..= paymentMethodCreatedDate obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= paymentMethodId obj) GHC.Base.<> (("lastModifiedDate" Data.Aeson.Types.ToJSON..= paymentMethodLastModifiedDate obj) GHC.Base.<> (("name" Data.Aeson.Types.ToJSON..= paymentMethodName obj) GHC.Base.<> ("version" Data.Aeson.Types.ToJSON..= paymentMethodVersion obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethod
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethod" (\obj -> ((((GHC.Base.pure PaymentMethod GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "createdDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lastModifiedDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "version"))
-- | Create a new 'PaymentMethod' with all required fields.
mkPaymentMethod :: Data.Text.Internal.Text -- ^ 'paymentMethodName'
  -> PaymentMethod
mkPaymentMethod paymentMethodName = PaymentMethod{paymentMethodCreatedDate = GHC.Maybe.Nothing,
                                                  paymentMethodId = GHC.Maybe.Nothing,
                                                  paymentMethodLastModifiedDate = GHC.Maybe.Nothing,
                                                  paymentMethodName = paymentMethodName,
                                                  paymentMethodVersion = GHC.Maybe.Nothing}
