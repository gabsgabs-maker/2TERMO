const entrada = require('readline-sync');

let pecasDefeituosas = [];
const qtd = entrada.questionInt("Digite a quantidade de pecas com defeitos encontradas: ");

for (let i = 0; i < qtd; i++) {
    let serie = entrada.question(`Digite o numero de serie da peca ${i + 1}: `);
    pecasDefeituosas.push(serie);
}

console.log("===Relatório de Peças Defeituosas===");
console.log(`Total de pecas: ${pecasDefeituosas.length}`);
console.log(`Números de série: ${pecasDefeituosas.join(', ')}`);
