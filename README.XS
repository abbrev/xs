This is XS: Lisp on Lego MindStorms.

XS runs on brickOS-0.2.6 with slight modification.  The distribution
package contains the modified brickOS-0.2.6, both binaries and sources,
for users' convenience.  The modified parts can be identified by grep'ing
the source files for "Taiichi" (my first name).

The files in the distribution package are organized as in the original
brickOS-0.2.6 distribution (see http://brickOS.sourceforge.net/).
The root directory contains the following additional files.

	README.XS: this file
	firm.bat: batch file for downloading the modified brickOS to RCX
	eval.bat: batch file for downloading the XS evaluator that runs on RCX
	Makezip: shell script to make the distribution package of XS

All other XS-related files, both binaries and sources, are stored in
the subdirectory "xs".

The frontend part of XS will run on Linux and Windows.
To install XS and start it, follow the directions in linux.txt
(for Linux users) or win.txt (for Windows users) which can be downloaded
from www.xslisp.com.

For the language specification of XS, see the XS Reference Manual
which can also be downloaded from www.xslisp.com.

-----------------------------------------------------------------------
XS Copyright 2003, Taiichi Yuasa
The project of XS is sponsored by the Information-technology Promotion
Agency (IPA) of Japan as an Exploratory Software Project.
