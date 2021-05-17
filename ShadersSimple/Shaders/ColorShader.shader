shader_type canvas_item;

uniform vec4 FlashColor : hint_color;
uniform float FlashState : hint_range(0, 1) = 0.0;

void fragment() {
	COLOR = texture(TEXTURE, UV);
	COLOR.rgb  = mix (COLOR, FlashColor, FlashState).rgb;
}

