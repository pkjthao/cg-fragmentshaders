#version 300 es
precision mediump float;

// Input
in vec2 model_uv;

// Uniforms
uniform sampler2D image;
uniform float time;

// Output
out vec4 FragColor;

void main() {
    vec2 coords = vec2(model_uv.x * 2.0 - 1.0, model_uv.y * 2.0 - 1.0);
    float r = length(coords);
    float offset = (sin(r * 30.0 - time * 5.0) + 0.5);
    vec2 new_coords = coords * offset / 60.0;
    coords = coords + new_coords;
    coords = coords * 0.5 + 0.5;
    vec4 color = texture(image, coords);

    // Color
    FragColor = color;
}
