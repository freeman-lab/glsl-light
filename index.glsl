struct Light {
   vec4 position;
   vec3 color; 
   float intensity;
   float ambient;
   float attenuation;
   bool visible;
};

#pragma glslify: export(Light)
