** How The Web Works**

*Release 0*
What are some common HTTP status codes?
*200 = ok
*201 = Created. resource was partially created
*400 = Bad Request. 
*403 = Forbidden
*404 = Not Found
*405 = Method Not Allowed
*500 = Internal Error 

What is the difference between a GET request and a POST request? When might each be used?
*GET = Requests data from a specified resource. 
        *can be cached
        *remains in browser history 
        *can be bookmarked
        *never to be used with sensitive data
        *length restrictions
        *only to retrieve data
*POST = submits data to be processed to a specified resource
        *never cached
        *do not remain in browser history
        *no length restrictions

Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
*Cookies are small pieces of data that a server sends to the user's web browser. Typically cookies are used to tell if two requests came from the same browser.
*cookies are use for session management(logins, shopping carts, etc), personalization(user preferences, themes, etc), tracking(recording and analyzing user behavior)


