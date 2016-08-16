**What are some common HTTP status codes?**
The main categories are for HTTP status codes are:
1xx- Informational 
2xx- Successful
3xx- Redirection
4xx- Client Error 
5xx- Server Error 

Some common codes are: 
200 - OK
404- Not Found 
302- Found  
304- Not modified 

**What is the difference between a GET request and a POST request? When might each be used?**

```GET``` is used to retrieve remote data, and ```POST``` is used to insert/update remote data.
A ```GET``` request shoudnt have a body, so information gets passed via the URL. This makes ```POST``` safer for sensitive data, because the information isnt stored in request URIs. 
Also, for ```POST``` requests, the request will typically change something, so reloading the page wont get you the exact same result (like when submitting a form, if you hit the back button, info will be lost.)  



**What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?**

Cookies are small pieces of info stored in the user's web browser while browsing a particular website. They're a way for websites to remember information about the user, and their browsing history. Once a cookie is stored in the user's machine, it is sent with each subsequent http request. 