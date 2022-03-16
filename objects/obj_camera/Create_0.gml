/// @desc Init

#macro view view_camera[0]

aspectRatio = display_get_width() / display_get_height();
viewHeight = 400;
viewWidth = round(viewHeight * aspectRatio);
cameraOnPlayer = false;

if (viewWidth & 1) {
	viewWidth++;
}
if (viewHeight & 1) {
	viewHeight++;
}

maxWindowScale = min(floor(display_get_width() / viewWidth), floor(display_get_height() / viewHeight));
windowScale = maxWindowScale;

window_set_size(viewWidth * windowScale, viewHeight * windowScale);
alarm[0] = 1;

surface_resize(application_surface, viewWidth * windowScale, viewHeight * windowScale);