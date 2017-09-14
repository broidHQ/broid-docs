# Broid + Groupme

## Create your Groupme account

Create a Groupme account, or sign-in to your Groupme account at <a href="https://web.groupme.com/signin" target="_blank">this link</a>.

![image 1](/images/integrations/GroupMe/image1.png)

## Create a new Application

Go to the <a href="https://web.groupme.com/signin" target="_blank">developer page</a>, and create a New Application.

![image 2](/images/integrations/GroupMe/image2.png)

Fill in all the required fields, then Save you application

![image 3](/images/integrations/GroupMe/image3.png)

## Get your credentials

You now have access to your access token.

![image 4](/images/integrations/GroupMe/image4.png)

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
