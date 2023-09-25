# Langflow Docker Image

This Docker image encapsulates the `langflow` application, allowing users to run the application without needing to set up a local environment.

## Python Versions Supported

This Docker image supports both Python `3.9` and `3.10`. Depending on your needs, you can pull the version of the image corresponding to the desired Python version.

## Quick Start

### Pulling the Docker Image

You can pull the latest version of the image with:

For Python 3.9:

```bash
docker pull sirmews/langflow:3.9-latest
```

For Python 3.10:

```bash
docker pull sirmews/langflow:3.10-latest
```

### Running the Docker Image

To run the `langflow` application using this Docker image:

For Python 3.9:

```bash
docker run -it -p 7860:7860 sirmews/langflow:3.9-latest langflow --host 0.0.0.0 --port 7860
```

For Python 3.10:

```bash
docker run -it -p 7860:7860 sirmews/langflow:3.10-latest langflow --host 0.0.0.0 --port 7860
```

After running the above command, you can access the application at:

```
http://localhost:7860
```

### Arguments

You can pass any `langflow` command-line arguments to the image when running it. For instance, the `--host` and `--port` arguments in the examples above can be adjusted to suit your needs.

## Building the Docker Image

If you've made changes and want to rebuild the image:

```bash
docker build -t sirmews/langflow:your-custom-tag .
```

## Contributing

Feel free to open issues or pull requests if you have improvements or fixes to suggest.

