# Introduction

Broid's events use the [Activity Streams 2.0](https://www.w3.org/TR/activitystreams-vocabulary/#introduction) as the
base of the schema object to describe the incoming and outgoing messages/events.

## Incoming Message

An incoming message is composed of multiple elements. You can see a clear definition of each of them [here](/activitystreams/base/)

|                         | Description                                                                     |
|------------------------:|:--------------------------------------------------------------------------------|
|         [type](/activitystreams/base/#type) ``string``   | The type of the message (Create, Update, Delete) |
|        [actor](/activitystreams/base/#actor) ``object``  | The entity sending you the message              |
|       [target](/activitystreams/base/#target) ``object`` | The entity receiving the message               |
|       [object](/activitystreams/base/#object) ``object`` | The message itself                           |
|    [generator](/activitystreams/base/#generator) ``object`` | The source of the message            |
| published ``timestamp`` | The timestamp at which the message was published                               |


## Outgoing Message

An outgoing object have near the same structure of the received object.
The only change you need to handle is the field `target` should be replaced by `to`.

|                   | Description               |
|------------------:|:--------------------------|
|   [type](/activitystreams/base/#type) ``string`` | The type of the message (Create, Update, Delete)   |
|     [to](/activitystreams/base/#target) ``object`` | Where the message will go |
| [object](/activitystreams/base/#object) ``object`` | The message itself             |
