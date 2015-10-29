2014_PbX-QHA
============

This repository contains data from the phonon calculations discussed in the publication:

[*Thermal physics of the lead chalcogenides PbS, PbSe, and PbTe from first principles*](http://journals.aps.org/prb/abstract/10.1103/PhysRevB.89.205203)  
Jonathan M. Skelton, Stephen C. Parker, Atsushi Togo, Isao Tanaka and Aron Walsh  
*Physical Review B* **89** 205203 (**2014**)


Contents
--------

The subfolders contain data from `VASP`, `phonopy`, `phonopy-qha` and `phono3py` calculations on PbS, PbSe and PbTe.

The raw data is provided in the `VASP` and `phono(3)py` formats, and more information may be found on the [VASP](https://www.vasp.at/), [Phonopy](http://phonopy.sourceforge.net/) and [Phonorpy](http://phonopy.sourceforge.net/phono3py/) websites. Full details of the technical aspects of the calculations may be found in the paper.

The following data is available:

- "\*-QHA" : `phonopy-qha` calculations on each of the lead chalcogenides. Each folder contains a sequence of `phonopy` calculations at 21 volumes about the 0 K equilibrium (as a scale factor applied to the lattice constant from 0.95 .. 1.05), together with the *E*/*V* curve supplied to `phonopy-qha` and the output from the QHA calculation.

- "\*-FiniteTemperature" : Calculations performed on structures of the three materials at lattice volumes associated with temperatures between 3 and 593 K. Each subfolder contains the structure plus a harmonic `phonopy` calculation. Each folder has a "Kappa" subfolder with a `phono3py` calculation; for convenience, the temperature-dependent lattice thermal-conductivity tensors have been extracted from the `kappa-m242424-s0.1.hdf5` HDF5 files into CSV-format files with the same name.


Further Information
-------------------

Please direct any queries or requests for additional data to the authors of the paper or the WMD-Bath organisation.
