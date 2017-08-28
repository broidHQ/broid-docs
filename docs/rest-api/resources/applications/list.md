# List all applications

Returns a list of your applications. The applications are returned sorted by creation date, with the most recent applications appearing first.

```definition
  GET https://api.broid.ai/1/applications
```

### Returns

A dictionary with a ``data`` property that contains an array of up to limit applications. Each entry in the array is a separate application object. If no more application are available, the resulting array will be empty. __This request should never return an error.__

```bash
curl -X GET \
    -H "Authorization: Bearer {USER_JWT_TOKEN}" \
    https://api.broid.ai/1/applications
```

!!! tip ""

    Example `response` object

```json
{
  "data": [
    {
      "id": 152320555339696859,
    	"created_at": "2017-07-17T19:45:57",
    	"updated_at": "2017-07-17T19:45:57",
    	"team_id": 152320555339500251,
    	"owner_id": 152320555339565787,
    	"name": "fluffy-good-bye-4440",
    	"state": "enable",
    	"webhook_url": null
    },
    {...},
    {...}
  ]
}
```
