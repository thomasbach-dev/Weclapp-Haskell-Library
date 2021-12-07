-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}

-- | Contains all supported security schemes defined in the specification
module WeclappAPI.SecuritySchemes where

import qualified Data.Text.Internal
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Show
import qualified Network.HTTP.Client as Network.HTTP.Client.Request
import qualified Network.HTTP.Simple
import qualified WeclappAPI.Common

-- | Use this security scheme to use token in HTTP header for authentication. Should be used in a 'WeclappAPI.Common.Configuration'.
-- 
-- API token
-- 
-- @
-- 'WeclappAPI.Configuration.defaultConfiguration'
--   { configSecurityScheme = 'apiKeyInHeaderAuthenticationSecurityScheme' "token"
--   }
-- @
apiKeyInHeaderAuthenticationSecurityScheme :: Data.Text.Internal.Text ->
                                              WeclappAPI.Common.SecurityScheme
apiKeyInHeaderAuthenticationSecurityScheme = Network.HTTP.Simple.addRequestHeader "AuthenticationToken" GHC.Base.. WeclappAPI.Common.textToByte
