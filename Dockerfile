# Use ARG directive to define default build arguments.
ARG PYTHON_VERSION=3.9

# Use the official Python image from DockerHub.
FROM python:${PYTHON_VERSION}-slim

RUN apt-get update && apt-get upgrade -y && apt-get install gcc g++ git make build-essential -y

# Install the latest langflow and leverage caching
RUN --mount=type=cache,target=/root/.cache \
	pip install langflow

CMD ["langflow", "--help"]
