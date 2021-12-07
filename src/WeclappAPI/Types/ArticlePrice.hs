-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ArticlePrice
module WeclappAPI.Types.ArticlePrice where

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
import {-# SOURCE #-} WeclappAPI.Types.ReductionAddition

-- | Defines the object schema located at @components.schemas.articlePrice@ in the specification.
-- 
-- 
data ArticlePrice = ArticlePrice {
  -- | articleId
  articlePriceArticleId :: Data.Text.Internal.Text
  -- | articleNumber
  , articlePriceArticleNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | createdDate
  , articlePriceCreatedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | currencyId
  , articlePriceCurrencyId :: Data.Text.Internal.Text
  -- | currencyName
  , articlePriceCurrencyName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | customerId
  , articlePriceCustomerId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | description
  , articlePriceDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | distributionChannel
  , articlePriceDistributionChannel :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | endDate
  , articlePriceEndDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | id
  , articlePriceId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | lastModifiedDate
  , articlePriceLastModifiedDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | positionNumber
  , articlePricePositionNumber :: (GHC.Maybe.Maybe GHC.Int.Int32)
  -- | price
  , articlePricePrice :: Data.Text.Internal.Text
  -- | priceScaleType
  , articlePricePriceScaleType :: ArticlePricePriceScaleType'
  -- | priceScaleValue
  , articlePricePriceScaleValue :: Data.Text.Internal.Text
  -- | reductionAdditions
  , articlePriceReductionAdditions :: (GHC.Maybe.Maybe ([ReductionAddition]))
  -- | salesChannel
  , articlePriceSalesChannel :: Data.Text.Internal.Text
  -- | startDate
  , articlePriceStartDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | version
  , articlePriceVersion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ArticlePrice
    where toJSON obj = Data.Aeson.Types.Internal.object ("articleId" Data.Aeson.Types.ToJSON..= articlePriceArticleId obj : "articleNumber" Data.Aeson.Types.ToJSON..= articlePriceArticleNumber obj : "createdDate" Data.Aeson.Types.ToJSON..= articlePriceCreatedDate obj : "currencyId" Data.Aeson.Types.ToJSON..= articlePriceCurrencyId obj : "currencyName" Data.Aeson.Types.ToJSON..= articlePriceCurrencyName obj : "customerId" Data.Aeson.Types.ToJSON..= articlePriceCustomerId obj : "description" Data.Aeson.Types.ToJSON..= articlePriceDescription obj : "distributionChannel" Data.Aeson.Types.ToJSON..= articlePriceDistributionChannel obj : "endDate" Data.Aeson.Types.ToJSON..= articlePriceEndDate obj : "id" Data.Aeson.Types.ToJSON..= articlePriceId obj : "lastModifiedDate" Data.Aeson.Types.ToJSON..= articlePriceLastModifiedDate obj : "positionNumber" Data.Aeson.Types.ToJSON..= articlePricePositionNumber obj : "price" Data.Aeson.Types.ToJSON..= articlePricePrice obj : "priceScaleType" Data.Aeson.Types.ToJSON..= articlePricePriceScaleType obj : "priceScaleValue" Data.Aeson.Types.ToJSON..= articlePricePriceScaleValue obj : "reductionAdditions" Data.Aeson.Types.ToJSON..= articlePriceReductionAdditions obj : "salesChannel" Data.Aeson.Types.ToJSON..= articlePriceSalesChannel obj : "startDate" Data.Aeson.Types.ToJSON..= articlePriceStartDate obj : "version" Data.Aeson.Types.ToJSON..= articlePriceVersion obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("articleId" Data.Aeson.Types.ToJSON..= articlePriceArticleId obj) GHC.Base.<> (("articleNumber" Data.Aeson.Types.ToJSON..= articlePriceArticleNumber obj) GHC.Base.<> (("createdDate" Data.Aeson.Types.ToJSON..= articlePriceCreatedDate obj) GHC.Base.<> (("currencyId" Data.Aeson.Types.ToJSON..= articlePriceCurrencyId obj) GHC.Base.<> (("currencyName" Data.Aeson.Types.ToJSON..= articlePriceCurrencyName obj) GHC.Base.<> (("customerId" Data.Aeson.Types.ToJSON..= articlePriceCustomerId obj) GHC.Base.<> (("description" Data.Aeson.Types.ToJSON..= articlePriceDescription obj) GHC.Base.<> (("distributionChannel" Data.Aeson.Types.ToJSON..= articlePriceDistributionChannel obj) GHC.Base.<> (("endDate" Data.Aeson.Types.ToJSON..= articlePriceEndDate obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= articlePriceId obj) GHC.Base.<> (("lastModifiedDate" Data.Aeson.Types.ToJSON..= articlePriceLastModifiedDate obj) GHC.Base.<> (("positionNumber" Data.Aeson.Types.ToJSON..= articlePricePositionNumber obj) GHC.Base.<> (("price" Data.Aeson.Types.ToJSON..= articlePricePrice obj) GHC.Base.<> (("priceScaleType" Data.Aeson.Types.ToJSON..= articlePricePriceScaleType obj) GHC.Base.<> (("priceScaleValue" Data.Aeson.Types.ToJSON..= articlePricePriceScaleValue obj) GHC.Base.<> (("reductionAdditions" Data.Aeson.Types.ToJSON..= articlePriceReductionAdditions obj) GHC.Base.<> (("salesChannel" Data.Aeson.Types.ToJSON..= articlePriceSalesChannel obj) GHC.Base.<> (("startDate" Data.Aeson.Types.ToJSON..= articlePriceStartDate obj) GHC.Base.<> ("version" Data.Aeson.Types.ToJSON..= articlePriceVersion obj)))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON ArticlePrice
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ArticlePrice" (\obj -> ((((((((((((((((((GHC.Base.pure ArticlePrice GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "articleId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "articleNumber")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "createdDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currencyId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currencyName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customerId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "distributionChannel")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "endDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lastModifiedDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "positionNumber")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "price")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "priceScaleType")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "priceScaleValue")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reductionAdditions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "salesChannel")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "startDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "version"))
-- | Create a new 'ArticlePrice' with all required fields.
mkArticlePrice :: Data.Text.Internal.Text -- ^ 'articlePriceArticleId'
  -> Data.Text.Internal.Text -- ^ 'articlePriceCurrencyId'
  -> Data.Text.Internal.Text -- ^ 'articlePricePrice'
  -> ArticlePricePriceScaleType' -- ^ 'articlePricePriceScaleType'
  -> Data.Text.Internal.Text -- ^ 'articlePricePriceScaleValue'
  -> Data.Text.Internal.Text -- ^ 'articlePriceSalesChannel'
  -> ArticlePrice
mkArticlePrice articlePriceArticleId articlePriceCurrencyId articlePricePrice articlePricePriceScaleType articlePricePriceScaleValue articlePriceSalesChannel = ArticlePrice{articlePriceArticleId = articlePriceArticleId,
                                                                                                                                                                             articlePriceArticleNumber = GHC.Maybe.Nothing,
                                                                                                                                                                             articlePriceCreatedDate = GHC.Maybe.Nothing,
                                                                                                                                                                             articlePriceCurrencyId = articlePriceCurrencyId,
                                                                                                                                                                             articlePriceCurrencyName = GHC.Maybe.Nothing,
                                                                                                                                                                             articlePriceCustomerId = GHC.Maybe.Nothing,
                                                                                                                                                                             articlePriceDescription = GHC.Maybe.Nothing,
                                                                                                                                                                             articlePriceDistributionChannel = GHC.Maybe.Nothing,
                                                                                                                                                                             articlePriceEndDate = GHC.Maybe.Nothing,
                                                                                                                                                                             articlePriceId = GHC.Maybe.Nothing,
                                                                                                                                                                             articlePriceLastModifiedDate = GHC.Maybe.Nothing,
                                                                                                                                                                             articlePricePositionNumber = GHC.Maybe.Nothing,
                                                                                                                                                                             articlePricePrice = articlePricePrice,
                                                                                                                                                                             articlePricePriceScaleType = articlePricePriceScaleType,
                                                                                                                                                                             articlePricePriceScaleValue = articlePricePriceScaleValue,
                                                                                                                                                                             articlePriceReductionAdditions = GHC.Maybe.Nothing,
                                                                                                                                                                             articlePriceSalesChannel = articlePriceSalesChannel,
                                                                                                                                                                             articlePriceStartDate = GHC.Maybe.Nothing,
                                                                                                                                                                             articlePriceVersion = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.articlePrice.properties.priceScaleType@ in the specification.
-- 
-- 
data ArticlePricePriceScaleType' =
   ArticlePricePriceScaleType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | ArticlePricePriceScaleType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | ArticlePricePriceScaleType'EnumSCALE_FROM -- ^ Represents the JSON value @"SCALE_FROM"@
  | ArticlePricePriceScaleType'EnumSCALE_TO -- ^ Represents the JSON value @"SCALE_TO"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ArticlePricePriceScaleType'
    where toJSON (ArticlePricePriceScaleType'Other val) = val
          toJSON (ArticlePricePriceScaleType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (ArticlePricePriceScaleType'EnumSCALE_FROM) = "SCALE_FROM"
          toJSON (ArticlePricePriceScaleType'EnumSCALE_TO) = "SCALE_TO"
instance Data.Aeson.Types.FromJSON.FromJSON ArticlePricePriceScaleType'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "SCALE_FROM" -> ArticlePricePriceScaleType'EnumSCALE_FROM
                                            | val GHC.Classes.== "SCALE_TO" -> ArticlePricePriceScaleType'EnumSCALE_TO
                                            | GHC.Base.otherwise -> ArticlePricePriceScaleType'Other val)
