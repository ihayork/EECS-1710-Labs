uniform vec2 resolution;
uniform float time;
uniform float depth;
uniform float rate;
uniform sampler2D texture;

#define N 16

void mainImage(out vec4 fragColor, in vec2 fragCoord) {
	vec2 v = (fragCoord.xy - (resolution * 0.5)) / min(resolution.y, resolution.x) * 10.0;
	vec2 uv = fragCoord.xy / resolution.xy;

	float t = time * 0.3, r = 2.0;
	
	for (int i=1; i<N; i++) {
		float d=(3.14159265 / float(N)) * (float(i) * 14.0);
		r += length(vec2(rate * v.y,rate * v.x)) + 1.21;
		v = vec2(v.x + cos(v.y + cos(r) + d) + tan(t), v.y - sin(v.x + cos(r) + d) + tan(t));
	}
    r = (tan(r * 0.14) * 0.7) + 0.5;
	r = pow(r, depth);
	
	vec4 col = vec4(r, pow(max(r - 0.55, 0.0) * 2.2, 2.0), pow(max(r - 4.875, 0.1) * 3.0, 6.0), 1.0);

	vec4 col2 = texture2D(texture, uv);

	fragColor = col / col2;
}

void main() {
	mainImage(gl_FragColor, gl_FragCoord.xy);
}