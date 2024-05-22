#version 300 es
precision mediump float;

// Input
in vec2 model_uv;

// Uniforms
uniform sampler2D image;

// Output
out vec4 FragColor;

void main() {
    vec3 model_color = texture(image, model_uv).rgb;
    float L = 0.299 * model_color.x + 0.587 * model_color.y + 0.114 * model_color.z;
    vec3 black_white = vec3(L, L, L);

    // Color
    //FragColor = texture(image, model_uv);
    FragColor = vec4(black_white, 1.0);
}
