# Overview

This configuration is used to initialize the web messenger (*WebMessenger*) integration on your website. It allows you to go in depth and trigger specific events, change icons and colors, or simply to keep the default settings.

## Configuration

| Variable         | Type     | Required | Description                                                                                                    |
|------------------|----------|----------|----------------------------------------------------------------------------------------------------------------|
| backendURL       | string   | true     | The WebMessenger application url, usually should always be `https://webmessenger.broid.ai/`                    |
| channelID            | string   | true     | The channel/integration ID found on the Broid dashboard.                                                               |
| name             | string   | true     | The name of your bot displayed on WebMessenger.                                                                |
| avatarURL        | string   | false    | A 30x30 png for the avatar of your bot on WebMessenger.                                                        |
| iconURL          | string   | false    | A 30x30 png for the icon of the button used to initialize WebMessenger.                                        |
| theme            | object   | false    | Theme is used to customize aspects of the webmessenger to fit your existing websites look and feel.            |
| theme.main_color | string   | false    | Color code for the main color used throughout WebMessenger.                                                    |
| events           | object   | false    | Events are used to trigger other actions in your Javascript application when an event occures on webmessenger. |
| events.onWelcome | function | false    | Fires when the welcome view is shown.                                                                              |
| events.onButton  | function | false    | Fires when the open view button is pressed.                                                                    |
| events.onChat    | function | false    | Fires when a chat message is sent or received.                                                                 |
| events.onInitialized    | function | false    | Fires when the widget is initialized.                                                                 |
| whisper          | object   | false    | Configuration for the whisper view.                                                                            |
| whisper.message  | string   | false    | Welcome message show to users on the welcome view.                                                             |
| whisper.button   | string   | false    | Configuration for the whisper button if needed.                                                                |
| whisper.button.name | string   | false    | Name displayed for the CTA. (This value is also present in the callback payload)                            |
| whisper.button.url  | string   | false    | Payload send when the CTA is clicked.                                                                       |

Example:

```javascript
  const bm = BroidWebMessenger({
    backendURL: "https://webmessenger.broid.ai/",
    channelID: "THE-ID",
    name: "My Bot",
    avatarURL: "http://broid.ai/images/placeholders/30x30.png",
    iconURL: "http://broid.ai/images/placeholders/30x30.png",
    theme: {
      main_color: "#FF0000"
    },
    events: {
      onWelcome: (data) => console.log("WELCOME: ", data),
      onButton: (data) => console.log("BUTTON: ", data),
      onChat: (data) => console.log("CHAT: ", data),
      onInitialized: (data) => console.log("onInitialized"),
    },
    whisper: {
      message: "Hey there! How can we help you?"
    }
  });
  
  // Set display of the widget container to 'block'
  // bm.show(); 

  // Set display of the widget container to 'none'
  // bm.hide(); 

  // Simulate the click on the button to open the Whisper or the Chat window
  // bm.open();

  // Simulate the click on the close button to close the Whisper or the Chat window
  // bm.close();

```
