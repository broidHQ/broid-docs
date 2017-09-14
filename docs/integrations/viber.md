# Broid + Viber

## Request your Viber Bot Account

Request you Viber Bot Account, or sign-in to your Viber Bot account at <a href="https://developers.viber.com/docs/general/getting-started-with-bots/" target="_blank">this link</a>.

![image 1](/images/integrations/Viber/image1.png)

## Fill in your Application

Fill in all the required fields, then Save you application

![image 2](/images/integrations/Viber/image2.png)

## Get your credentials

Once your application has been approved by Viber, you will be able to access your token, username, and webhookURL

====

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
