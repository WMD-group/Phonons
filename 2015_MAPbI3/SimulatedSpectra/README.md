The data in this folder were generated using the VASP DFPT routines to calulate the Gamma-point phonon eigenvalues (frequencies) and eigenvectors. 

VASP does not symmetrise the force constants as aggressively as Phonopy with the `FC_SYMMETRY = 1` option; as such, the frequencies can be shifted by +/- 5 cm<sup>-1</sup> compared to the Phonopy values.

To calculate the IR activities, a single VASP calculation with `IBRION = 8 ; LEPSILON = .TRUE.` is performed to obtain the Gamma-point frequencies and eigenvectors and the Born effective-charge tensors. The option `NWRITE=3` is also set to output the eigenvectors divided by sqrt(mass) (i.e. the atomic displacements associated with the eigenvectors) into the `OUTCAR` file. These quantities are used as inputs to the `IR.sh` script ([available here](http://homepage.univie.ac.at/david.karhanek/downloads.html#Entry02)), which calculates the activity from the Born charges and the displacements.

To simulate the Raman activities, the same DFPT frequencies and eigenvectors are used as input to `vasp_raman.py` ([available here](https://github.com/raman-sc/VASP/)), which displaces +/- along each mode, performs a calculation with `LEPSILON = .TRUE.` to obtain the macroscopic dielectric tensor at each step, and hence computes the change in polarisability along the mode via a finite-difference stencil.

-- Jarv, in conversation with Jonathan
