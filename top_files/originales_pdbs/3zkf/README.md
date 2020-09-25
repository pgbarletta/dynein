# 3ZKF

## Modelado

Modelo las ALA q faltan al final de las cadenas C y D

Esto lo hago en model.ipynb. 

*nofill_3kf.pdb* tiene SEP en vez de SER en las cadenas C y D. Asi q se lo convierto
en SER p/ q modeller no joda. Después voy a reconvertir en SEP.

Creo los archivos **seq_nofill_3zkf.seq** (hay q agregarle:
structureX:nofill_3zkf), **template.seq** y luego creo **alignment.ali** haciendo:

```
   cat seq_nofill_3zkf.seq template.seq > alignment.ali
```

Luego, modelo en **model.ipynb** y obtengo el mejor modelo: **3zkf_fill.BL00040001.pdb**

Ahora tengo q recuperar las 2 SEP de las cadenas C y D. Como MODELLER (por alguna razón),
traslada el modelo lo realineo a la molécula sin rellenar original (*nofill_3zkf.pdb*).
y exporto esa molécula como *rot_fill_3zkf.pdb*.

Ahora tengo q convertir esas SER en SEP y p/ eso no sólo tengo q cambiar el nombre y
ATOM por HETATM. También tengo q agregar el fosfato a ese oxígeno. *SER_vs_SEP.png*
muestra la diferencia. P/ hacer esto, reemplazo la cadena lateral de SER del modelo por la
cadena lateral(CB en adelante) del SEP proveniente del PDB original (*nofill_3zkf.pdb*).
Por eso alineé antes, p/ poder conservar las coordenadas originales de la cadena lateral.
SER y SEP de los PDBs no se alinearon perfectamente (como puede verse en *SER_vs_SEP.png*),
pero creo q no debería haber problema alguno y la minimización debería arreglar cualquier
ángulo y distancia mal acomodados.

Finalmente alíneo contra *hlbm7.pdb*, escribo: **3zkf.pdb** y le agrego los TER
