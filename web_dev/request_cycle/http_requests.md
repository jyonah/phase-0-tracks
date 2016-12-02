_What are some common HTTP status codes?_

   * __404:__ Not Found
     * This is the most common of all and means the requested resource is no longer available or not located at the inidcated path.
   * __403:__ Forbidden
      * This code means that access to the resource is forbidden, though the resource exists. It is different from __401__ - an authentication error - and means that only a small 'whitelist' of machines can access the file, or that the certificate is not valid or missing. 
   * __500:__ Internal Server Error
     * This is the 'catchall' server side error code. When no other error codes make sense or a programmer hasn't identified a specific problem the __500__ code is returned.
   * __503:__ Service Unavailable
     * This returns when the server is unreachable. Perhaps the machines hosting the server are powered off, perhaps commuincation was interrupted in the form of a cable being cut or dicsonnected.
   * __604:__ Gateway Timeout
     * Access to the secondary web server has timed out.  
___
_What is the difference between a GET request and a POST request? When might each be used?_

   * Essentially, a __GET__ request fetches soemthing from the server and a __POST__ request gives something to the server. 
___
___Optional bonus question:__ What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?_

  * A cookie is a way to store certain data locally on a user's computer while they are using their website. These are used to store login information, unsubmitted text in form feilds, and other data.