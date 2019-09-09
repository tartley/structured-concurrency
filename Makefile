chrome=chromium-browser

default: slides.html

# All reveal.js configuration can be controlled using '-V' options below.
# https://github.com/hakimel/reveal.js#configuration

%.html: %.md
	pandoc \
		--standalone \
		-t revealjs \
		-V controls=false \
		-V transition=convex \
		-V transitionSpeed=fast \
		-V mouseWheel=true \
		-V revealjs-url=../reveal.js \
		-V theme=solarized \
		-o $@ \
		$<
		# -V parallaxBackgroundImage="https://s3.amazonaws.com/hakim-static/reveal-js/reveal-parallax-1.jpg" \
		# -V parallaxBackgroundHorizontal=200 \

show: slides.html
	$(chrome) slides.html &

