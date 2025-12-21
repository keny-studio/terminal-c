## $${\color{red}Docker}$$

General Commands

| Command              | Description                                                        |
| -------------------- | ------------------------------------------------------------------ |
| `docker version`     | Displays detailed information about Docker CLI and daemon versions |
| `docker system info` | Shows Docker environment details (containers, images, plugins)     |
| `docker help`        | Displays the Docker help index                                     |
| `docker --help`      | Shows help for a specific command and its flags                    |

Build Images

| Command                                  | Description                                   |
| ---------------------------------------- | --------------------------------------------- |
| `docker build .`                         | Build the Dockerfile in the current directory |
| `docker build -t example-image:latest .` | Build and tag the image                       |
| `docker build -f docker/app-dockerfile`  | Build using a Dockerfile at a specific path   |
| `docker build --build-arg foo=bar .`     | Set a build argument                          |
| `docker build --pull .`                  | Pull updated base images before building      |
| `docker build --quiet .`                 | Build without emitting output                 |

Run Containers

| Command                                                    | Description                            |
| ---------------------------------------------------------- | -------------------------------------- |
| `docker run example-image:latest`                          | Run a container from an image          |
| `docker run example-image:latest demo-command`             | Override the default command           |
| `docker run --rm example-image:latest`                     | Remove container after exit            |
| `docker run -d example-image:latest`                       | Run container in detached mode         |
| `docker run -it example-image:latest`                      | Run container interactively            |
| `docker run --name my-container example-image:latest`      | Assign a name to the container         |
| `docker run --hostname my-container example-image:latest`  | Set container hostname                 |
| `docker run --env foo=bar example-image:latest`            | Set environment variable               |
| `docker run --env-file config.env example-image:latest`    | Load env vars from file                |
| `docker run -p 8080:80 example-image:latest`               | Map host port to container port        |
| `docker run -v /host:/container example-image:latest`      | Bind mount a directory                 |
| `docker run -v data:/data example-image:latest`            | Mount a named volume                   |
| `docker run --network my-network example-image:latest`     | Connect container to a network         |
| `docker run --restart unless-stopped example-image:latest` | Configure restart policy               |
| `docker run --privileged example-image:latest`             | Run container with elevated privileges |

Manage Containers

| Command                           | Description                         |
| --------------------------------- | ----------------------------------- |
| `docker ps`                       | List running containers             |
| `docker ps -a`                    | List all containers                 |
| `docker attach`                   | Attach terminal to a container      |
| `docker commit new-image:latest`  | Save container state as an image    |
| `docker inspect`                  | Show detailed container info (JSON) |
| `docker kill`                     | Force stop a container              |
| `docker rename my-container`      | Rename a container                  |
| `docker pause` / `docker unpause` | Pause or resume container processes |
| `docker stop`                     | Stop a running container            |
| `docker start`                    | Start a stopped container           |
| `docker rm`                       | Remove a container                  |

Copy Files To / From Containers

| Command                                                      | Description                      |
| ------------------------------------------------------------ | -------------------------------- |
| `docker cp example.txt my-container:/data`                   | Copy file from host to container |
| `docker cp my-container:/data/example.txt /demo/example.txt` | Copy file from container to host |

Execute Commands in Containers

| Command                                     | Description                      |
| ------------------------------------------- | -------------------------------- |
| `docker exec my-container demo-command`     | Run a command inside a container |
| `docker exec -it my-container demo-command` | Run a command interactively      |


Access Container Logs & Stats

| Command                | Description                      |
| ---------------------- | -------------------------------- |
| `docker logs`          | Show container logs              |
| `docker logs --follow` | Stream logs continuously         |
| `docker logs -n 10`    | Show last 10 log entries         |
| `docker stats`         | Display container resource usage |

Manage Images

| Command                           | Description               |
| --------------------------------- | ------------------------- |
| `docker images`                   | List local images         |
| `docker rmi`                      | Remove an image           |
| `docker tag example-image:latest` | Add a new tag to an image |

Pull & Push Images

| Command                                     | Description              |
| ------------------------------------------- | ------------------------ |
| `docker push example.com/user/image:latest` | Push image to registry   |
| `docker pull example.com/user/image:latest` | Pull image from registry |

Manage Networks

| Command                                    | Description                       |
| ------------------------------------------ | --------------------------------- |
| `docker network create my-network`         | Create a new network              |
| `docker network create my-network -d host` | Create network with custom driver |
| `docker network connect`                   | Connect container to network      |
| `docker network disconnect`                | Disconnect container from network |
| `docker network ls`                        | List networks                     |
| `docker network rm`                        | Remove a network                  |

Manage Volumes

| Command                          | Description     |
| -------------------------------- | --------------- |
| `docker volume create my-volume` | Create a volume |
| `docker volume ls`               | List volumes    |
| `docker volume rm`               | Remove a volume |

Configuration Contexts

| Command                                | Description             |
| -------------------------------------- | ----------------------- |
| `docker context create my-context ...` | Create a Docker context |
| `docker context update`                | Update a context        |
| `docker context ls`                    | List contexts           |
| `docker context use`                   | Switch context          |
| `docker context rm`                    | Remove context          |

Create SBMOs

| Command                                               | Description                    |
| ----------------------------------------------------- | ------------------------------ |
| `docker sbom example-image:latest`                    | Generate SBOM                  |
| `docker sbom example-image:latest --output sbom.txt`  | Save SBOM to file              |
| `docker sbom example-image:latest --format spdx-json` | Output SBOM in specific format |

Scan for Vulnerabilities

| Command                                              | Description                    |
| ---------------------------------------------------- | ------------------------------ |
| `docker scan example-image:latest`                   | Scan image for vulnerabilities |
| `docker scan example-image:latest --file Dockerfile` | Scan with Dockerfile context   |
| `docker scan example-image:latest --severity high`   | Filter by severity             |

Docker Hub Account

| Command               | Description              |
| --------------------- | ------------------------ |
| `docker login`        | Log in to Docker Hub     |
| `docker logout`       | Log out of Docker Hub    |
| `docker search nginx` | Search Docker Hub images |

Clean Uo Unused Resources

| Command                         | Description              |
| ------------------------------- | ------------------------ |
| `docker system prune`           | Remove unused data       |
| `docker system prune -a`        | Remove all unused images |
| `docker system prune --volumes` | Remove unused volumes    |
| `docker image prune`            | Remove dangling images   |
| `docker image prune -a`         | Remove unused images     |
| `docker network prune`          | Remove unused networks   |
| `docker volume prune`           | Remove unused volumes    |
| `docker system df`              | Show Docker disk usage   |


