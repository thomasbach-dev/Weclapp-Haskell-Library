-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema CashAccount
module WeclappAPI.Types.CashAccount where

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

-- | Defines the object schema located at @components.schemas.cashAccount@ in the specification.
-- 
-- 
data CashAccount = CashAccount {
  -- | createdDate
  cashAccountCreatedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | currencyId
  , cashAccountCurrencyId :: Data.Text.Internal.Text
  -- | currencyName
  , cashAccountCurrencyName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | description
  , cashAccountDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id
  , cashAccountId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | lastModifiedDate
  , cashAccountLastModifiedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | openingBalance
  , cashAccountOpeningBalance :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | version
  , cashAccountVersion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CashAccount
    where toJSON obj = Data.Aeson.Types.Internal.object ("createdDate" Data.Aeson.Types.ToJSON..= cashAccountCreatedDate obj : "currencyId" Data.Aeson.Types.ToJSON..= cashAccountCurrencyId obj : "currencyName" Data.Aeson.Types.ToJSON..= cashAccountCurrencyName obj : "description" Data.Aeson.Types.ToJSON..= cashAccountDescription obj : "id" Data.Aeson.Types.ToJSON..= cashAccountId obj : "lastModifiedDate" Data.Aeson.Types.ToJSON..= cashAccountLastModifiedDate obj : "openingBalance" Data.Aeson.Types.ToJSON..= cashAccountOpeningBalance obj : "version" Data.Aeson.Types.ToJSON..= cashAccountVersion obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("createdDate" Data.Aeson.Types.ToJSON..= cashAccountCreatedDate obj) GHC.Base.<> (("currencyId" Data.Aeson.Types.ToJSON..= cashAccountCurrencyId obj) GHC.Base.<> (("currencyName" Data.Aeson.Types.ToJSON..= cashAccountCurrencyName obj) GHC.Base.<> (("description" Data.Aeson.Types.ToJSON..= cashAccountDescription obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= cashAccountId obj) GHC.Base.<> (("lastModifiedDate" Data.Aeson.Types.ToJSON..= cashAccountLastModifiedDate obj) GHC.Base.<> (("openingBalance" Data.Aeson.Types.ToJSON..= cashAccountOpeningBalance obj) GHC.Base.<> ("version" Data.Aeson.Types.ToJSON..= cashAccountVersion obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON CashAccount
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "CashAccount" (\obj -> (((((((GHC.Base.pure CashAccount GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "createdDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currencyId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currencyName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lastModifiedDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "openingBalance")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "version"))
-- | Create a new 'CashAccount' with all required fields.
mkCashAccount :: Data.Text.Internal.Text -- ^ 'cashAccountCurrencyId'
  -> CashAccount
mkCashAccount cashAccountCurrencyId = CashAccount{cashAccountCreatedDate = GHC.Maybe.Nothing,
                                                  cashAccountCurrencyId = cashAccountCurrencyId,
                                                  cashAccountCurrencyName = GHC.Maybe.Nothing,
                                                  cashAccountDescription = GHC.Maybe.Nothing,
                                                  cashAccountId = GHC.Maybe.Nothing,
                                                  cashAccountLastModifiedDate = GHC.Maybe.Nothing,
                                                  cashAccountOpeningBalance = GHC.Maybe.Nothing,
                                                  cashAccountVersion = GHC.Maybe.Nothing}
