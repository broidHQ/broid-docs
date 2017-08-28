# Broid + Slack

## Create a Slack App/Bot

To create a new Slack app, you need to follow <a href="https://api.slack.com/apps" target="_blank">this link</a>.
![Slack create app](/images/integrations/channel-slack-1.png)

Enter your **App Name** and select your **Slack Team** name. If you don't have a team yet, you can create one by following this <a href="https://slack.com/signin" target="_blank">link</a>.
![Slack app info](/images/integrations/channel-slack-2.png)

## Get your credentials

Once your app/bot has been created, you can get your credentials.
Go to **Settings** > **Basic Information**, scroll down to the _App Credentials_ section and copy your Client Id and Client Secret available.
![Slack app credentials](/images/integrations/channel-slack-3.png)

## Add a new bot user

Create a new bot user.
![tabs slack bot](/images/integrations/channel-slack-4.png)

Now you can run your Broid Bot locally, and make a request with your **Client ID** and your **Client Secret** available on the _App Credentials_ section.

## Set the OAuth redirect URL

Fill the **Redirect URL** with the **OAuth URL** of your channel.
![tabs slack OAuth](/images/integrations/channel-slack-5.png)

## Enable interactive messages

Fill and enable the **Request URL** with the **Events URL** of your channel.
![tabs slack inte](/images/integrations/channel-slack-6.png)

## Fill the Events redirect URL

Fill and enable the **Request URL** with the **Events URL** of your channel.
![tabs slack events](/images/integrations/channel-slack-7.png)

Scroll down to the **Subcribe to Bot Events** section, and enable the following events:

* _message.channels_
* _message.im_

![tabs slack subscribe](/images/integrations/channel-slack-8.png)

## Activate your Channel

TODO when the dashboard will be ready

## Your bot

### Ngrok

* Download on your computer the appropriate version of [Ngrok](https://ngrok.com/download)
* Open a new tab in your terminal:
```
./ngrok http 8080
```
* Copy past the ``` https://*******ngrok.io``` you got, you will need it for the next steps
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
