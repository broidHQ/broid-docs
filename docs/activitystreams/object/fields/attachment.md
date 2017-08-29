
# Attachment

## Basics

One or multiple resources attached or related to an object that potentially requires special handling.
In Broid context this can be button, quick reply or media object.

`Attachment` field should be always an array of this object.


For example, when images is attached to a message:

```json
"attachment": [
  {
    "type": "Image",
    "content": "cat",
    "name": "cat",
    "mediaType": "image/jpeg",
    "url": "https://www.petfinder.com/wp-content/uploads/2012/11/91615172-find-a-lump-on-cats-skin-632x475.jpg"
  }
]
```

Or when a quick reply is sent:

```json
"attachment": [
  {
    "type": "Button",
    "content": "Broid",
    "name": "broid"
  },
  {
    "type": "Button",
    "content": "Google",
    "name": "google"
  }
]
```

## Button & Quick Reply

The difference between button and quick reply is defined by their space where you find it.
Button lives only in Media objects, and quick reply lives only in Simple message objects.
Otherwise the fields of this object should be the same:

|                      | Description                                                                                                                                                                         |
|---------------------:|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|       url ``string`` | the value of the button or quick reply                                                                                                                                              |
| mediaType ``string`` | identifies the MIME media type of the value. (usefull when you wan to handle differently the value, eg.: in Broid interactive chat 'text/html' open a new tab open the website url) [details](/activitystreams/object/fields/attachment/#button-quick-reply) |
|   content ``string`` | the description of the button.                                                                                                                                                      |
|      name ``string`` | the name of the button.                                                                                                                                                             |
|      type ``string`` | should always be `Button`                                                                                                                                                           |

### mediaTypes

Identifies the behaviour behound the button trigger.

|                      | Description                                                                                                                                                                    |
|---------------------:|:------------------------------------------------|
| text/html ``string`` | the button provide a HTLM/website url  (eg.: 'type' = 'web_url' in Facebook Messenger)          |
| application/vnd.geo+json ``string`` | the button provide a localisation action (eg.: 'content_type' = 'location' in Facebook Messenger)          |


