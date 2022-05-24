// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function setMovement(){
	
	if right and place_empty(x+spd,y,oColBlock){
		if place_meeting(x+spd,y,oChainBlock){
			var s = spd/4;
		} else var s = spd;
		x += s;
		image_xscale = 1;
	}

	if left and place_empty(x-spd,y,oColBlock){
		if place_meeting(x-spd,y,oChainBlock){
			var s = spd/4;
		} else var s = spd;
		x -= s;
		image_xscale = -1;
	}

	if right or left {
		sprite_index = spriteRunning
	} else {
		sprite_index = spriteIdle
	}
		
	if place_free(x,y+1){
		gravity = 0.5;
	} else {
		gravity = 0;
	}
		
	
	if place_meeting(x,y+vspeed,oColBlock) or place_meeting(x,y+vspeed,oChainBlock){
		var onepixel = sign(vspeed);
		while !(place_meeting(x,y+onepixel,oColBlock)) y += onepixel;
		vspeed = 0;
	}
	if (place_meeting(x,y,oColBlock)) y-=1;


}

function setJumping(){
	if up {
		if !place_meeting(x,y+1,oColBlock){
			if dobjump{
				if !place_meeting(x,y-jump,oColBlock) {
					vspeed = -jump;	
					dobjump = false;
				}
			}
		} else {
			vspeed = -jump;		
			dobjump = true;
		}
	}
}

function setShooting(){
	if interact {
		var bull = instance_create_depth(x,y,depth,oBullet);
		bull.x = x;
		bull.y = y;
	}

}
