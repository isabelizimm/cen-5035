UNAME := $(shell uname)

ifeq ($(UNAME), Darwin)
    BROWSER := open
else
    BROWSER := python -mwebbrowser
endif

help:
	@echo "letsgo - deploy to gh-pages and push everything"

letsgo:
	quarto publish gh-pages
	git add .
	git commit -m "end of class push"
	git push
