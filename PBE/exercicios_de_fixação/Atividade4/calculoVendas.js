function calcularTotal(preco, qtd) {
    return preco * qtd;

}
function gerarCupom(nome , valor) {
    return `olá ${nome}, o valor total da sua compra é de: R$ ${valor.toFixed(2)}`;

}
module.exports = {
    calcularTotal,
    gerarCupom
}