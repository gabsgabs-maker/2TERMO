const entrada = require('readline-sync');
const conversão  = require('./conversor');

console.log("===SISTEMA DE CONVERSÃO===");

const valordolar = entrada.questionInt("Digite o valor em Dolar (US$): ");

const total = conversão.conversor(valordolar);

console.log(`O valor em real é: R$  ${(valordolar).toFixed(2)}`);