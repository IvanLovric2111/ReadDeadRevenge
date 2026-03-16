//fade in 
endKey = global.endKey;
alpha +=alphaSpd;
alpha = clamp(alpha, 0,1);

//restart
if endKey && alpha >= 1
{
	room_restart();
}