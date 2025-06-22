set windows-shell := ["powershell.exe", "-NoLogo", "-Command"]


debug-volume:
	docker run -it -v aosp:/aosp ubuntu:latest bash


build-aosp:
	docker build aosp-docker/aosp -t huhuang03/aosp

debug-aosp: build-aosp
	docker run -it -v aosp:/aosp huhuang03/aosp bash
