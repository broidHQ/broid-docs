# Definition

This is an object representing your account. The API allows you to view and update your account.

## The user object

|        ATTRIBUTES |                                          |
|------------------:|:-----------------------------------------|
|      id ``int64`` | The id of your account                   |
| team_id ``int64`` | The team id of your account               |
|   name ``string`` |                                          |
|  email ``string`` |                                          |
|  state ``string`` | Your account state (`enable`, `disable`) |

!!! tip ""
<div style="text-align: left">
      <h3><i class="fa fa-code" style="width: 25px; text-align: center"></i> Example of a `response` object</h3>
    </div>

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
