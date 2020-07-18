# A comparative study: Skin lesion segmentation with U-Net, MultiResUNet, and SegAN.
This thesis aims to compare some of the current state-of-the-art neural networks namely  [U-Net](https://arxiv.org/pdf/1505.04597.pdf), [MultiResUNet](https://arxiv.org/pdf/1902.04049.pdf), and [SegAN](https://arxiv.org/pdf/1706.01805.pdf) on a skin lesion segmentation problem with different levels of Gaussian noise.


## Progress
[:link: Progress status](progress.md)

[:page_with_curl: Latest Development Release(PDF)](thesis-report-latest-dev.pdf)

## How to build

These are the possibilites to build the Project.

### Using latexmk

build: `latexmk` or `latexmk -pdf`

clean-up:

* `latexmk -c` - remove all generated files except .pdf
* `latexmk -C` - completly clean up repository

### Without latexmk (macOS only)

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

