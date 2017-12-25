cx = camera_get_view_x(view_camera[0]);
cy = camera_get_view_y(view_camera[0]);
cw = camera_get_view_width(view_camera[0]);

draw_set_font(fnt_Score);
draw_text(cx+cw/2,cy+25,"Score: " + string(Score));