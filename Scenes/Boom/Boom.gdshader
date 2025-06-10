shader_type canvas_item;

uniform vec4 glow_color : source_color = vec4(1.0, 0.5, 0.0, 1.0);
uniform float glow_intensity : hint_range(0.0, 1.0) = 0.5;

void fragment() {
    vec2 uv = UV; //  UV for 2D shaders
    float dist = length(uv - vec2(0.5));
    COLOR = glow_color * (1.0 - dist) * glow_intensity;
}