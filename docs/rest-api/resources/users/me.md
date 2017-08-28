# Get your account information

The account associated with the token.

```definition
  GET https://api.broid.ai/1/users/me
```

### Returns

A dictionary with a ``data`` property about the account associated with the token. __This request should never return an error.__

```bash
curl -X GET \
    -H "Authorization: Bearer {USER_JWT_TOKEN}" \
    https://api.broid.ai/1/users/me
```

!!! tip ""

    Example `response` object

```json
{
	"id": 151935909829345281,
	"created_at": "2017-07-17T19:45:57",
	"updated_at": "2017-07-17T19:45:57",
	"team_id": 151935909829279745,
	"name": "John Doe",
	"state": "enable"
}
```
