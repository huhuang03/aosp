build:
	docker build -t aosp-build-14 .

test:
	docker run -v aosp:/home/th/aosp -it aosp-build-14 /bin/bash
	
exec:
	docker exec aosp-build-14 

floppy: test build