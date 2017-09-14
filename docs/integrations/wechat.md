# Broid + WeChat

## Create your WeChat account

Go on the Apple Appstore, or the Google Play Store, and download the WeChat app

Once you've downloaded it, create your account

====

## Login to the WeChat Sandbox portal

Navigate to the <a href="http://admin.wechat.com/debug/sandbox" target="_blank">WeChat Sandbox portal</a>, click on the Log In button, open the WeChat app, select Discover from the bottom bar, tap on Scan QR code and scan the login code on the screen

====

## Configure your WeChat Account

Locate the API config panel in the WeChat sandbox account dashboard and click Edit

====

Set you own token value

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
