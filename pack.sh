#!/bin/bash

rm -rf HM3DraftE
mkdir HM3DraftE

cp HM3Draft.tex HM3DraftE/
cp HM3Draft_Content.tex HM3DraftE/
cp HM3Draft_Defs.tex HM3DraftE/
cp HM3DraftRefs.bib HM3DraftE/
cp -r pics HM3DraftE/
cp elsarticle-num.bst HM3DraftE/
cp elsarticle.dtx HM3DraftE/
cp elsarticle.ins HM3DraftE/
cp Makefile HM3DraftE/
zip -r7 HM3DraftE.zip HM3DraftE

rm -rf HM3DraftE