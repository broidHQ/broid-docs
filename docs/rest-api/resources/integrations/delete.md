# Delete an integration

Permanently deletes an integration. It cannot be undone.


| ARGUMENTS             |                                                 |
|:----------------------|:------------------------------------------------|
| integration ``int64`` | The identifier of the integration to be deleted |

```definition
  DELETE https://api.broid.ai/1/integrations/{INTEGRATION_ID}
```

### Returns

Returns a ``NO CONTENT`` HTTP CODE. If the integration ID does not exist, this call returns an [error](/errors/).

```bash
curl -X DELETE -H "Content-Type: integration/json" \
    -H "Authorization: Bearer {APPLICATION_JWT_TOKEN}" \
    https://api.broid.ai/1/integrations/152320555339565787
```
