# START Mon 15 Feb 2021 09:41:08 WIB

ALL: 004.md

004.md: 004.pmd _config.yml Gemfile _includes/navbar.html \
	assets/css/style.css assets/scripts/includeScript.py Makefile
	python assets/scripts/includeScript.py < 004.pmd > 004.md

.phony: ALL

