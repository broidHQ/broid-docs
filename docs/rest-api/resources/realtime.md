# Realtime

Realtime is Broid's form of real-time communication over secure websockets. Clients will receive events and data over the realtime connections they are connected to and send data over the REST API.

The first step to establish a real-time connection is to request a real-time URL through the __GET Realtime API__ endpoint. Using the "url" field from the response you can then create a new secure websocket connection that will be used for the duration of your real-time session.

## The Realtime object

| ATTRIBUTES           |                          |
|:---------------------|:-------------------------|
| url ``type: string`` | Websocket url to connect |


## Request a real-time

To request a websocket url you need to use the credentials associated with an application.

```bash
  GET http://api.broid.ai/1/realtime
```


```bash
curl -X GET \
    -H "Authorization: Bearer {APPLICATION_JWT_TOKEN}" \
    https://api.broid.ai/1/realtime
```

!!! tip ""
    __NOTE__: These URLs are only valid 30 seconds.


```json
{
  "url": "wss://<real-time-url>"
}
```
