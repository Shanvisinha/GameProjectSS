shader_type canvas_item;

uniform float time : hint_range(0.0, 10.0);

void fragment() {
    float pulse = sin(time) * 0.5 + 0.5;  // Pulse effect based on sine wave
    COLOR = vec4(0.0, 0.5, 1.0, pulse);  // Blue with pulsing alpha
}
