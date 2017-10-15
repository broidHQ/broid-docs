# Broid + Line

## Create your Line account

Go on the Apple Appstore, or the Google Play Store, and download the Line app

Once you've downloaded it, create your account

====

## Login to the Line @Manager portal

Navigate to the <a href="https://business.line.me/en/services/bot" target="_blank">Line</a>, click on "Start using messaging API" and login with your account

====

## Configure your Line Account

On the “Bot Settings” page, click Enable API.

====

Select Allow for “Use webhooks” under “Request Settings”

====

In the “Messaging API” section, select the LINE Developers button to go to the Channel Console.

====

Issue a Channel access token for accessing APIs, by clicking ISSUE for the “Channel access token” item

## Activate your Channel on Broid

Activate your channel on the Broid dashboard by submiting your access token

====

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
