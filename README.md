# glsl-light

GLSL struct for a light source. Designed for use as a shader component with [`glslify`](https://github.com/stackgl/glslify).

## install

To make avaialble in your project

```javascript
npm install glsl-light --save
```

## example

Define a light in your shader

```glsl
pragma glslify: Light = require('glsl-light')
uniform Light light;
```

Then set their properties on a `shader` created using `gl-shader`

```javascript
shader.uniforms.light = {
	position: [0.0, 0.0, 0.0, 1.0],
	color: [1.0, 0.0, 1.0],
	intensity: 1,
	radius: 20.0,
	ambient: 0.5,
	visible: false
}
```

## API

Inside your shader just declare the struct type with

```glsl
pragma glslify: SceneLight = require('glsl-light')
```

and use as you like, e.g. to set a `uniform` or construct a variable.

The attributes and types on the struct are

```javascript
position // vec4
color // vec3
intensity // float
radius // float
ambient // float
visible // bool
```

You can use these in your shader code however you want, but typically:
- `position` controls the position of the light, with the fourth element differentiating between a point or spot light (`0.0`) or a directional light (`1.0`) 
- `color` and `intensity` will together define the luminance, which can exceed 1.0
- `radius` controls the extent of the light
- `ambient` is the amount of ambient light associated with this light source
