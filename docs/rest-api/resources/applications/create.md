# Create an application

Creates a new applications object.

```definition
  POST https://api.broid.ai/1/applications/
```

### Returns

Returns an application object if the call succeeded. The returned object will have name, and id informations.

### The parameters

| BODY                   | Option Or required                   |
|:-----------------------|:-------------------------------------|
| team_id ``int64``      | required                             |
| owner_id ``int64``     | required                             |
| state ``string``       | required                             |
| webhook_url ``string`` | optional                             |
| name ``string``        | optional (min: 6 characters minimum) |


```bash
curl -H "Content-Type: application/json" \
  -H "Authorization: Bearer {USER_JWT_TOKEN}" \
  -X POST \
  -d '{"team_id": 152320555339500251, "owner_id": 152320555339565787, "state":"enable"}' \
  https://api.broid.ai/1/applications
```

!!! tip ""

    Example `response` object

```json
{
	"id": 152320555339696859,
	"created_at": "2017-07-17T19:45:57",
	"updated_at": "2017-07-17T19:45:57",
	"team_id": 152320555339500251,
	"owner_id": 152320555339565787,
	"name": "fluffy-good-bye-4440",
	"state": "enable",
	"webhook_url": null
}
```
