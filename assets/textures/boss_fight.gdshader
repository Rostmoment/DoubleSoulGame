shader_type canvas_item;

uniform float soul_hit = 0;

void fragment() {
	COLOR.rgb = texture(TEXTURE, UV).rgb * (1.0 - soul_hit) + vec3(1,1,1) * soul_hit;
	COLOR.a = texture(TEXTURE, UV).a;
}
