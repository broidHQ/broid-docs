# Errors

Broid uses conventional HTTP response codes to indicate the success or failure of an API request. In general, codes in the 2xx range indicate success, codes in the 4xx range indicate an error that failed given the information provided (e.g., a required parameter was omitted, etc.), and codes in the 5xx range indicate an error with Broid's servers (these are rare). Not all errors map cleanly onto HTTP response codes. However, when a request is valid but does not complete successfully, we return a 402 error code.

### HTTP Status Code Summary

| Error Code | Meaning                                                                                                                                        |
|:-----------|:-----------------------------------------------------------------------------------------------------------------------------------------------|
| 200        | OK -- Everything is working as expected                                                                                                        |
| 204        | OK -- Request was successful, but no data was returned (This is expected behavior)                                                             |
| 400        | Bad Request -- Often times a missing or incorrect parameter                                                                                    |
| 401        | Unauthorized -- Your API token is wrong or missing                                                                                             |
| 404        | Not Found -- The specified resource could not be found.                                                                                        |
| 429        | Too Many Requests -- You have approached the 60 req/s limit. Please try to spread out your requests more evenly.                               |
| 422        | Unprocessable Entity -- All the parameters were correct but the request was rejected on the back end, contact support with request information |
| 523        | Service Unavailable -- The API is currently unavailable due to maitenance, try again later.                                                    |
| 5xx        | Server Error -- There was an error within the Broid servers                                                                                    |


!!! note ""

    A example Broid error

```
{
  "message":"The requested resource doesn't exist.",
  "type":"invalid_request_error"
}
```
