# Consistency

Broid operates at a scale where true consistency is impossible. Because of this, lots of operations in our API and in-between our services are [eventually consistent](https://en.wikipedia.org/wiki/Eventual_consistency). Due to this, client's actions can never be serialized and may be executed in any order (if executed at all). Along with these constraints, events in Broid may:

- Never be sent to a client
- Be sent exactly one time to the client
- Be sent up to N times per client
