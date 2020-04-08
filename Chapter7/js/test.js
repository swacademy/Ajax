/**
 * 
 */
var num1 = parseInt(prompt("Enter a First Number : "));
var num2 = parseInt(prompt("Enter a Secend Number : "));
var op = prompt("Enter a operator(+,-,x,/) : ");
var result;
switch(op){
	case '+' : result = num1 + num2; break; 
	case '-' : result = num1 - num2; break;
	case 'x' : result = num1 * num2; break;
	case '/' : result = num1 / num2; break;
}
alert(num1 + op + num2 + ' = ' + result);