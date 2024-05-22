#version 300 es
precision mediump float;

// Input
in vec2 model_uv;

// Uniforms
uniform sampler2D image;

// Output
out vec4 FragColor;

void main() {
    vec2 coords = vec2(model_uv.x * 2.0 - 1.0, model_uv.y * 2.0 -1.0);
    float theta = atan(coords.y, coords.x);
    float r = pow(length(coords), 1.5);

    coords = vec2(r * cos(theta), r * sin(theta));
    coords = vec2(0.5 * (coords.x + 1.0), 0.5 * (coords.y + 1.0));
    vec4 color = texture(image, coords);

    // Color
    FragColor = color;
}
