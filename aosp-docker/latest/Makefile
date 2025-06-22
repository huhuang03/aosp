build:
	docker build -t aosp-ubuntu-latest .

test:
	docker run --name aosp-ubuntu-latest -v aosp:/home/th/aosp -it aosp-ubuntu-latest /bin/bash
	
exec:
	docker exec aosp-build-14 

floppy: test build