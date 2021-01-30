# dyn

## All
    
    Las 4 réplicas son obtenidas de los frames q obtienen máximos y mínimos valores de proyección con PCA1 y PCA2:

 - 1_: Max projección con PCA2
 - 2_: Max projección con PCA1
 - 3_: Min projección con PCA2
 - 4_: Min projección con PCA1

    Este orden sale de mirar el heatmap de proyecciones de la trayectoria sobre PCA1 y PCA2, arrancar
desde arriba (MAX PROJ PCA2) e ir en sentido horario.

## Modelos

- 3FM7 y sus derivadas: LB3F, LF3F, LBM7, LFM7
- TcTex: 5VKY, 5WI4 (descartada, es quimera), 
- LC8: 1F95 ( DLC8/Bim), 1F96 (DLC8/nNOS), 3ZKE, 3ZKF, 2XQQ(descartada, por ahora)

### 2XQQ

    Sus ICs desordenados son más cortos. Sólo 6 residuos: RGTQTE. El primer 
residuo es una SERina acetilada (p/ q la carga positiva no joda) y eso es un poco molesto
así q por ahora no la voy a incluir.


### Otras

    A partir de 1F95 uso estos archivos auxiliares: *filer_cav.sh*,  *filer.sh* y *min_rmsd.jl*
Una vez q hago y corro, a mano, las carpetas *run*, *pca* y *cavidad*, las
4 restantes las hago automáticamente con estos scripts

### 1F95
    En 1_pdt, una de las IC (C o D, no sé cual), se le despegó una punta por un toque y luego volvió.

### 1F96


### 1XDX
    Tiene 12 residuos más q la TcTex de 3FM7. 114 vs 102. Están todos al ppio de la cadena:
MET GLU GLY VAL ASP PRO ALA VAL GLU GLU ALA ALA PHE
Descarto estos residuos en PCA y así llego a la misma longitud q LF3F

    Los *?_full_fit_1xdx.nc* fueron hechos con RMSfit a :1-228@CA, lo cual estaba mal pq las 2 subunidades
tienen extremos largos. Con esas trayectorias hice PCA y vol, pero esta vez apliqué la máscara: :13-114,127-228@CA.
Luego me di cuenta y rehice los RMSfit con esa misma máscara en funes y me bajé los nuevos *rmsd_1xdx* y *?_full_fit_1xdx.nc*
pero no rehice todo el análisis de PCA y vol pq entiendo q es lo mismo. PCA hace un RMSfit al average antes del análisis
y ahí si utilicé bien la máscara.

### 3ZKF
    En 1_pdt, el N-term de la chain D se despegó a eso de los 50ns de corrida. P/ los 200ns dejó de joder
y se volvió a pegar.

### 5VKY
    Es TcTex1, tiene 112 residuos por cadena y la verdad q no le veo razón p/ cortar la máscara
de RMSD en algún punto particular. 
