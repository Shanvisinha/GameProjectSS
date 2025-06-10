shader_type canvas_item;

uniform float glitch_strength = 0.01;
uniform float glitch_speed = 6.0;
uniform float glitch_frequency = 5.0;

void fragment() {
    vec2 uv = UV;


    float glitch = step(0.5, fract(sin(TIME * glitch_frequency + uv.y * 100.0) * 43758.5453));
    float offset = glitch * glitch_strength * sin(TIME * glitch_speed);

    uv.x += offset;

    COLOR = texture(TEXTURE, uv);
}
