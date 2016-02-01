struct BasicLight {
   vec4 position;
   vec3 color; 
   float brightness;
   float ambient;
   float attenuation;
   vec3 target;
   float cutoff;
   float exponent;
   bool enabled;
};

#pragma glslify: export(BasicLight)