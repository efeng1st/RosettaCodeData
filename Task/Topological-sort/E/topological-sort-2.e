pragma.enable("accumulator")

def dataText := "\
des_system_lib   std synopsys std_cell_lib des_system_lib dw02 dw01 ramlib ieee
dw01             ieee dw01 dware gtech
dw02             ieee dw02 dware
dw03             std synopsys dware dw03 dw02 dw01 ieee gtech
dw04             dw04 ieee dw01 dware gtech
dw05             dw05 ieee dware
dw06             dw06 ieee dware
dw07             ieee dware
dware            ieee dware
gtech            ieee gtech
ramlib           std ieee
std_cell_lib     ieee std_cell_lib
synopsys\
"

def data := accum [].asMap() for rx`(@item.{17})(@deps.*)` in dataText.split("\n") { _.with(item.trim(), deps.split(" ").asSet()) }

println(topoSort(data))
