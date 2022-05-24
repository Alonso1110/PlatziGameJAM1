/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
getInput();
var s = oPlayer.spd;
if right and place_empty(x+s,y,oCol){
	x += s/4;
}

if left and place_empty(x-s,y,oCol){
	x -= s/4;
}
