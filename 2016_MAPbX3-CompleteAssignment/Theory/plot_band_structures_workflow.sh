

cat > ./tmp-phonopy.conf << EOF
BAND = 0.5 0.5 0.5  0.0 0.0 0.0  0.5 0.5 0.0  0.0 0.5 0.0
BAND_LABELS = R \Gamma M X
BAND_POINTS = 101
BAND_CONNECTION = .TRUE.
DIM = 2 2 2
FC_SYMMETRY = 1
EOF

for dir
do
 echo "Autoplotting ${dir}"
 cd "${dir}"
 echo "Invoking phonopy..."
 ~/phonopy/bin/phonopy --cell=POSCAR.vasp ../tmp-phonopy.conf 
 echo "Invoking bandplot..."
 ~/phonopy/bin/bandplot --gnuplot band.yaml > band.gnuplot
 echo "Invoking gnuplot..."
 gnuplot ../band.gpt

 mv band.png ../"${dir%/}_dispersion.png"
 mv band.eps ../"${dir%/}_dispersion.eps"

 cd -
done

