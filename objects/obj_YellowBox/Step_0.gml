/// @description Movement of box

moveToY += .45;

// Vertical collision
if (place_meeting(x, y + moveToY, obj_Solid)) {

	
	if (!place_meeting(x, y + 1, obj_Solid)) {
		do { y += sign(moveToY); };
		until (place_meeting(x, y + 1, obj_Solid));
	} else {
		if moveToY < 2 && moveToY > -2 { moveToY = 0 };	
	};

	moveToY = - moveToY * .75;
	
};

y += moveToY;
