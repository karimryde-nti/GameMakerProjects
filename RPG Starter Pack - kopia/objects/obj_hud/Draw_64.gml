// I Draw GUI-eventet
draw_set_color(c_yellow);
draw_set_font(fnt_hud)
draw_text(10, 10, "Rum: " + room_get_name(room));
draw_text(10, 50, "Liv: " + string(obj_player.lifes));
draw_text(10, 90, "Mynt: " + string(obj_player.coins));


