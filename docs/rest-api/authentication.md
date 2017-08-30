# Authentication

Broid API uses JSON Web Token (JWT).
This is an open standard ([RFC 7519](https://tools.ietf.org/html/rfc7519)) that defines a compact and self-contained way to transmit information securely between parties as a JSON object. Since this information is digitally signed, it can be verified and trusted. JWTs can be signed using a secret (with the HMAC algorithm) or a public/private key pair using RSA.

Let's explain some concepts of this definition further.
  - Compact: Because of its smaller size, JWTs can be sent through an URL, POST parameter, or inside an HTTP header. Additionally, the smaller size means transmission is fast.
  - Self-contained: The payload contains all the required information about the user, avoiding the need to query the database more than once.

A JWT is composed of a header, a payload, and a signature. The payload contains information called claims which describe the subject to whom the token was issued.
A JWT typically looks like the following: ``xxxxx.yyyyy.zzzzz``

*Your API keys carry many privileges, so be sure to keep them secret! Do not share your secret API keys in publicly accessible areas such GitHub, client-side code, and so forth.*

The authentication to the API is performed via **Authorization Bearer Header**.

!!! tip ""
 <div style="text-align: left">
      <h3><i class="fa fa-code" style="width: 25px; text-align: center"></i> Example of an `Authorization` query</h3>
    </div>

    

```bash
$ curl https://api.broid.ai/v1/status \
   -H 'Authorization: Bearer {JWT_TOKEN}'
```
