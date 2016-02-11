struct BasicLight {
   vec4 position;
   vec3 color; 
   float intensity;
   float ambient;
   float attenuation;
   vec3 target;
   float cutoff;
   float exponent;
   bool visible;
};

#pragma glslify: export(BasicLight)