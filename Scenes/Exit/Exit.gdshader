shader_type canvas_item;

uniform vec4 glow_color : source_color = vec4(0.3, 0.8, 1.0, 1.0); // bright blueish light
uniform float pulse_speed : hint_range(0.1, 10.0) = 2.0;

void fragment() {
    float pulse = 0.7 + 0.3 * sin(TIME * pulse_speed);

    COLOR = glow_color * pulse;
}
