.PHONY: setup clean serve deploy

setup:
	git submodule update --init --recursive

public/index.html:
	hugo

clean:
	rm -rf public

serve:
	hugo server -D

deploy: public/index.html
	cd themes/jgl && gulp
	hugo && rsync -avz ./public/ jgl:/var/www/jglievano.com

