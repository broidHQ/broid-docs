# Delete an application

Permanently deletes an application. It cannot be undone.

| ARGUMENTS             |                                                 |
|:----------------------|:------------------------------------------------|
| application ``int64`` | The identifier of the application to be deleted |

```definition
  DELETE https://api.broid.ai/1/applications/{APPLICATION_ID}
```

### Returns

Returns a ``NO CONTENT`` HTTP CODE. If the application ID does not exist, this call returns an [error](/errors/).

```bash
curl -X DELETE -H "Content-Type: application/json" \
    -H "Authorization: Bearer {USER_JWT_TOKEN}" \
    https://api.broid.ai/1/applications/77669839702851584
```
