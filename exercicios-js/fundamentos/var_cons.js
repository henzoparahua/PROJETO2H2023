// tipo    nome    valor


// var e let são diferentes
var a = 3;
let b = 4

// É possivel re-declarar uma var no JS
var a = 30;
console.log(a, b);

a = 300;
b = 400;
console.log(a, b);

const c = 5
// Impossivel declarar valor de const novamente. c = 50;
console.log(c)