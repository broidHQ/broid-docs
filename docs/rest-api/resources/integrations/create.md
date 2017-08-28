# Create an integration

Creates a new integration object.

```definition
  POST https://api.broid.ai/1/integrations
```

### Returns

Returns an integration object if the call succeeded. The returned object will have name, and id informations.

### The parameters

| BODY                       | Option Or required |
|:---------------------------|:-------------------|
| application_id ``int64``   | required           |
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
  -X POST \
  -d '{"application_id": 152320555339696859, "name": "slack", "state":"enable", "token": "<token>"}' \
  https://api.broid.ai/1/integrations
```

```json
{
	"id": 152320555339565787,
	"created_at": "2017-07-17T19:45:57",
	"updated_at": "2017-07-17T19:45:57",
	"application_id": 152320555339696859,
	"name": "slack",
	"state": "enable",
	"token": "<token>"
}
```
