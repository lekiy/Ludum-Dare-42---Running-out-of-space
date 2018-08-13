varying vec2 v_vTexcoord;
 uniform vec4 new_color;
 void main()
 {
	 vec4 alpha = texture2D( gm_BaseTexture, v_vTexcoord) * vec4(1,1,1, new_color.a);
     gl_FragColor = vec4(new_color.x, new_color.y, new_color.z, alpha.a);
 }