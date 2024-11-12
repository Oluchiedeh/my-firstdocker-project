# SIMPLE WEB SERVER WITH DOCKER.

Here's a straightforward guide on creating a Nginx web server with Docker. This is ideal for beginners looking to understand the basics of Docker and web servers.

#

Building a Ngnix Web Server with Docker
If you’re venturing into DevOps, understanding Docker is essential. Docker lets you package applications and their dependencies into a single container, allowing for quick deployment and consistency across different environments. Here’s a step-by-step guide to creating a nginx web server in Docker.

#

Prerequisites
Before we start, make sure you have:

- Docker installed on your machine (check installation by running docker --version).
- Basic understanding of web servers (HTML/CSS is a plus).

#

**Step 1: Write a Simple HTML File.**
Let's create a simple webpage to serve as our content.

**1. Create a directory for your project:**

`mkdir docker-project-1`

`cd docker-project-1`

**2. Inside this directory, create an `index.html` file**

`touch index.html`

`nano index.html`

![](html.png)

This file will be our web server's home page.

#

**Step 2: Create a Dockerfile:**
A Dockerfile is a script that contains instructions for building a Docker image. This file will tell Docker how to set up our web server environment.

Inside your project directory, create a file named `Dockerfile`.

Add the below content to the Dockerfile:

![](dockerfile.png)


*Here's a breakdown of each line in the Dockerfile:*

- FROM nginx:alpine: This line tells Docker to use the official Nginx image, which includes a lightweight Nginx server built on the Alpine Linux distribution.
- COPY `index.html /usr/share/nginx/html/`: This line copies our `index.html` file into the default directory Nginx serves files from.
- EXPOSE 80: This exposes `port 80` on the container, allowing us to access the web server.

#

**Step 3: Build the Docker Image:**
With the Dockerfile and `index.html` file in place, let's build the Docker image.

Run the following command in the terminal:

`docker build -t my-ngix-app .`

![](build.png)

*Here’s what this command does:*

`docker build`: Builds a Docker image from a Dockerfile.
`-t my-nginx-app`: Tags the image with a name, my-nginx-app, making it easier to refer to later.
`.`: Tells Docker to use the current directory as the build context (this is where Docker will look for the Dockerfile).

Docker will pull the Nginx image if you don't have it already and then build your custom image with the specified configuration.

#

**Step 4: Run the Docker Container.**

Once the image is ready, you can run it as a container.

Run the following command:

`docker run -d -p 8080:80 my-nginx-app`

![](result.png)



