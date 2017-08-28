# Definition

This is an object representing an integration associated to your account. The API allows you to create, delete, and update integrations. You can retrieve list of integrations as well by [Application](/rest-api/resources/applications).

## The integration object

|                 ATTRIBUTES |                                                |
|---------------------------:|:-----------------------------------------------|
|               id ``int64`` |                                                |
|   application_id ``int64`` |                                                |
|            name ``string`` | The valid name of the integration (eg.: slack) |
|           token ``string`` |                                                |
|          secret ``string`` |                                                |
|         refresh ``string`` |                                                |
|        username ``string`` |                                                |
|         address ``string`` |                                                |
|    consumer_key ``string`` |                                                |
| consumer_secret ``string`` |                                                |
|           state ``string`` | The integration state (`enable`, `disable`)    |


```json
{
	"id": 152320555339565787,
	"created_at": "2017-07-17T19:45:57",
	"updated_at": "2017-07-17T19:45:57",
	"application_id": 152320555339696859,
	"name": "slack",
	"state": "enable",
	"token": "<token>"
}
```
