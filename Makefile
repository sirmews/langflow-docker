IMAGE_NAME=sirmews/langflow
PYTHON_VERSIONS=3.10

.PHONY: build push all

# Default target
all: build push

build:
	@for version in $(PYTHON_VERSIONS); do \
		echo "Building Docker image for Python $$version..."; \
		docker build --build-arg PYTHON_VERSION=$$version -t $(IMAGE_NAME):$$version .; \
	done

push:
	@for version in $(PYTHON_VERSIONS); do \
		echo "Pushing Docker image for Python $$version to Docker Hub..."; \
		docker push $(IMAGE_NAME):$$version; \
	done
