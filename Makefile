TITLE="MySpotOnTheWeb"
INDEX=index.md 

all: html

docs/assets:
	mkdir -p docs
	cp -r assets docs/assets

html: docs/assets
	pandoc $(INDEX) -t html -s -o docs/$(INDEX:.md=.html) --metadata title=$(TITLE) --toc --css assets/styling.css

clean:
	rm -rf docs
