# Haskell Bindings for the Weclapp API #

Code is generated from the swagger file.

# Generation of Client Code #

To obtain the OpenAPI 3 spec of the API (taken from
[StackOverflow](https://stackoverflow.com/questions/59749513/how-to-convert-openapi-2-0-to-openapi-3-0)):

```sh
curl "https://converter.swagger.io/api/convert?url=https://www.weclapp.com/api/swagger.json" \
    -H "Accept: application/yaml" \
    -o ./openapi-specification.yml
```

Then run
[openapi3-code-generator](https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator/)
and move files to their places:

```sh
openapi3-code-generator-exe && rm -rf src/ && mv out/* . && rmdir out/
```

The code generator will pick up the configuration from <./openapi-configuration.yml>.
