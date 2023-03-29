const escola = "Opa44aa";

// Retorna a letra a, por ser o 4° caractere;
console.log(escola.charAt(4));
console.log(escola.charAt(5));

// Retorna o Código HTML
console.log(escola.charCodeAt(3));

console.log(escola.indexOf('4'));

// Exclui o indice 1 (O);
console.log(escola.substring(1));
// Vai do indice 0 até o indice 3;
console.log(escola.substring(0,3));

// Contatenação em JS:
console.log('Escola: '.concat(escola).concat("!"));
console.log('Escola: '+ escola + "!");

// Substitua o 4 por O;
console.log(escola.replace(4, 'O'))
// Substitua todos os O por 4
console.log(escola.replace(/\O/, '4'))

// Transformando String em Array;
console.log('Ana,Maria,Pedro'.split(','));
