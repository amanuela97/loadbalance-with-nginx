# Instructions to get started

## To get started with this project, you will need to have Docker and Docker Compose installed on your machine.

- Clone the repository
  `git clone https://github.com/amanuela97/loadbalance-with-nginx.git`
- Navigate to the project directory
  `cd loadbalance-with-nginx`
- Start the application with
  `docker-compose up -d`
- If you have **make** installed locally, then run the commands inside the makefile: `make launch-containers` etc.
- This will start the Node.js application and the Nginx load balancer. You can access the application by navigating to http://localhost:80.

# The following load balancing mechanisms (or methods) are supported in nginx:

- round-robin — requests to the application servers are distributed in a round-robin fashion (default method)
- least-connected — next request is assigned to the server with the least number of active connections,
- ip-hash — a hash-function is used to determine what server should be selected for the next request (based on the client’s IP address).

## Least-connected load balancing in nginx is activated when the least_conn directive is used as part of the server group configuration:

    upstream backend {
        least_conn;
        server srv1.example.com;
        server srv2.example.com;
        server srv3.example.com;
    }

## To configure ip-hash load balancing, just add the ip_hash directive to the server (upstream) group configuration:

    upstream backend {
        ip_hash;
        server srv1.example.com;
        server srv2.example.com;
        server srv3.example.com;
    }

## When the weight parameter is specified for a server, the weight is accounted as part of the load balancing decision.

    upstream myapp1 {
        server srv1.example.com weight=3;
        server srv2.example.com;
        server srv3.example.com;
    }

With this configuration, every 5 new requests will be distributed across the application instances as the following: 3 requests will be directed to srv1, one request will go to srv2, and another one — to srv3.
