---
title:  How build Echo bot with Broid
description: ""
date:   2017-06-10 00:00:00 -0700
categories:
author: "Dustin Blackman"
---

# How build Echo bot with Broid

## Broid Developer Kit for Node.js

Broid Developer Kit for Node.js aims to ease your integration. This is a wrapper around the [Broid API](/rest-api/).

This library provides the low level functionalities needed to build reliable apps and projects on top of the Broid's API. It:

- handles reconnection logic and request retries
- provides easy method to handle REST API and Websocket

This library does not attempt to provide application level support, e.g. regex matching and filtering of the conversation stream.

## Requirements and Installation

You’ll need Node.js, as well as NPM. NPM has a [great tutorial to help you get started](https://docs.npmjs.com/getting-started/what-is-npm) if you don’t have these tools installed.
To install, you first need to create a new Node.js project. The simplest way is to use your computer’s terminal app to invoke

```bash
$ npm init
```

This script will prompt you to describe the app you are going to build, and create a file that NPM can use to help manage your project.
Once you have a working project, you can install Broid Developer Kit for Node.js as a dependency by invoking

```bash
$ npm install @broid/api-js-sdk
```
Once you’ve installed Broid Developer Kit for Node.js as a dependency you can start using it in your code.

## Basic Usage

Most Broid apps are interested in posting messages, and generally working with our REST API. Read on to learn how to use Broid Developer Kit for Node.js to accomplish these tasks.

### Posting a message with REST API

You’ll need a REST API JWT token to call any of the Broid REST API endpoints.

Your app will interact with the REST API through the Application object, which requires an application's jwt token to operate.

```javascript
const broidSDK = require("@broid/api-js-sdk");

const secretID = process.env.BROID_SECRET_ID || "";
const secret = process.env.BROID_SECRET || "";

const sdk = new broidSDK({
  secretID: secretID,
  secret: secret,
});

const reply = {
  "@context": "https://www.w3.org/ns/activitystreams",
  "type": "Create",
  "generator": {
    ...
  },
  "object": {
    "type": "Note",
    "content": "hello world"
  },
  "to": {
    ...
  }
};

sdk.sendMessage(reply)
  .then(() => console.log("me: ", reply))
  .catch((err) => console.error(err.message));
```

### Listening and Reply with a Echo Bot

You can find below a full example about how you can listening messages and reply by a simple echo message, one time

```javascript
const broidSDK = require("@broid/api-js-sdk");

const secretID = process.env.BROID_SECRET_ID || "";
const secret = process.env.BROID_SECRET || "";

const sdk = new broidSDK({
  secretID: secretID,
  secret: secret,
});

last replied = false;
const socket = sdk.realtime()
  .then((socket) => socket.subscribe({
		next: (data) => {
      if (!data['@context']) {
        // a system message is here
        return;
      }

      if (!replied) {
        replied = true;
        let reply = data;
        reply.to = reply.actor;
        reply.object.content = `echo: ${reply.object.content}`;

        sdk.sendMessage(reply)
          .then(() => console.log("me: ", reply))
          .catch((err) => console.error(err.message));
      }

    },
		error: (err) => console.error(`Something went wrong: ${err.message}`),
	}));
```
