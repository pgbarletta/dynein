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
