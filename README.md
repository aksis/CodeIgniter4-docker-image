# CodeIgniter4-docker-image

This is a minimal Docker image for running CodeIgniter 4 web applications.

## Getting Started

To use this Docker image, you'll need to have Docker installed on your system. You can download and install Docker from the [official Docker website](https://www.docker.com/get-started).

Once you have Docker installed, you can build the CodeIgniter 4 Docker image by running the following command in your terminal:

```
docker build -t codeigniter4 .
```

This will create a Docker image with the tag `codeigniter4`.

To run your CodeIgniter 4 application using this Docker image, you can use the following command:

```
docker run -p 8080:80 codeigniter4
```

This will start a container using the `codeigniter4` Docker image and map port 8080 on your local machine to port 80 in the container.

You can now visit `http://localhost:8080` in your web browser to view your CodeIgniter 4 application.

## Customization

If you need to customize the configuration of the CodeIgniter 4 Docker image, you can modify the `Dockerfile` included in this repository and rebuild the image using the `docker build` command.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
