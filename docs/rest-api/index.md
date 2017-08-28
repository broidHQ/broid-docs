# Rest API

Broid's API is based around two core layers:

- a HTTPS/REST API for general operations,

- and a persistent secure websocket based connection for sending and subscribing to real-time events.

Our API has predictable, resource-oriented URLs, and uses HTTP response codes to indicate API errors. We use built-in HTTP features, like HTTP authentication and HTTP verbs, which are understood by off-the-shelf HTTP clients. We support cross-origin resource sharing, allowing you to interact securely with our API from a client-side web application (though you should never expose your secret API key in any public website's client-side code). A JSON format is returned by all API responses, including errors.


```bash
https://api.broid.ai/
```
