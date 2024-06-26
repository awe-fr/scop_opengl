#version 430 core

layout(location = 0) in vec3 vertexPosition_modelspace;
layout(location = 1) in vec4 vertexUV;
layout(location = 2) in vec2 textureUV;

out vec4 UV;
out vec2 coor;

uniform mat4 MVP;

void main(){
    gl_Position =  MVP * vec4(vertexPosition_modelspace,1);
    UV = vertexUV;
    coor = textureUV;
}