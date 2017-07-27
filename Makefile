.PHONY: setup deploy

setup:
	git submodule update --init --recursive

deploy:
	rsync -avz ./public/ jgl:/var/www/jglievano.com/blog
