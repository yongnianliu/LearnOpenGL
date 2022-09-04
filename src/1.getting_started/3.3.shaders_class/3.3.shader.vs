#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;

out vec3 ourColor;

uniform float hOffsetX;

void main()
{
    vec3 newPos = vec3(aPos.x + hOffsetX, aPos.y, aPos.z);
    gl_Position = vec4(newPos, 1.0);
    ourColor = aColor;
}