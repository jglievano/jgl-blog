.PHONY: setup deploy

setup:
	git submodule update --init --recursive

deploy:
	hugo -D && rsync -avz ./public/ jgl:/var/www/jglievano.com/blog
