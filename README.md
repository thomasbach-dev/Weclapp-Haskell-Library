# Generation of Client Code #

To obtain the OpenAPI 3 spec of the API (taken from
[StackOverflow](https://stackoverflow.com/questions/59749513/how-to-convert-openapi-2-0-to-openapi-3-0)):

```sh
curl "https://converter.swagger.io/api/convert?url=https://www.weclapp.com/api/swagger.json" \
    -H "Accept: application/yaml" \
    -o ./openapi-specification.yml
```
