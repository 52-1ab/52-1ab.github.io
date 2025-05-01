clean: 
	rm simple.css index.html
simple.css:
	wget -q https://raw.githubusercontent.com/kevquirk/simple.css/refs/heads/main/simple.css
index.html: simple.css
	pandoc -f markdown -t html5 -s -o index.html -c simple.css README.md
