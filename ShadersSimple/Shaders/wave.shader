shader_type canvas_item;

uniform vec4 FlashColor : hint_color;
uniform float FlashState : hint_range(0, 1) = 0.0;
uniform float SpeedWave : hint_range(0, 10) = 0.0;
void fragment() {
	COLOR = texture(TEXTURE, UV);
	vec2 WaveUV = UV;
	WaveUV.x += sin(TIME * SpeedWave + WaveUV.y * 8.0) * 0.2;
	COLOR = textureLod(TEXTURE, WaveUV, FlashState * 2.0);
}