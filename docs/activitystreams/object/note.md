# Note

|                    | Description                                          |
|-------------------:|:-----------------------------------------------------|
| content ``string`` | The content of the message encoded as a JSON string. |

!!! tip ""

    Example object

```json
{
  "@context": "https://www.w3.org/ns/activitystreams",
  "type": "Create",
  "generator": {
    "id": "",
    "type": "Service",
    "name": "discord"
  },
  "object": {
    "type": "Note",
    "content": "hello world edited",
    "id": "",
  },
  "to": {
    "type": "Person",
    "id": ""
  }
}
```
