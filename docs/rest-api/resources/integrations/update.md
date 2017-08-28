# Update an integration

Update an integration object

```definition
  PUT https://api.broid.ai/1/integrations/{INTEGRATION_ID}
```

### Returns

Returns a ``NO CONTENT`` HTTP CODE. If the integration ID does not exist, this call returns an [error](/errors/).

### The parameters

| BODY                       | Option Or required |
|:---------------------------|:-------------------|
| name ``string``            | required           |
| state ``string``           | required           |
| token ``string``           | optional           |
| secret ``string``          | optional           |
| refresh ``string``         | optional           |
| username ``string``        | optional           |
| address ``string``         | optional           |
| consumer_key ``string``    | optional           |
| consumer_secret ``string`` | optional           |


```bash
curl -H "Content-Type: integration/json" \
  -H "Authorization: Bearer {APPLICATION_JWT_TOKEN}" \
  -X PUT \
  -d '{"name": "slack", "token": "<token_2>"}' \
  https://api.broid.ai/1/integrations/152320555339565787
```
