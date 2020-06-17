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
    deleted GLN_1 (misses 5 heavy atoms) and SER_104 (misses 1 heavy atom).
    %s/  CD  ILE/  CD1 ILE/g
    fixed C terminal oxygens for the 4 domain chains (C and D don't have N and C terminus, why?). They should be called OXT.
    pdb4amber -i 3fm7.pdb -o h3fm7.pdb  --reduce  // elimino todos los archivos salvo h3fm7.pdb
    wrote and run "leap_3fm7.in". logfile in "log_3fm7"

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

