**0x09 Web Infrastructure Design

This project focuses on designing and implementing web infrastructures of increasing complexity and security. The goal is to build robust, scalable, and secure web architectures to host the website www.foobar.com. The project will be divided into three tasks:

Simple Web Stack
Distributed Web Infrastructure
Secured and Monitored Web Infrastructure
Task 0: Simple Web Stack

In this task, we will design a basic web infrastructure with a single server using a LAMP stack (Linux, Apache, MySQL, PHP). The server will host the website reachable via www.foobar.com.

Explanation:

1. Server: A server is a computer system that stores and serves data and applications to other computers over a network, like the internet.

2. Domain Name: The domain name (foobar.com) is a human-readable address that maps to the server's IP address (8.8.8.8). It allows users to access the website using a memorable name instead of the IP address.

3. DNS Record for www: The www DNS record is a subdomain of foobar.com that points to the server's IP address. It allows users to access the website by typing www.foobar.com in their browser.

4. Web Server (Nginx): The web server handles incoming HTTP requests from users' browsers and responds with the requested web pages.

5. Application Server: The application server is responsible for executing the website's code base and generating dynamic content, interacting with the database if needed.

6. Database (MySQL): The database stores and manages the website's data, such as user information, content, etc.

7. Communication with Users: The server communicates with users' computers over the internet using the HTTP protocol. The web server and application server work together to process users' requests and deliver the appropriate responses.

Issues:

1. Single Point of Failure (SPOF): Since there's only one server, any failure in hardware or software can lead to website downtime.

2. Downtime during Maintenance: During maintenance or code deployments, the web server needs to be restarted, causing temporary downtime for users.

Task 1: Distributed Web Infrastructure

In this task, we will enhance the web infrastructure by introducing redundancy and load balancing, making it more fault-tolerant and scalable.

Explanation:

1. Additional Servers: We add two more servers to ensure redundancy and distribute the load.

2. Load Balancer (HAproxy): The load balancer distributes incoming user requests across multiple application servers, preventing overload on any single server.

3. Distribution Algorithm: The load balancer is configured with a Round-Robin algorithm, ensuring an even distribution of requests among the application servers.

4. Active-Active vs. Active-Passive: The setup is Active-Active, where all servers actively handle user requests simultaneously. In Active-Passive, one server is active while others are on standby, only becoming active when the primary server fails.

5. Database Primary-Replica Cluster: The database is configured as a Primary-Replica (Master-Slave) cluster. The Primary node handles write operations, while the Replica nodes synchronize data and serve read operations.

6. Application Server Redundancy: With multiple application servers, the website can handle more concurrent users, improving performance.

Issues:

1. SPOF: The load balancer itself becomes a single point of failure. If it goes down, user requests won't be distributed, affecting website availability.

2. Security and Monitoring: Lack of firewall and HTTPS leaves the infrastructure vulnerable to attacks. Absence of monitoring makes it challenging to identify and resolve issues.

Task 2: Secured and Monitored Web Infrastructure

In this task, we focus on enhancing security and monitoring to ensure a robust and reliable web infrastructure.

Explanation:

1. Firewalls: Three firewalls are added to provide a secure perimeter around the infrastructure, blocking unauthorized access and malicious traffic.

2. SSL Certificate: An SSL certificate is installed to enable HTTPS, encrypting traffic between users and the web server, enhancing data security.

3. Monitoring Clients: Monitoring clients (e.g., Sumo Logic) are installed to collect and analyze system and application logs, helping identify and troubleshoot issues.

4. Purpose of Additional Elements:

Firewalls enhance security by controlling incoming and outgoing network traffic.
HTTPS ensures encrypted communication, protecting data from eavesdropping and tampering.
Monitoring tools track system performance, resource utilization, and identify potential problems.
5. Monitoring Data Collection: Monitoring clients gather logs, performance metrics, and other data from servers and applications, sending them to the monitoring service.

6. Monitoring Web Server QPS: To monitor web server QPS (Queries Per Second), set up custom metrics in the monitoring tool to track the number of incoming HTTP requests per second.

Issues:

1. SSL Termination at Load Balancer Level: Terminating SSL at the load balancer might lead to security issues, as encrypted traffic is decrypted before reaching the web servers.

2. Single MySQL Write Server: Having only one MySQL server capable of accepting writes creates a single point of failure. If it fails, write operations become unavailable.

3. Homogeneous Servers: Using servers with the same components may lead to a single point of failure. A fault in one server component could affect all servers in the infrastructure.
