shader_type canvas_item;

uniform vec4 lightest : hint_color;
uniform vec4 light : hint_color;
uniform vec4 dark : hint_color;
uniform vec4 darkest : hint_color;

void fragment() {
	COLOR = texture(SCREEN_TEXTURE, SCREEN_UV);
	float rgb_avg = (COLOR.r + COLOR.g + COLOR.b) / 3.0;
	if (rgb_avg < .25) {
		COLOR = darkest;
	} else if (rgb_avg < .5) {
		COLOR = dark;
	} else if (rgb_avg < .75) {
		COLOR = light;
	} else {
		COLOR = lightest;
	}
}