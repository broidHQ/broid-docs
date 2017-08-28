# Get an application

Returns the information about one specific application.

```definition
  GET https://api.broid.ai/1/applications/{APPLICATION_ID}
```

### Returns

A dictionary with a ``data`` property about the application.

```bash
curl -X GET \
    -H "Authorization: Bearer {USER_JWT_TOKEN}" \
    https://api.broid.ai/1/applications/152320555339565787
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
