#version 330 core

uniform vec3 lightColor;
uniform vec3 objectColor;
uniform float ambientStrength, diffuseStrength, specularStrength, shininess;

in vec3 vNormal;
in vec3 vLightDir;
in vec3 vViewDir;

out vec4 FragColor;

void main() 
{
    vec3 normal = normalize(vNormal);
    vec3 lightDir = normalize(vLightDir);
    vec3 viewDir = normalize(vViewDir);

    vec3 ambient = ambientStrength * lightColor;

    float d = max(dot(normal, lightDir), 0.0);
    vec3 diffuse = diffuseStrength * d * lightColor;

    float s = 0.0;
    if(d > 0.0) // only use specular if the normal is facing the eye position
    {
        vec3 reflectDir = normalize(reflect(-lightDir, normal));
        float cosphi = max(dot(viewDir, reflectDir),0.0);
        if (cosphi > 0.0)
            s = pow(cosphi, shininess);
    }
    vec3 specular = specularStrength * s * lightColor;

    FragColor = vec4((ambient + diffuse + specular) * objectColor, 1.0);
}
