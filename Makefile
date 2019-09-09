chrome=chromium-browser

default: slides.html

%.html: %.md
	pandoc \
		--standalone \
		-t revealjs \
		-V revealjs-url=../reveal.js \
		-V theme=solarized \
		-o $@ \
		$<

show: slides.html
	$(chrome) slides.html &

