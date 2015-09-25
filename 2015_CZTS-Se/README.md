2015_CZTS-Se
============

This repository contains data from the phonon calculations discussed in the publication:

[*Vibrational spectra and lattice thermal conductivity of kesterite-structured Cu<sub>2</sub>ZnSnS<sub>4</sub> and Cu<sub>2</sub>ZnSnSe<sub>4</sub>*](http://scitation.aip.org/content/aip/journal/aplmater/3/4/10.1063/1.4917044)  
J. M. Skelton, A. J. Jackson, M. Dimitrievska, S. K. Wallace and A. Walsh  
*APL Materials* **3** 041102 (**2015**)

This paper is open access and available free of charge from AIP.


Contents
------------
The two subfolders contain data from the `VASP`, `phonopy`, `phonopy-gruneisen` and `phono3py` calculations on Cu<sub>2</sub>ZnSnS<sub>4</sub> and Cu<sub>2</sub>ZnSnS<sub>4</sub>.

The raw data is provided in the `VASP` and `phonopy` formats, and more information may be found on the [VASP](https://www.vasp.at/) and [Phonopy](http://phonopy.sourceforge.net/) websites. The raw data output from the `IR.sh` and `vasp_raman.py` scripts is also available, and information may be found on [David Karhánek's homepage](http://homepage.univie.ac.at/david.karhanek/downloads.html) and the [raman-sc](https://github.com/raman-sc/VASP) GitHub page. Full details of the technical aspects of the calculations may be found in the paper.

Inside each folder, the following data is available:

- \<Root\> : harmonic `phonopy` calculation on the equilibrium structure, including the phonon density of states (DOS), plus the Grüneisen parameters obtained from `phonopy-gruneisen`.

- Scale-{0.99, 1.01} : harmonic `phonopy` calculations at a volume expansion and contraction about the equilibrium, used as input to `phonopy-gruneisen`.

- SimulatedSpectra (Cu<sub>2</sub>ZnSnS<sub>4</sub> only) : The raw output from the `IR.sh` and `vasp_raman.py` scripts, which give the simulated frequencies and spectroscopic activities of the Γ-point phonon modes.

- ThermalConductivity : `phono3py` calculation to obtain the thermal conductivity and phonon linewidths. The file "kappa-m161616.hdf5" contains the result of the post processing, as described in the `phono3py` manual; for convenience, the calculated thermal-conductivity tensors as a function of temperature have been copied in plain-text form to files named "kappa-m161616.csv". The files fc2.hdf5 and fc3.hdf5 contain the second- and third-order force constants in the HDF5 format.


Further Information
-------------------
Please direct any queries or requests for additional data to the authors of the paper or the WMD-Bath organisation.
