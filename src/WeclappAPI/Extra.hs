{-# LANGUAGE OverloadedStrings #-}

module WeclappAPI.Extra
  ( mkConfiguration
  , Tenant
  , APIKey
  , apiTokenSecurityScheme
  , mkConfigurationWithFilter
  , QueryFilter
  , queryFilter
  , FilterComparator(..)
  , renderFilterComparator
  )
where

import qualified Data.ByteString as BS
import qualified Data.Text as T
import qualified Data.Text.Encoding as TE
import qualified Network.HTTP.Client as HTTPClient
import qualified Network.HTTP.Types as HTTPTypes

import WeclappAPI.Common

-- | The tenant as described in the API docs. For example, in https://example.weclapp.com example is
-- the tenant.
type Tenant = T.Text

type APIKey = T.Text

mkConfiguration :: Tenant -> APIKey -> Configuration
mkConfiguration tenant apiKey = mkConfigurationWithFilter tenant apiKey id

apiTokenSecurityScheme :: T.Text -> SecurityScheme
apiTokenSecurityScheme token req = req {HTTPClient.requestHeaders = newHeaders}
  where
    newHeaders = ("AuthenticationToken", TE.encodeUtf8 token) : oldHeaders
    oldHeaders = HTTPClient.requestHeaders req

-- * Filters

type QueryFilter = HTTPClient.Request -> HTTPClient.Request

mkConfigurationWithFilter :: Tenant -> APIKey -> QueryFilter -> Configuration
mkConfigurationWithFilter tenant apiKey queryFilter = Configuration
  ("https://" <> tenant <> ".weclapp.com/webapp/api/v1/")
  (queryFilter . apiTokenSecurityScheme apiKey)

queryFilter :: [(T.Text, FilterComparator, T.Text)] -> QueryFilter
queryFilter queryItems req = HTTPClient.setQueryString (existingQ <> additionalQ) req
  where
    existingQ = HTTPTypes.parseQuery $ HTTPClient.queryString req
    additionalQ = map toQueryItem queryItems
    toQueryItem (fieldName, comp, value) =
      (TE.encodeUtf8 fieldName <> "-" <> renderFilterComparator comp, Just $ TE.encodeUtf8 value)

renderFilterComparator :: FilterComparator -> BS.ByteString
renderFilterComparator FCEqual        = "eq"
renderFilterComparator FCNotEqual     = "ne"
renderFilterComparator FCLessThan     = "lt"
renderFilterComparator FCGreaterThan  = "gt"
renderFilterComparator FCLessEqual    = "le"
renderFilterComparator FCGreaterEqual = "ge"
renderFilterComparator FCNull         = "null"
renderFilterComparator FCNotNull      = "notnull"
renderFilterComparator FCLike         = "like"
renderFilterComparator FCNotLike      = "notlike"
renderFilterComparator FCILike        = "ilike"
renderFilterComparator FCNotILike     = "notilike"
renderFilterComparator FCIn           = "in"
renderFilterComparator FCNotIn        = "notin"

data FilterComparator = FCEqual        -- ^ equal
                      | FCNotEqual     -- ^ not equal
                      | FCLessThan     -- ^ less than
                      | FCGreaterThan  -- ^ greater than
                      | FCLessEqual    -- ^ less equal
                      | FCGreaterEqual -- ^ greater equal
                      | FCNull         -- ^ property is null (the query parameter value is ignored and can be omitted)
                      | FCNotNull      -- ^ property is not null (the query parameter value is ignored and can be omitted)
                      | FCLike         -- ^ like expression (supports % and _ as placeholders, similar to SQL LIKE)
                      | FCNotLike      -- ^ not like expression
                      | FCILike        -- ^ like expression, ignoring case
                      | FCNotILike     -- ^ not like expression, ignoring case
                      | FCIn           -- ^ the property value is in the specified list of values, the query parameter value must be a JSON array with the values in the correct type, for example ?customerNumber-in=["1006","1007"]
                      | FCNotIn        -- ^ the property value is not in the specified list of values
                      deriving (Bounded, Enum, Eq, Show)
