## Progress
[:link: Progress status](progress.md)

[:page_with_curl: Latest Development Release(PDF)](thesis-latest-dev.pdf)

## How to build

These are the possibilites to build the Project.

### Using Latex-Workshop

Latex-Workshop uses `latexmk` to build the whole Project, whenever a file is saved.

To overcome the need of a local Latex Installation, it is possible to use a Docker Container as Latex Environment.
The Integration into Latex-Workshop can be enabled by:
`"latex-workshop.docker.enabled": true`

If you are using this approach, make sure to pre-pull `tianon/latex` from the Docker registry.

### Using latexmk

build: `latexmk` or `latexmk -pdf`

clean-up:

* `latexmk -c` - remove all generated files except .pdf
* `latexmk -C` - completly clean up repository

### Without latexmk

The project can build using the `make.sh` script provided in the repo:

* `./99-util/make.sh` - generates __thesis-_v{version}___.pdf
* `./99-util/make.sh name` - generates thesis.pdf and renames it to __name-_v{version}_.pdf__

## General Structure

* `00-init/` - Abstract, Acknowledgements, Vitae
* `01-introduction/` - Introduction
* `02-related-works/` - Related Works
* `03-neural-networks-in-tumor-detection/` - Neural Networks in Tumor Detection
* `04-methodology/` - Metholodgy
* `05-results/` - Results
* `06-discussion/` - Discussion
* `07-conclusion/` - Conclusion
* `99-util/` - Utilities: _appendix, bibliography, configs, scripts etc._

