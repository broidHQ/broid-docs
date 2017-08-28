# Broid + Kik

## Download Kik on your iPhone or your Android device

Download Kik from the App store or Google Play store. 

## Create your account on Kik

Follow the procedure to create your account if you don't already have one.

====

## Scan your bot code

Scan the code that appears on your Kik app by following <a href="https://dev.kik.com/" target="_blank">this link</a>. 

====

Log in to your dashboard using Botsworth.

## Create your bot

Kik's Botsworth to create a new bot. It is a step-by-step guide to create your own bot on Kik.

====

## Get your bot name and your API key

On your computer, go to the Configuration menu to see the settings of your bot. 

====

You can now access your username and your API Key, you will need them for the next step.

## Activate your Channel

Enter your username and your API Key on the Broid Dashboard

TODO when the dashboard will ready

## Your bot

### Ngrok

* Download on your computer the appropriate version of [Ngrok](https://ngrok.com/download)
* Open a new tab in your terminal:
```
./ngrok http 8080
```
* Copy past the ``` https://*******ngrok.io``` you get, you will need it for the next step
* Leave your Ngrok serveur running

## Your bot

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
