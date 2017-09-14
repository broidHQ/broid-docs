# Broid + CALLR

## Create your CALLR account

Create a new app on CALLR with <a href="https://callr.com/" target="_blank">this link</a>. Click on « Sign up » to make an account on the website and follow the steps. 

![image 1](/images/integrations/Callr/image1.png)

## Get your credentials

You should receive an email with your credentials (login and password)

![image 2](/images/integrations/Callr/image2.png)

Make sur you validate your account via email. It's the only way to enable SMS sending

## Setup your channel on Broid

Now on the Broid Dashboard, create your channel with your credentials, on the _App Credentials_ section

## Activate your Channel

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
