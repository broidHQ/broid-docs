# Broid + Discord

## Setup your Discord account

Create a Discord account, or sign-in to your Discord account

====

## Create a Discord App

Go on Discord Dashboard, select the Application option and click on Create New App.

====

Fill in the Name, and Description, and create the application

====

## Get your credentials

You now have access to your Client ID and your secret key.

====


## Activate your Channel on Broid

Activate your channel on the Broid dashboard by submiting your Client ID

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
