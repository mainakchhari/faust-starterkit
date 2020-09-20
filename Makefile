# Simple Makefile
build:
	docker build --tag mwx_notifications_app:latest .

run: build
	docker run --env-file=.env --network notificationsv2_default -it --rm --name mwx_worker mwx_notifications_app:latest
