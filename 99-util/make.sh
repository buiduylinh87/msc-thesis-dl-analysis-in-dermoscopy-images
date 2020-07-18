#!/bin/sh

# $1 - output file name (optinal)
# $2 - version (optional)

WRKDIR=`pwd`

VERSION=v$(head -n 1 './version')

# build thesis
echo "Building Latex File: $WRKDIR/thesis.tex"

pdflatex -shell-escape -interaction nonstopmode -file-line-error thesis | grep ".*:[0-9]*:.*"
bibtex -terse thesis
pdflatex -shell-escape -interaction nonstopmode -file-line-error thesis | grep ".*:[0-9]*:.*"
pdflatex -shell-escape -interaction nonstopmode -file-line-error thesis | grep ".*:[0-9]*:.*"

# rename thesis
thesisFileName="thesis-report-$VERSION.pdf"
thesisFileNameDev="thesis-report-latest-dev.pdf"
pathToReportLatest="./outputs/$thesisFileName"
pathToReportInProgress="./$thesisFileNameDev"

cp -f thesis.pdf "$pathToReportLatest"
mv -f thesis.pdf "$pathToReportInProgress"

# cleanup
rm -f thesis.aux
rm -f thesis.bbl
rm -f thesis.blg
rm -f thesis.toc
rm -f thesis.lof
rm -f thesis.log
rm -f thesis.lot
rm -f thesis.out
rm -f thesis.bcf
rm -f thesis.glg
rm -f thesis.glo
rm -f thesis.gls
rm -f thesis.ist
rm -f thesis.run.*
rm -rf */*.aux
rm -rf */*.log

{
pkill -x Preview
open $pathToReportInProgress
} || {
echo "can't open $pathToReportInProgress"
}
