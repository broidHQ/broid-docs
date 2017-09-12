---
title:  Build a hello world app with the WebMessenger
description: ""
date:   2017-07-10 00:00:00 -0700
categories:
author: "Dustin Blackman"
---

# Webmessenger Hello World

This tutorial will bring you through the steps of connecting to the Broid Webmessenger using the Broid API Javascript SDK in NodeJS, and creating a simple Hello World.

## Setup the backend

Create a new project and install the SDK.

```bash
npm init
npm i --save @broid/api-sdk
```

Create an index file importing the SDK and initializing it. You can grab your `secret` and `secretID` from the Broid dashboard.

```javascript
const BroidSDK = require("@broid/api-sdk");

const sdk = new BroidSDK({
  secretID: "SECRET_ID",
  secret: "SECRET",
});

```

Initialize the messages socket by calling `sdk.realtime()`. This returns an [Observable](http://reactivex.io/documentation/observable.html) that emits new messages that will come from the Webmessenger.

```javascript
sdk.realtime().then((socket) => {
  socket.subscribe({...});
});
```

And lastly we can now process the messages that are emitted from the socket observable. The socket will emit two types of messages:
- `system` messages, such as `connect` and `disconnect` events.
- `chat` messages, activity stream events from the webmessenger.

For this tutorial, we'll be ignoring the system messages and handling the chat messages from the WebMessenger. We will handle the chat messages with a nice reply from the backend server. Each message needs a unique ID to indentity it, so we've included [uuid](https://www.npmjs.com/package/uuid) to generate one for us.

Here's the full example:

```javascript
const BroidSDK = require("@broid/api-sdk");
const uuidv4 = require("uuid/v4");

const sdk = new BroidSDK({
  secretID: 'SECRET_ID',
  secret: 'SECRET',
});

sdk.realtime().then((socket) => {
  socket.subscribe({
    error: (err) => console.error(`Something went wrong: ${err.message}`),
    next: (event) => {
      // This is a system message
      if (!event["@context"]) {
        return;
      }

      // Build an activity stream based off the initial messages, you can also build a fresh activity stream if you wish.
      const reply = Object.assign({}, event, {
        to: reply.actor,
        object: {
          id: uuidv4(),
          type: "Note",
          content: `Hello ${reply.actor.name}, from the backend!`
        }
      });

      // Send the newly created activity stream back to the webmessenger.
      sdk.sendMessage(reply)
        .then(() => console.log("Message sent!"))
        .catch((err) => console.error(err));
    }
  });
});
```

That's it! You now have a fully working backend for handling messages with Broid WebMessenger. Head over to the next section for setting up the WebMessenger on your site.


## Setup Broid Webmessenger

You can configure the Webmessenger on your website in just two easy steps. First, add the Webmessenger snippet to the end of your page.

```html
<script src="https://cdn.broid.ai/snippet.latest.js"></script>
```

Second is configuring the snippet with your credentials and prefered customizations.

- `backendURL` is where the snippet should be loaded from, set `https://webmessenger.broid.ai/`.
- `appID` is the application ID from the WebMessenger which can be grabbed from the Broid dashboard.
- `name` is the name presented to users.
- `welcome.message` is the introduction message shown to users when the client the webmessenger button.

```html
<script>
  BroidWebMessenger({
    backendURL: "https://webmessenger.broid.ai/",
    appID: "MY-APP-ID",
    name: "Hello World Bot",
    welcome: {
      message: "Hey there! The backend is listening, why not say hello?"
    }
  });
</script>
```

Here's our full example:

```html
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Hello World!</title>
</head>
<body>
  <script src="https://cdn.broid.ai/snippet.js"></script>
  <script>
    BroidWebMessenger({
      backendURL: "https://webmessenger.broid.ai/",
      appID: "MY-APP-ID",
      name: "Hello World Bot"
    });
  </script>
</body>
</html>
```

That's it! Webmessenger is now fully connected to your backend. Feel free to say hello!
