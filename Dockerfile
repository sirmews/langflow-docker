# Use ARG directive to define default build arguments.
ARG PYTHON_VERSION=3.9

# Use the official Python image from DockerHub.
FROM python:${PYTHON_VERSION}-slim

RUN apt-get update && apt-get install gcc g++ git make -y

# Install the latest langflow.
RUN pip install langflow>==0.4.17

CMD ["langflow", "--help"]
