const entrada = require('readline-sync');
let listaVisitantes = [];

while (true) {
    let opcao = entrada.question("Deseja adicionar um visitante? (S/N): ");

    if (opcao.toUpperCase() !== 'S') {
        break;
    }
}
    let nomeVis = entrada.question("Nome do visitante: ");
    let empresaVis = entrada.question("Empresa: ");

    listaVisitantes.push({ nome: nomeVis, empresa: empresaVis });

console.log("===Lista de Visitantes===");
for (let i = 0; i < listaVisitantes.length; i++) {
    console.log(`Visitante ${i + 1}: ${listaVisitantes[i].nome} - ${listaVisitantes[i].empresa}`);
}

