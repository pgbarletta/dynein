uso hlb3f.pdb (TcTex) y hlbm7.pdb (LC8) p/ rotar a todas las proteínas a las coordenadas de 3FM7

## 1F96
 - En *orig_nmr* pongo lo q me mandó Tadeo. Son 1F96, con las cadenas AyB cortadas p/ q cuadre con el resto,
le falta el carbono de ASP9 en cadena C
 - relleno el átomo faltante (CA de ASP de cadena C) con *complete_pdb()* de modeller.
    Ver el script model.ipynb. La salida va a *fill_nmr*
 - En *fill_nmr* corro *cortar.sh* p/ recortar las cadenas C y D p/ conservar sólo los
residuos 1-9 de esas cadenas
 - También ahí corro *agregar_h.sh* p/ correr *pdb4amber* a todas. Ahí le agrego Hs
a todas y le renumero bien los residuos y los átomos.


## 2XQQ

 - Relleno missing atoms con *complete_pdb()* de modeller. Los átomos missing son:

REMARK 470     LYS A   5    CD   CE   NZ
REMARK 470     LYS A  48    CE   NZ
REMARK 470     LYS C   5    CG   CD   CE   NZ
REMARK 470     ASP C  16    CG   OD1  OD2
REMARK 470     GLN C  27    CD   OE1  NE2
REMARK 470     ASN C  33    CG   OD1  ND2
REMARK 470     LYS C  48    CE   NZ
REMARK 470     GLU D  15    CD   OE1  OE2
REMARK 470     GLU F   7    CG   CD   OE1  OE2

Algunos residuos tienen incerteza (A y B, occupancy <1.0). Modeller parece elegir la versión A
automáticamente. Justo lo q quería

Luego alíneo con pymol a *hlbm7.pdb*

## 3ZKF

 - Modelo última ALA de cadenas C y D (ALA C:179 y ALA D:188). Ver model.ipynb
 - Y además tuve q hacer cosas con la fosfoserina. Tiene su propio README, chequearlo. Un quilombo. 
