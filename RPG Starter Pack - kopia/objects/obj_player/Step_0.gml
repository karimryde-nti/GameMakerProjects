var _hor = keyboard_check(vk_right) - keyboard_check(vk_left);
var _ver = keyboard_check(vk_down) - keyboard_check(vk_up);

if keyboard_check(vk_alt) {
    move_speed = 3
} else {
    move_speed = 1
}

move_and_collide(_hor * move_speed, _ver * move_speed, tilemap, 
undefined, undefined, undefined, move_speed, move_speed);

if (_hor != 0 or _ver != 0) {
    if (_ver > 0) sprite_index = spr_player_walk_down;
    if (_ver < 0) sprite_index = spr_player_walk_up;
    if (_hor > 0) sprite_index = spr_player_walk_right;
    if (_hor < 0) sprite_index = spr_player_walk_left;
}
else {
    if (sprite_index == spr_player_walk_down) sprite_index = spr_player_idle_down; 
    else if (sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up;
    else if (sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;
    else if (sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left;        
}

if (lifes <= 0) {
    game_restart()
}