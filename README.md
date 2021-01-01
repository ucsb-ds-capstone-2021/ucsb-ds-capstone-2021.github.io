# UCSB Data Science Capstone Projects 2021

This book contains work from UCSB's Data Science Capstone Project Class sequence.

## Building locally for development

If you'd like to develop on and build the UCSB Data Science Capstone Projects 2021 book, you need to setup your environment:

- [Install Anaconda](https://docs.anaconda.com/anaconda/install/)
- Create a virtual environment. Let's call it `jb`:  
	```bash
	conda create -n jb python=3.8
	conda activate jb
	pip install -r requirements.txt     ## install python dependencies
	conda activate jb                   ## makes newly installed packages available
	```
- Clone and build Capstone 2021 Jupyter book repository:
	```bash
	git clone https://github.com/ucsb-ds-capstone-2021/ucsb-ds-capstone-2021.github.io.git
	cd ucsb-ds-capstone-2021.github.io/ucsb_ds_capstone_projects_2021
	jupyter-book build .
	```
- Rendered HTML version of the book will be in `./ucsb_ds_capstone_projects_2021/_build/html/`.
- Start local webserver using [Python](https://docs.python.org/3/library/http.server.html):
	```bash
	cd _build/html
	python -m http.server
	```
