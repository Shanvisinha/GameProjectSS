shader_type canvas_item;

void fragment() {
    float glitch = step(0.9, fract(UV.y * 10.0 + TIME * 5.0)) * 0.2;
    vec4 base_color = vec4(0.1 + glitch, 0.0, 0.1 + glitch, 0.7);
    COLOR = base_color;
}
