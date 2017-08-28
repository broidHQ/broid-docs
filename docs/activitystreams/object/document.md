# Document

|                      | Description                                       |
|---------------------:|:--------------------------------------------------|
|   content ``string`` | A plain-text description for the document.           |
|      name ``string`` | A plain-text name for the document.                  |
|       url ``string`` | Identifies one link where the document can be reach. |
| mediaType ``string`` | identifies the MIME media type of the document.      |
|      type ``string`` | must be `Document`     |

__Note: [Document](/activitystreams/object/document) message is any file others than Image, Video or Audio.__

!!! tip ""

    Example `document` object

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
    "url": "http://images.nationalgeographic.com/wpf/media-live/photos/000/090/cache/african-elephant-standing_9033_600x450.pdf",
    "mediaType": "application/pdf"
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
