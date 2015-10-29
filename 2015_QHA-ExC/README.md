2015_QHA-ExC
============

This repository contains data from the phonon calculations discussed in the publication:

[*Influence of the exchange-correlation functional on the quasi-harmonic lattice dynamics of II-VI semiconductors*](http://scitation.aip.org/content/aip/journal/jcp/143/6/10.1063/1.4928058?TRACK=RSS)  
Jonathan M. Skelton, Davide Tiana, Stephen C. Parker, Atsushi Togo, Isao Tanaka and Aron Walsh  
*The Journal of Chemical Physics* **143** 064710 (**2015**)

This paper is open access and available free of charge from AIP.


Contents
--------

The subfolders contain data from various `VASP`, `phonopy` and `phonopy-qha` calculations on PbS, PbTe, ZnS and ZnTe, performed using the LDA, PW91, PBE, PBEsol, TPSS, revTPSS, PBE-D2 and PBE-D3 exchange-correlation (XC) functionals.

The raw data is provided in the `VASP` and `phonopy` formats, and more information may be found on the [VASP](https://www.vasp.at/) and [Phonopy](http://phonopy.sourceforge.net/) websites. Full details of the technical aspects of the calculations may be found in the paper.

The following data is available:

- "Equilibrium-EoS-Properties" : Equilirium properties of the four materials calculated with the eight XC functionals. The data for each material-functional combination is contained in separate CSV-format files named

    *\<Functional\>-\<Material\>-EosFit.csv*

    which give the fitted Murnaghan EoS parameters and the raw and fitted *E*/*V* curves.

- "\*-QHA" : `phonopy-qha` calculations on the four materials with the eight XC functionals. Each folder contains a sequence of `phonopy` calculations at eleven volumes about the 0 K equilibrium (as a scale factor applied to the lattice constant from 0.95..1.05), together with the *E*/*V* curve supplied to `phonopy-qha` and the output from the QHA calculation.

- "\*-300K" : `phonopy` calculations on PbS and PbTe at the 300 K lattice constants. For each of the functionals, there are calculations performed at the experimentally-measured lattice constants, and at the lattice constants predicted by quasi-harmonic calculations with these functionals.


Further Information
-------------------

Please direct any queries or requests for additional data to the authors of the paper or the WMD-Bath organisation.
