# Collection (Carousel)

A carousel basically is a collection of media objects in an attachment array.
So when you want to send a diaporoma you need to create a `Collection` object and add as many items you want in your carousel.
An item is basicaly a message object with all fields supported.

Example

```json
"object": {
    "type": "Collection",
    "items": [
      {
        "type": "Image",
        "name": "Product A",
        "content": "a cool product a",
        "url": "https://unsplash.it/200/300",
        "attachment": [{
            "type": "Button",
            "content": "Broid's website",
            "name": "broid",
            "mediaType": "text/html",
            "url": "https://www.broid.ai"
        }, {
            "type": "Button",
            "content": "Add to cart",
            "name": "Add to cart",
            "url": "action=buy&itemid=111"
        }]
      },
      {
        "type": "Image",
        "name": "Product B",
        "content": "a cool product b",
        "url": "https://unsplash.it/g/200/300",
        "attachment": [{
            "type": "Button",
            "content": "Broid's website",
            "name": "broid",
            "mediaType": "text/html",
            "url": "https://www.broid.ai"
        }, {
            "type": "Button",
            "content": "Add to cart",
            "name": "Buy this product",
            "url": "action=buy&itemid=222"
        }]
      }
    ]
  }
```
