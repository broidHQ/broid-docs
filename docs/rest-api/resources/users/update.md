# Update your account

Update an user object

```definition
  PUT https://api.broid.ai/1/users/{USER_ID}
```

### Returns

Returns a ``NO CONTENT`` HTTP CODE. If the user ID does not exist, this call returns an [error](/reference#errors).

### The parameters

| BODY                | Option Or required |
|:--------------------|:-------------------|
| email ``string``    | required           |
| state ``string``    | required           |
| name ``string``     | optional           |
| password ``string`` | optional           |


!!! tip ""

    Example `request` query

```bash
curl -H "Content-Type: user/json" \
  -H "Authorization: Bearer {USER_JWT_TOKEN}" \
  -X PUT \
  -d '{"name":"johny doe", "email":"{EMAIL}", "team_id": 151935909829279745, "state":"enable"}' \
  https://api.broid.ai/1/users/151935909829345281
```
