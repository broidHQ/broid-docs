# Broid + Alexa

## Register for an Amazon developer account

Go ahead and create a free developer account at <a href="https://developer.amazon.com" target="_blank">Amazon Developer</a>.

![image 1](/images/integrations/Alexa/image1.png)

## Create a device and security profile

Follow the steps  <a href="https://github.com/alexa/alexa-avs-sample-app/wiki/Create-Security-Profile" target="_blank">here</a> to register your product and create a security profile.

![image 2](/images/integrations/Alexa/image2.png)

Make sure your Allowed Origins and Allowed Return URLs are set under Security Profile > Web Settings

Allowed Origins: https://localhost:3000
Allowed Return URLs: https://localhost:3000/authresponse

## Activate your Channel on Broid

Activate your channel on the Broid dashboard by submiting your IDs

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
