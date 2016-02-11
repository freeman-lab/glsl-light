struct SceneLight {
   vec4 position;
   vec3 color; 
   float intensity;
   float ambient;
   float attenuation;
   vec3 target;
   float cutoff;
   bool visible;
};

#pragma glslify: export(SceneLight)
