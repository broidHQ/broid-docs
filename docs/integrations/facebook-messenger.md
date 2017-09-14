# Broid + Facebook Messenger

## Create a Facebook Page

To create a new Facebook page, you need to follow <a href="https://www.facebook.com/bookmarks/pages" target="_blank">this link</a>.

![image 1](/images/integrations/Facebook/image1.png)

## Create a Facebook App

Create a new Facebook App following <a href="https://developers.facebook.com/" target="_blank">this link</a>.

![image 2](/images/integrations/Facebook/image2.png)

## Get your token

On the left menu, add a new product and select Messenger. Select your Facebook page and copy the token: 

![image 4](/images/integrations/Facebook/image4.png)

Copy the Page token, you will need it later to create your channel.

## Get your app secret

Go on the dashboard tab, show and copy your App secret. 

![image 5](/images/integrations/Facebook/image5.png)

## Set the Facebook callback URL

Now go on the Messenger menu and click on the Setup Webhook button. 

![image 6](/images/integrations/Facebook/image6.png)

Set the Callback Url and the Verify Token with the ones we provide.

![image 7](/images/integrations/Facebook/image7.png)

## Activate your page

In this webhook section, select your page in the drop down menu, and click on subscribe.

![image 8](/images/integrations/Facebook/image8.png)

## Activate your Channel

Now on the Broid Dashboard, create your channel with the App Secret and the Page Token, on the _App Credentials_ section

## Configure your Webhook on Facebook

go back to the <a href="https://developers.facebook.com/" target="_blank">Facebook Developer page</a> and add a new webhook.

![image 9](/images/integrations/Facebook/image9.png)

And subscribe your page to the webhook you just created.

![image 10](/images/integrations/Facebook/image10.png)

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
