# Place

The Object type Place represents a logical or physical location.
The fields representing this object is:

|                     | Description                                                                   |
|--------------------:|:------------------------------------------------------------------------------|
|  content ``string`` | The content or textual representation of the Object encoded as a JSON string. |
|     name ``string`` | A plain-text name for the place.                                              |
|  latitude ``float`` |                              |
| longitude ``float`` |                                   |
|     type ``string`` | should always be `Place`                                                      |


!!! tip ""

    Example `Place` object

```json
{
	"@context": "https://www.w3.org/ns/activitystreams",
	"actor": {
		"id": "",
		"name": "John Doe",
		"type": "Person"
	},
	"generator": {
		"id": "",
		"name": "slack",
		"type": "Service"
	},
	"object": {
    "id": "148652394682185354",
    "latitude": 45.531106,
    "longitude": -73.554582,
    "name": "Café Touski",
    "type": "Place"
	},
	"published": 1484195107,
	"target": {
		"id": "",
		"name": "Sally Doe",
		"type": "Person"
	},
	"type": "Create"
}
```
