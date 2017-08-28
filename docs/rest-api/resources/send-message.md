# Send a message

Prerequisite: Broids messages are distributed using Activity Stream 2.0. Read our documentation about [Activity Streams schema](/activitystreams/). 

## Sending a message

A `Note` is a text based message. 
Here's an example of us sending a new message to a user, John, that is using our WebMessenger integraton.

!!! tip ""

    Example a simple hello world `schema`

```json
{
  "@context": "https://www.w3.org/ns/activitystreams",
  "generator": {
    "id": "<service_id>",
    "name": "<service_name>",
    "type": "Service"
  },
  "object": {
    "content": "Hello world!",
    "id": "5000186376024662000",
    "type": "Note"
  },
  "target": {
    "id": "<id>",
    "name": "John",
    "type": "Person"
  },
  "type": "Create"
}
```

After an activity stream has been built, we can POST it to the Broid API so it can be passed on to John by encloding it
in a `message` object.

```bash
curl -X POST \
    -H "Authorization: Bearer {APPLICATION_JWT_TOKEN}" \
    -H "Content-Type: application/json" \
    -d '{"message: {"target":{"type":"Person","id":"user-id","name":"John"},"generator":{"type":"Service","id":"My-App-ID","name":"myapp"},"object":{"content":"Hello world!","type":"Note","id":"5000186376024662000"},"actor":{"type":"Person","id":"My-App-ID","name":"Sally"},"published":1484195107,"@context":"https://www.w3.org/ns/activitystreams","type":"Create"}}' \
    https://api.broid.ai/1/message
```
