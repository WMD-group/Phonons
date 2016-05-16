# Quick script to take list of directories + generate pDoS phonon data with eigenmode breakdown, plot + rename files.

for dir
do
 echo "Autoplotting ${dir}"
 cd "${dir}"
 echo "Invoking phonopy..."
 #~/phonopy-jarv/scripts/phonopy --cell=POSCAR.vasp ../phonon_pDoS_Eigenmodes.conf 
 echo "Invoking gnuplot..."
 gnuplot ../phonon_pDoS_Eigenmodes.gpt

 mv phonon_pDoS_Eigenmodes.png ../"${dir%/}_phonon_pDoS_Eigenmodes.png"
 mv phonon_pDoS_Eigenmodes.eps ../"${dir%/}_phonon_pDoS_Eigenmodes.eps"

 cd -
done

