shader_type canvas_item;

uniform vec2 scroll_speed;
uniform vec4 col1;
uniform vec4 col2;
uniform float wave_frequency;

void fragment() {
	float gradient = sin(((UV + scroll_speed * TIME).g + (UV + scroll_speed * TIME).r) * wave_frequency);
	vec4 color;
	if (gradient < 0.0) {
		COLOR = col1;
	}
	else {
		COLOR = col2;
	}
}
