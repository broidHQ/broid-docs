# Disable an application

Disable an application.

| ARGUMENTS             |                                                 |
|:----------------------|:------------------------------------------------|
| application ``int64`` | The identifier of the application to be disabled |

```definition
  DELETE https://api.broid.ai/1/applications/{APPLICATION_ID}/disable
```

### Returns

Returns a ``NO CONTENT`` HTTP CODE. If the application ID does not exist, this call returns an [error](/errors/).

```bash
curl -X DELETE -H "Content-Type: application/json" \
    -H "Authorization: Bearer {USER_JWT_TOKEN}" \
    https://api.broid.ai/1/applications/77669839702851584/disable
```
