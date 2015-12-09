These data are generated via VASP, calculating the force constants with DFPT and using them to generate the Gamma point phonon eigenvectors and eigenvalues (frequencies). 

VASP symmetrises and conditions the Dynamic (Hessian) matrix more aggressively than Phonopy. As such, the frequencies calculated can be +-5cm^-1 compared to the Phonopy values.

For the Raman and IR activities, a `IBRION = 8 ; LEPSILON = .TRUE.` is done with VASP, setting `NWRITE=3`. This outputs the displacements into the `OUTCAR`. These eigenvectors are then used as inputs to the `IR.sh` which directly calculates the activity from the Born Effective Charges and the eigenvectors. The same eigenvectors are then fed to `vasp_raman.py` which displaces along these modes and does a DFT calculation to infer the change in polarisability.

-- Jarv, in conversation with Jonathan
