# Context

The context is usefull to representing message leaving in a thread (Slack thread, Flowdock thread etc..)

Context object is representing by fields:

|                    | Description                                            |
|-------------------:|:-------------------------------------------------------|
|      id ``string`` | the identifier of the context (provide by the channel) |
| content ``string`` | the value of the context.                              |
|    name ``string`` | A plain-text name for the context.                     |
|    type ``string`` | should always be `Object`                              |
