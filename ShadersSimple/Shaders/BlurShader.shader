shader_type canvas_item;
// Mipmaps must be enable when import sprite check Mipmaps and reimport the sprite
uniform vec4 FlashColor : hint_color;
uniform float BlurState: hint_range(0, 1) = 0.0;

void fragment() {
	COLOR = textureLod(TEXTURE, UV, BlurState * 5.0);
	
}