# Use ARG directive to define default build arguments.
ARG PYTHON_VERSION=3.9

# Use the official Python image from DockerHub.
FROM python:${PYTHON_VERSION}-slim

# Update pip and setuptools.
RUN pip install --upgrade pip setuptools

# Install the latest langflow.
RUN pip install langflow

CMD ["langflow", "--help"]
