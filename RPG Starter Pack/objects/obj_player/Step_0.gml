// Lyssna på tangentbordet
var _hor = keyboard_check(vk_right) - keyboard_check(vk_left);
var _ver = keyboard_check(vk_down) - keyboard_check(vk_up);

// Förflytta player
move_and_collide(_hor * move_speed, _ver * move_speed, tilemap, undefined, undefined, undefined, move_speed, move_speed);

// Animera player om den är i rörelse
if (_hor != 0 or _ver != 0) {
    // Rörelse nedåt
    if (_ver > 0) sprite_index = spr_player_walk_down;
    // Rörelse uppåt
    if (_ver < 0) sprite_index = spr_player_walk_up;
        
    // Rörelse höger
    if (_hor > 0) sprite_index = spr_player_walk_right;
    // Rörelse vänster
    if (_hor < 0) sprite_index = spr_player_walk_left;
}
else {
    // För varje walk-animation väljer rätt idle-sprite
    if (sprite_index == spr_player_walk_down) sprite_index = spr_player_idle_down; 
    if (sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up;
    if (sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;
    if (sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left;        
}