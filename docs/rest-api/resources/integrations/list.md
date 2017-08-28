# List of integrations by application

Returns a list of the Application's integrations. The integrations are returned sorted by creation date, with the most recent integrations appearing first.

```definition
  GET https://api.broid.ai/1/applications/{APPLICATION_ID}/integrations
```

### Returns

A dictionary with a ``data`` property that contains an array of up to limit integrations. Each entry in the array is a separate integration object. If no more integration are available, the resulting array will be empty. __This request should never return an error.__

```bash
curl -X GET \
    -H "Authorization: Bearer {APPLICATION_JWT_TOKEN}" \
    https://api.broid.ai/1/applications/152320555339696859/integrations
```

```json
{
  "data": [
    {
			"id": 152320555339565787,
			"created_at": "2017-07-17T19:45:57",
			"updated_at": "2017-07-17T19:45:57",
			"application_id": 152320555339696859,
			"name": "slack",
			"state": "enable",
			"token": "<token>"
    },
    {...},
    {...}
  ]
}
```
