shader_type canvas_item;

void fragment() {
    vec4 tex = texture(TEXTURE, UV);

    vec3 purple_tint = vec3(0.4, 0.2, 0.6);

    float pulse = 0.9 + 0.1 * sin(TIME * 1.5);

    vec3 final_color = mix(tex.rgb, purple_tint, 0.3);

    final_color = clamp(final_color, 0.0, 0.8);

    COLOR = vec4(final_color * pulse, tex.a);
}
