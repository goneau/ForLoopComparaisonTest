/// @description Movement of box

moveToY += .45;

// Vertical collision
if (place_meeting(x, y + moveToY, obj_Solid)) {
	
	if (!place_meeting(x, y + (moveToY div 2), obj_Solid)) {
		y += (moveToY div 2);	
	};
	
	if moveToY < 2 && moveToY > -2 {
		moveToY = 0
	} else {	
		moveToY = - moveToY * .75;
	};
};

y += moveToY;

