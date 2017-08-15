/// @description Movement of box

moveToY += .45;

// Vertical collision
if (place_meeting(x, y + moveToY, obj_Solid)) {
	repeat(abs(moveToY)) {
		if (!place_meeting(x, y + sign(moveToY), obj_Solid)) {
			y += sign(moveToY);
		} else {
			break;
		};
	};
			
	if moveToY < 2 && moveToY > -2 { moveToY = 0 };
	
	moveToY = - moveToY * .75;
};

y += moveToY;
