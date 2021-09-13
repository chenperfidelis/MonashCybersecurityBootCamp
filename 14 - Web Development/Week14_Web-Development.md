## Week 14 Homework: Web Development

### Questions 

#### HTTP Requests and Responses

Answer the following questions about the HTTP request and response process.

1. What type of architecture does the HTTP request and response process occur in?
    - HTTP request and response occur on the **client-server architecture**

2. What are the different parts of an HTTP request? 
    - The different parts of an HTTP request are:
        - *Request Line*
            - Containing the request method, the name of the requested resource and hersion of HTTP used
        - *Header*
            - Containing addition details
        - *Whitespace*
            - Indicates the end of the request
                - Represented by a blank line
        - *Body*
            - Contains additional information which is sent to the server.

3. Which part of an HTTP request is optional?
    - The **body** of the the HTTP request is optional

4. What are the three parts of an HTTP response?
    - The HTTP response consist of:
        - *Status Line*
            - Containing the response code and translation
        - *Headers*
            - Containing additional information about the response
        - *Response body*
            - Contains the resource requested

5. Which number class of status codes represents errors?
    - **400** status codes indicate client-side errors
    - **500** status codes inficate server-side errors

6. What are the two most common request methods that a security professional will encounter?
    - **GET** (asking an HTTP server for resouce)
    - **POST** (sending data to an HTTP server)

7. Which type of HTTP request method is used for sending data?
    - **POST** and **PUT** requests are used for sending data, where PUT requests are often used to overwrite resources.

8. Which part of an HTTP request contains the data being sent to the server?
    - **HTTP request bodies** contain the data being sent to the server.

9. In which part of an HTTP response does the browser receive the web code to generate and style a web page?
    - **HTTP response bodies** contain the web code to generate and style a web page.

#### Using curl

Answer the following questions about curl:

10. What are the advantages of using curl over the browser?
    - `curl` commands allow us to:
        - Test server security configurations
        - Verify server only responds to specific request types
        - Search for web server vulnerabilities

11. Which `curl` option is used to change the request method?
    - `-X` or `--request` option is used to change the request method

12. Which `curl` option is used to set request headers?
    - `-H` or `--header` option is used to set the request headers

13. Which `curl` option is used to view the response header?
    - `-I` or `--head` is used to view the response headers

14. Which request method might an attacker use to figure out which HTTP requests an HTTP server will accept?
    - The **OPTIONS** can be used by attackers to find out what HTTP requests an HTTP server will accept.

#### Sessions and Cookies

Recall that HTTP servers need to be able to recognize clients from one another. They do this through sessions and cookies.

Answer the following questions about sessions and cookies:

15. Which response header sends a cookie to the client?

    ```HTTP
    HTTP/1.1 200 OK
    Content-type: text/html
    Set-Cookie: cart=Bob
    ```

    - `Set-Cookie:` sends a cookie to the client, i.e. ``Set-Cookie: cart=Bob``


16. Which request header will continue the client's session?

    ```HTTP
    GET /cart HTTP/1.1
    Host: www.example.org
    Cookie: cart=Bob
    ```

    - `Cookie:` header continues the client's session e.g. ``Cookie: cart=Bob``

#### Example HTTP Requests and Responses

Look through the following example HTTP request and response and answer the following questions:

**HTTP Request**

```HTTP
POST /login.php HTTP/1.1
Host: example.com
Accept-Encoding: gzip, deflate, br
Connection: keep-alive
Content-Type: application/x-www-form-urlencoded
Content-Length: 34
Upgrade-Insecure-Requests: 1
User-Agent: Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Mobile Safari/537.36

username=Barbara&password=password
```

17. What is the request method?
    - The HTTP request method is **POST**

18. Which header expresses the client's preference for an encrypted response?
    - `Upgrade-Insecure-Requests: 1` - sends a signal to the server to request for an encrypted and authenticated response

19. Does the request have a user session associated with it?
    - No, there is no cookie associated with a session.

20. What kind of data is being sent from this request body?
    - The **username** and **password** is being sent in the request body in plain text

**HTTP Response**

```HTTP
HTTP/1.1 200 OK
Date: Mon, 16 Mar 2020 17:05:43 GMT
Last-Modified: Sat, 01 Feb 2020 00:00:00 GMT
Content-Encoding: gzip
Expires: Fri, 01 May 2020 00:00:00 GMT
Server: Apache
Set-Cookie: SessionID=5
Content-Type: text/html; charset=UTF-8
Strict-Transport-Security: max-age=31536000; includeSubDomains
X-Content-Type: NoSniff
X-Frame-Options: DENY
X-XSS-Protection: 1; mode=block

[page content]
```

21. What is the response status code?
    - The response code is **200**

22. What web server is handling this HTTP response?
    - The web server handling this HTTP response is **Apache**

23. Does this response have a user session associated to it?
    - Yes, the server has sent a cookie to the client - `Set-Cookie: SessionID=5`

24. What kind of content is likely to be in the [page content] response body?
    - **HTML** as the content type is **text/html**

25. If your class covered security headers, what security request headers have been included?
    - `Strict-Transport-Security: max-age=31536000; includeSubDomains`
    - `X-Content-Type: NoSniff`
    - `X-Frame-Options: DENY`
    - `X-XSS-Protection: 1; mode=block`

#### Monoliths and Microservices

Answer the following questions about monoliths and microservices:

26. What are the individual components of microservices called?
    - The individual components of microservices are called **services**

27. What is a service that writes to a database and communicates to other services?
    - The **Application Programming Interfaces (APIs)** write to databases and communicates with other services.

28. What type of underlying technology allows for microservices to become scalable and have redundancy?
    - **Containers** allow for microservices to become scalable and have redundancy.

#### Deploying and Testing a Container Set

Answer the following questions about multi-container deployment:

29. What tool can be used to deploy multiple containers at once?
    - **Docker** can be used to deploy multiple containers at once

30. What kind of file format is required for us to deploy a container set?
    - Docker uses **YAML** files to deploy container sets

#### Databases

31. Which type of SQL query would we use to see all of the information within a table called **customers**?
    - `SELECT * from customers`

32. Which type of SQL query would we use to enter new data into a table? (You don't need a full query, just the first part of the statement.)
    - `INSERT`

33. Why would we never run `DELETE FROM <table-name>;` by itself?
    - The `DELETE` query without a `WHERE` clause will drop the whole table

---