NOW := $(shell date +%Y%m%d_%H%M%S)

.PHONY: run
run:
	@ go run cmd/!!!appName/main.go


,PHONY: build
build:
	@ echo "Building application..."
	@ go build -o bin/$(NOW)/!!!appName cmd/!!!appName/main.go
	@ echo "Binary file deployed to bin/$(NOW)/..."

.PHONY: buildrun
buildrun: build
	@ chmod +x bin//$(NOW)/!!!appName
	@ ./bin/$(NOW)/!!!appName