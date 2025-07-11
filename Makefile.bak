BUILD_IMAGE := privategpt-wsl
PORT := 8001

.PHONY: build-model build-runtime run shell clean

build-model:
	docker build -f Dockerfile.model -t $(BUILD_IMAGE) .

build-runtime:
	docker build -f Dockerfile.runtime -t $(BUILD_IMAGE) .

run:
	docker run --gpus all -p $(PORT):$(PORT) $(BUILD_IMAGE)

shell:
	docker run --gpus all -e HF_TOKEN=$(HF_TOKEN) -it $(BUILD_IMAGE) /bin/bash

clean:
	docker rmi $(BUILD_IMAGE)
