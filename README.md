# glsl-scene-light

GLSL struct for a light source. Designed for use as a shader component with [`glslify`](https://github.com/stackgl/glslify) and [`gl-scene`](https://github.com/freeman-lab/gl-scene).

## install

To make avaialble in your project

```javascript
npm install glsl-scene-light --save
```

## example

Define a light in your shader

```glsl
pragma glslify: SceneLight = require('glsl-scene-light')
uniform SceneLight light;
```

Then set their properties on a `shader` created using `gl-shader`

```javascript
shader.uniforms.light = {
	position: [0.0, 0.0, 0.0, 1.0],
	color: [1.0, 0.0, 1.0],
	intensity: 1,
	attenuation: 0.5,
	ambient: 0.5,
	cutoff: 180,
	target: [0, 0, 0],
	exponent: 0.0,
	visible: false
}
```

## API

Inside your shader just declare the struct type with

```glsl
pragma glslify: SceneLight = require('glsl-scene-light')
```

and use as you like, e.g. to set a `uniform` or construct a variable.

The attributes and types on the struct are

```javascript
position // vec4
color // vec3
intensity // float
attenuation // float
ambient // float
cutoff // float
target // vec3
exponent // float
visible // bool
```

You can use these in your shader code however you want, but typically:
- `position` controls the position of the light, with the fourth element differentiating between a point or spot light (`0.0`) or a directional light (`1.0`) 
- `color` and `intensity` will together define the luminance, which can exceed 1.0
- `attenuation` controls the light falloff with distance
- `ambient` is the amount of ambient light associated with this light source
- `cutoff`, `target`, and `exponent` are the angular cone cutoff, target location, and falloff exponent for a spotlight
