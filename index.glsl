struct Light {
   vec4 position;
   vec3 color; 
   float brightness;
   float ambient;
   float attenuation;
   vec3 target;
   float cutoff;
   float exponent;
   float enabled;
};

#pragma glslify: export(Light)