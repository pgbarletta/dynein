Alineo 2PG1 a 3FM7. Como 2PG1 tiene los dominios LC8 y TcTex "torcidos"
(cadenas C y D flexionadas) utilizo la selección del LC8 p/ suporponerlos. Asi:
    select 3fm7 and chain A or 3fm7 and chain B
    set_name sele, tre
    select nrot_2pg1 and chain A or nrot_2pg1 and chain B
    set_name sele, do
    align do, tre

3FM7:
-----
    mv 3fm7.pdb orig_3fm7.pdb
    cp orig_3fm7.pdb 3fm7.pdb // y a 3fm7 le borré todos los hidrógenos con: %g/          H/d
    deleted GLN_1 (chain A) GLN_105 (chain B) (misses 5 heavy atoms) and SER_104 (misses 1 heavy atom).
    %s/  CD  ILE/  CD1 ILE/g
    // fixed C terminal oxygens for the 4 domain chains (C and D don't have N and C terminus, why?). They should be called OXT.
    pdb4amber -i 3fm7.pdb -o h3fm7.pdb --nohyd
    ls h3fm7* | grep -v h3fm7.pdb | xargs rm // elimino los archivos de pdb4amber salvo h3fm7.pdb
    tleap -f leap_3fm7.in

2PG1:   NO ME IMPORTA POR AHORA. DESCARTO. 
-----
    mv 2pg1.pdb orig_2pg1.pdb
    cp orig_2pg1.pdb 2pg1.pdb // y a 2pg1 le borré todos los hidrógenos con: %g/          H/d
    %s/  CD  ILE/  CD1 ILE/g
    deleted GLN_1 (misses 5 heavy atoms) and SER_104 (misses 1 heavy atom).
    added TER after each end of the chain
    fixed C terminal oxygens for the 4 domain chains (C and D don't have N and C terminus, why?). They should be called OXT.
    pdb4amber -i 2pg1.pdb -o h2pg1.pdb  --reduce  // elimino todos los archivos salvo h2pg1.pdb
    wrote and run "leap_2pg1.in". logfile in "log_2pg1"

LB3F: LA DESCARTO POR LB3H
-----
    cp 3fm7/h3f3f.pdb lb3f/lb3f.pdb
    vi lb3f.pdb // Remove first GLN from A chain. Remove E&F chains. Cut C&D chains to preserve first 14 residues: NLSVYNVQATNIPP
    pdb4amber -i lb3f.pdb -o hlb3f.pdb --reduce // p/ q formatee bien los números y los OXT
    ls hlb3f* | grep -v hlb3f.pdb | xargs rm // elimino los archivos de pdb4amber salvo hlb3f.pdb
    wrote and run "leap_lb3f.in". logfile in "log_lb3f"

LB3H: CORRER AL FINAL DE TODO P/ REEMPLAZAR A LB3F
-----
    // same as LB3F but without hydrogens
    cp lb3f/hlb3f.pdb lb3e/lb3h.pdb
    vi lb3h.pdb // changed HID and HIE to HIS
    pdb4amber -i lb3h.pdb -o hlb3h.pdb --nohyd // p/ q formatee bien los números y los OXT
    ls hlb3h* | grep -v hlb3h.pdb | xargs rm // elimino los archivos de pdb4amber salvo hlb3h.pdb
    tleap -f leap_lb3h.in

LF3F:
-----
    cp lb3f/hlb3f.pdb lf3f/hlf3f.pdb
    vi hlf3f.pdb // Remove C&D chains
    tleap -f leap_lf3f.in

LBM7:
-----
    cp 3fm7/h3fm7.pdb lb3f/lbm7.pdb // borre cadenas A y B, moví las C y D al final y
    // renombre las E y F a A y B, respectivamente. Cut C&D chains to preserve first 9 residues: VYTKQTQTT
    pdb4amber -i lbm7.pdb -o hlbm7.pdb --nohyd // p/ q formatee bien los números y los OXT
    ls hlbm7* | grep -v hlbm7.pdb | xargs rm // elimino los archivos de pdb4amber salvo hlbm7.pdb
    tleap -f leap_lbm7.in
    parmed -i parmed_lbm7 // le agrego info de cadena y otras

LFM7:
-----
    cp ../lbm7/hlbm7.pdb hlfm7.pdb
    vi hlfm7.pdb // Remove C&D chains.
    tleap -f leap_lfm7.in
    parmed -i parmed_lfm7 // le agrego info de cadena y otras

1F95:
----
    pdb4amber -i 1f95.pdb -o h1f95.pdb --nohyd // p/ q formatee bien los números y los OXT
    ls h1f95* | grep -v h1f95.pdb | xargs rm // elimino los archivos de pdb4amber salvo h1f95.pdb
    tleap -f leap_1f95.in
    parmed -i parmed_1f95 // le agrego info de cadena y otras


1F96: // tiene un missing atom
----
    Arreglo el missing en originales_pdbs
    pdb4amber -i 1f96.pdb -o h1f96.pdb --nohyd // p/ q formatee bien los números y los OXT
    ls h1f96* | grep -v h1f96.pdb | xargs rm // elimino los archivos de pdb4amber salvo h1f96.pdb
    tleap -f leap_1f96.in
    parmed -i parmed_1f96 // le agrego info de cadena y otras


2XQQ: // tiene missing atoms
----
    pdb4amber -i 2xqq.pdb -o h2xqq.pdb --nohyd // p/ q formatee bien los números y los OXT
    ls h2xqq* | grep -v h2xqq.pdb | xargs rm // elimino los archivos de pdb4amber salvo h2xqq.pdb
    tleap -f leap_2xqq.in
    parmed -i parmed_2xqq // le agrego info de cadena y otras

3ZKE:
----
    pdb4amber -i 3zke.pdb -o h3zke.pdb --nohyd // p/ q formatee bien los números y los OXT
    ls h3zke* | grep -v h3zke.pdb | xargs rm // elimino los archivos de pdb4amber salvo h3zke.pdb
    tleap -f leap_3zke.in
    parmed -i parmed_3zke // le agrego info de cadena y otras

3ZKF:
----
    pdb4amber -i 3zkf.pdb -o h3zkf.pdb --nohyd // p/ q formatee bien los números y los OXT
    ls h3zkf* | grep -v h3zkf.pdb | xargs rm // elimino los archivos de pdb4amber salvo h3zkf.pdb
    tleap -f leap_3zkf.in
    parmed -i parmed_3zkf // le agrego info de cadena y otras

5VKY:
----
    pdb4amber -i 5vky.pdb -o h5vky.pdb --nohyd // p/ q formatee bien los números y los OXT
    ls h5vky* | grep -v h5vky.pdb | xargs rm // elimino los archivos de pdb4amber salvo h5vky.pdb
    *leap_5vky.in* usa `leaprc.phosaa19SB`. A la fosfoserina la llamo SEP, p/ q tenga 2 cargas
    negativas. S1P sería con 1 sola carga negativa.
    tleap -f leap_5vky.in
    parmed -i parmed_5vky // le agrego info de cadena y otras

