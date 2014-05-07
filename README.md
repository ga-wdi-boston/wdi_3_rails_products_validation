
## URLs
A URL, Uniform Resource Location, locates a web "resource". It's the "web address" one enters in a browser address bar.

A URL consists of:  

* A scheme, (_http_, _https_, _ftp_, ...)
* A colon and two slashes, (_://_)
* A host, typically a domain name, (google.com, bostonrubygroup.org, localhost), but it can be an IP address, (178.93.1.12, 127.0.0.1)
* A port number. Default HTTP port is 80. Default HTTP port is 443. Rails default port is 3000.
* A path. The path for this URL, http://en.wikipedia.org/wiki/Uniform_resource_locator is /wiki/Uniform_resource_locator

## Resource
A Resource is an entity that exists on the web. Some examples of a Resource are, Books, Products, Users, etc. A Resource can be accessed at a URL.

## HTTP Methods/Verb
* GET, used to retreive the represenation of a resource.
* POST, used to create a resource.
* PUT, used to update a resource. _Replaces all of the resource_
* PATCH, used to update a resource. _Replaces a part of resource_
* DELETE, remove a resource.
* HEAD, Like a GET but only used the HTTP Head. Typically used for HTTP Caching.

## Routing
* Maps requests to controller action methods
* Enables the dynamic generation of URLs for you for use as arguments
to methods like link_to and redirect_to.


Each route specifies a pattern that will match one or more URLs. These
are URLs used by this rails app.

For example:
get 'products/:id' => 'products#show'

Consists of:    

* HTTP verb constraining method (get)
* static string, (products/:id), that includes a URL path to match and segment key (:id)
* controller action mapping ("products#show") 


The config/routes.rb file contains all the routes for an app and will typically direct, or dispatch, a HTTP Request to a Controller/Action pair.

## Demo
See the steps.txt file to recreate the demo.


