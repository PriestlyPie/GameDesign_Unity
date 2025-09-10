ysp += 0.035

xsp = 0

if keyboard_check(vk_left)
{
        xsp = -1
}
if keyboard_check(vk_right)
{
        xsp = +1
}
if place_meeting(x, y+1, oBlocks)
{
        ysp = 0
        if keyboard_check(vk_up)
        {
                ysp = -2.2 
        }
}
move_and_collide(xsp, ysp, oBlocks)

if (place_meeting(x, y, oFlag))
{
    room_goto_next();
}
if (place_meeting(x, y, oSpike))
{
    room_restart();
}

if keyboard_check_pressed(vk_escape)
{
	room_restart();
}
