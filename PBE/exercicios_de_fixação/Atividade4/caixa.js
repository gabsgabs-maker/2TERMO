const entrada = require('readline-sync');
const vendas  = require('./calculoVendas');

console.log("===SISTEMA DE VENDAS===");

const cliente = entrada.question("Digite o nome do cliente: ")
const valorProduto = entrada.questionFloat("Digite o valor do produto: ");
const quantidadeVendida = entrada.questionInt("Digite a quantidade vendida: ");
const totalVendas = vendas.calcularTotal(valorProduto, quantidadeVendida);

const cupom = vendas.gerarCupom(cliente, totalVendas);
   
console.log("\n---CUPOM FISCAL---");
console.log(cupom);