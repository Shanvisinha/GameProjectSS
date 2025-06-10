shader_type canvas_item;

void fragment() {

    vec4 color_top = vec4(0.15, 0.0, 0.2, 1.0);
    vec4 color_mid = vec4(0.05, 0.05, 0.05, 1.0);
    vec4 color_bottom = vec4(0.3, 0.3, 0.3, 1.0);


    if (UV.y < 0.5) {

        COLOR = mix(color_bottom, color_mid, UV.y * 2.0);
    } else {

        COLOR = mix(color_mid, color_top, (UV.y - 0.5) * 2.0);
    }
}
