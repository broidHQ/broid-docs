# Broid + Twilio

## Get your account credentials

Get your Account SID and Auth Token from your Twilio dashboard to create your channel.

====

## Get a phone number

Go on the Phone Numbers section of the console. Create a phone number if you don't already have one by clicking on the + sign. 

====

Get your phone number, you will need it to create your channel.

## Create your messaging service

Go on the Programmable SMS > Messaging Services section of the console, and create a new messaging service by clicking on the + sign. Name it and choose the Chat Bot/Interactive 2-Way use case 

====

Once done, pick the Service SID, you will need it later to create your channel.

## Setup your phone number

Go back on the Phone Numbers section and select your bot phone number. 

====

In the Messaging configuration section, set the Configure with block to Messaging Service and fill the Messaging Service block with the name of the service you've created in the previous step. 

====

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
