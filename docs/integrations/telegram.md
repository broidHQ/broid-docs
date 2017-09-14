# Broid + Telegram

## Download Telegram on your smartphone

Download the Telegram Application on the Apple AppStore or the Google Play Store.

## Setup your Telegram account

Create a new account on Telegram

![image 1](/images/integrations/Telegram/image1.png)

## Chat with BotFather

Search for BotFather on the left meny, and engage in a conversation with Botfather, it is a step-by-step guide to create your own bot on Telegram.

![image 2](/images/integrations/Telegram/image2.png)

![image 3](/images/integrations/Telegram/image3.png)


## Ask for your token

Ask BotFather to get your token by typing the command `/token` in the conversation panel.  

![image 4](/images/integrations/Telegram/image4.png)

![image 5](/images/integrations/Telegram/image5.png)

Copy this token 

## Activate your Channel on Broid

Enter your Telegram token on the Broid Dashboard

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
