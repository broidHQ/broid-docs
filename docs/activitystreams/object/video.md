# Video

|                      | Description                                       |
|---------------------:|:--------------------------------------------------|
|   content ``string`` | A plain-text description for the video.           |
|      name ``string`` | A plain-text name for the video.                  |
|       url ``string`` | Identifies one link where the video can be reach. |
| mediaType ``string`` | identifies the MIME media type of the video.      |
|      type ``string`` | must be `Video`     |

__Note: [Document](/activitystreams/object/document) message is any file others than Image, Video or Audio.__

!!! tip ""

    Example `Video` object

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
    "type": "Video",
    "id": "",
    "url": "http://images.nationalgeographic.com/wpf/media-live/photos/000/090/cache/african-,mpeg",
    "mediaType": "video/mpeg"
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
