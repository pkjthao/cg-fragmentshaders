#version 300 es
precision mediump float;

// Input
in vec2 model_uv;

// Uniforms
uniform sampler2D image;

// Output
out vec4 FragColor;

void main() {
    
    vec2 coords = model_uv - vec2(0.5, 0.5);
    float r = length(coords);
    float a = atan(coords.y, coords.x);
    float angleOffset = 18.0 * (1.0 - r) * r; 
    float newAngle = a + angleOffset;
    
    coords = vec2(cos(newAngle), sin(newAngle)) * r;
    coords =vec2(0.5 + coords.x, 0.5 + coords.y);
    vec4 color = texture(image, coords);

    // Color
    FragColor = color;
}
