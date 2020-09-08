# 5VKY

./TMalign hlb3f.pdb nrot_5vky.pdb > tm_log


----------F-IVD-DVSKTIKEAIETTIGGNAYQHD-----KVNNWTGQVVENCLTVLTKEQKPYKYIVTAMIMQKN------G-AGLHTASSC-YWNNDTDGSCTVRWENK--TMYCIVSVFGLAV
          : ::: ::::::::::::::..           ..::::::::::::::::::::::::::::::::::      . ....::::: :::: ::::::::::::  :::::::::::::
IEIKDGRSDNSPLPERKLVTLIQESYDSLKDD------NEINLSTESTSNLLIKLVLEKLEKHSSLYKYIASVTTLNIEGLNEENANFSLKNDIGASWESK-KDGIFNYKLEDKNNNECYLITILWLHK
          ^
          |
Empiezo acá

Voy a descartar los 1eros 10 residuos de 5VKY. Primero la alineo ocn hlb3f en pymol:
    select nrot_5vky and chain A and resi 15:125
    set_name sele, nrot
    select hlb3f and chain A
    set_name sele, 3f
    align nrot, 3f

Y escribo: **rot_5vky.pdb**.

Abro **rot_5vky.pdb** y le corto los 1eros 10 residuos de la cadena A:
IEIKDGRSDN
y los primeros 5 de la cadena B:
IEIKD  
ya que el resto (GRSDN) estaba missing.


Luego tengo q modelar los missing de la cadena B:

REMARK 465     ASP B    36
REMARK 465     ASN B    37
REMARK 465     GLU B    38
REMARK 465     ILE B    39
REMARK 465     ILE B    76
REMARK 465     GLU B    77
REMARK 465     GLY B    78
REMARK 465     LEU B    79
REMARK 465     ASN B    80
REMARK 465     GLU B    81
REMARK 465     GLU B    82
REMARK 465     ASN B    83

Esto lo hago en model.ipynb. Creo los archivos **seq_rot_5vky.seq** (hay q agregarle:
structureX:rot_5vky), **template.seq** y luego creo **alignment.ali** haciendo:

```
   cat seq_rot_5vky.seq template.seq > alignment.ali
```

Luego, modelo en **model.ipynb** y obtengo el mejor modelo: **5vky_fill.BL00040001.pdb**

Devuelva tengo q alinear contra hlb3f pq MODELLER (por alguna razón) traslada a la molécula.
Probablemente la lleve al 0. En fin, cargo **5vky_fill.BL00040001.pdb** y **hlb3f.pdb**

    select hlb3f and chain A or hlb3f and chain B
    align 5vky_fill.BL00040001, hlb3f 

Y escribo: **5vky.pdb**. Y le agrego los TER
