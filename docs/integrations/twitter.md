# Broid + Twilio

## Setup your Twitter account

Create a Twitter account, or sign-in to your twitter account

====

## Create a Twitter App

Go on Twitter App and click on Create New App.

====

Fill in the Name, Description and Website fields, and leave the Callback URL empty.

====

## Enable Direct Messages

Go in the Permissions tab of your application, and enable Read, Write and Access direct messages.

====

## Get your credentials

Go in the Keys and Access Tokens tab of your application, and click on Create your Access Token.

====

You now have access to your Consumer Key, Consumer Secret, Access Token and Access Token Secret.

## Activate your Channel

TODO when the dashboard is ready

## Set up your bot

### Ngrok

* Download on your computer the appropriate version of [Ngrok](https://ngrok.com/download)
* Open a new tab in your terminal:
```
./ngrok http 8080
```
* Copy past the ``` https://*******ngrok.io``` you get, you will need it for the next step
* Leave your Ngrok serveur running

### Your bot

A small example of echo bot:

```javascript
 import express from 'express'
 import bodyParser from 'body-parser'

 const app = express()
 app.set('port', process.env.PORT || 5000)
 app.use(bodyParser.json())

  app.listen(app.get('port'), () => {
   console.log('Our Broid bot is listening on port', app.get('port'))
 })
```
