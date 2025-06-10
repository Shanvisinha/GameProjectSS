shader_type canvas_item;

uniform vec3 wall_tint = vec3(0.2, 0.0, 0.3); // black-purplish
uniform float tint_strength : hint_range(0.0, 1.0) = 0.5;

void fragment() {
    vec4 tex = texture(TEXTURE, UV);

    vec3 final_color = mix(tex.rgb, wall_tint, tint_strength);

    COLOR = vec4(final_color, tex.a);
}
