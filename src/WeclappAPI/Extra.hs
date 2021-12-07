{-# LANGUAGE OverloadedStrings #-}

module WeclappAPI.Extra
  ( apiTokenSecurityScheme,
  )
where

import qualified Data.Text as T
import qualified Data.Text.Encoding as TE
import qualified Network.HTTP.Client as HC
import WeclappAPI.Common

apiTokenSecurityScheme :: T.Text -> SecurityScheme
apiTokenSecurityScheme token req = req {HC.requestHeaders = newHeaders}
  where
    newHeaders = ("AuthenticationToken", TE.encodeUtf8 token) : oldHeaders
    oldHeaders = HC.requestHeaders req
