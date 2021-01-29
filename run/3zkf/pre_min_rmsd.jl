# Script p/ encontrar y escribir el PDB "top", es decir, el frame más parecido
# al average de la corrida.
# Leo el archivo de rmsd entre el PDB average y la corrida (fiteada a ese
# mismo average) y encuentro el frame correspondiente. Uso ese nro de frame p/
# modificar el archivo plantilla "get_top_cpp" y lo corro con cpptraj p/ obtener el PDB.

using DelimitedFiles

pdb = "3zkf"
casa = joinpath("/home/pbarletta/labo/20/dynein/run", pdb)
cd(casa)
cpp_plantilla = readlines(joinpath("plantillas", "get_top_cpp"))

cpp = copy(cpp_plantilla)
rmsd_fn = joinpath("pca", "rmsd_avg")

rms = convert(Array{Float64, 1}, readdlm(rmsd_fn)[2:end, 2])
frm = findmin(rms)[2]

cpp[1] = replace(cpp[1], "apo" => pdb)

cpp[3] = replace(cpp[3], "1_full" => string("full"))
cpp[3] = replace(cpp[3], "X" => string(frm))
cpp[3] = replace(cpp[3], "apo" => pdb)

cpp[4] = replace(cpp[4], "apo" => pdb)
cpp[4] = replace(cpp[4], "1_top" => string("top"))

writedlm(joinpath("pca", "get_top_cpp"), cpp)

cd("pca")
run(`cpptraj -i get_top_cpp`)
cd("..")

