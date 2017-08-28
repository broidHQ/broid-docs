# Broid + Facebook Messenger

## Create a Facebook Page

To create a new Facebook page, you need to follow <a href="https://www.facebook.com/bookmarks/pages" target="_blank">this link</a>.

====

## Create a Facebook App

Create a new Facebook App following <a href="https://developers.facebook.com/" target="_blank">this link</a>.

====

## Get your token

On the left menu, add a new product and select Messenger. Select your Facebook page and copy the token: 

====

Copy the Page token, you will need it later to create your channel.

## Get your app secret

Go on the dashboard tab, show and copy your App secret. 

====

## Setup your channel on Broid

Now on the Broid Dashboard, create your channel with the App Secret and the Page Token, on the _App Credentials_ section

====

## Set the Facebook callback URL

Now go on the Messenger menu and click on the Setup Webhook button. 

====

Set the Callback Url and the Verify Token with the ones we provide.

====

## Activate your page

In this webhook section, select your page in the drop down menu, and click on subscribe.

====

## Activate your Channel

TODO when the dashboard will ready

## Configure your Webhook on Facebook

go back to the <a href="https://developers.facebook.com/" target="_blank">Facebook Developer page</a> and add a new webhook.

====

And subscribe your page to the webhook you just created.

====

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
