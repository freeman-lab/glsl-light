# glsl-basic-light

Minimal GLSL struct for a light source. Designed for use as a shader component with `glslify`.

# install

To make avaialble in your project

```javascript
npm install glsl-basic-light --save
```

# example

Define 2 lights to use in your shader

```javascript
pragma glslify: Light = require('glsl-basic-light')
uniform Light lights[2];
```

Then set their properties on a `shader` created using `gl-shader`

```javascript
shader.uniforms.lights = [
	{
		position: [0.0, 0.0, 0.0, 1.0],
		color: [1.0, 0.0, 1.0],
		brightness: 1,
		attenuation: 0.5,
		ambient: 0.5,
		cutoff: 180,
		target: [0, 0, 0],
		exponent: 0.0,
		enabled: false
	},
	{
		position: [0.0, 0.0, 5.0, 1.0],
		color: [1.0, 1.0, 0.0],
		brightness: 2,
		attenuation: 0.1,
		ambient: 0.5,
		cutoff: 45,
		target: [2, 2, 0],
		exponent: 0.5,
		enabled: true
	}
]
```

# API

Inside your shader just declare the struct type with

```javascript
pragma glslify: Light = require('glsl-basic-light')
```

and use as you like, e.g. to set a `uniform` or construct a variable.

The attributes and types on the struct are

```javascript
position // vec4
color // vec3
brightness // float
attenuation // float
ambient // float
cutoff // float
target // vec3
exponent // float
enabled // bool
```

You can use these in your shader code however you want, but typically:
- `position` controls the position of the light, with the fourth element differentiating between a point or spot light (`0.0`) or a directional light (`1.0`) 
- `color` and `brightness` will define the light intensity
- `attenuation` controls the light falloff with distance
- `ambient` is the amount of ambient light associated with this light source
- `cutoff`, `target`, and `exponent` are the angular cone cutoff, target location, and falloff exponent for a spotlight