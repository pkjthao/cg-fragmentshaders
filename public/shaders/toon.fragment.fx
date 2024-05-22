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
    float r = round(model_color.x * 4.0) / 4.0;
    float g = round(model_color.y * 4.0) / 4.0;
    float b = round(model_color.z * 4.0) / 4.0;

    model_color = vec3(r, g, b);

    // Color
    FragColor = vec4(model_color, 1.0);
}
