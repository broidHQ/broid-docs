# Image

|                      | Description                                       |
|---------------------:|:--------------------------------------------------|
|   content ``string`` | A plain-text description for the image.           |
|      name ``string`` | A plain-text name for the image.                  |
|       url ``string`` | Identifies one link where the image can be reach. |
| mediaType ``string`` | identifies the MIME media type of the image.      |
|      type ``string`` | must be `Image`    |

__Note: [Document](/activitystreams/object/document) message is any file others than Image, Video or Audio.__

!!! tip ""

    Example `Image` object

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
    "type": "Image",
    "id": "",
    "url": "http://images.nationalgeographic.com/wpf/media-live/photos/000/090/cache/african-elephant-standing_9033_600x450.jpg",
    "mediaType": "image/jpeg"
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
