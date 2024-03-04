.class public Lcom/tencent/ugc/videoprocessor/transitions/MosaicFilter;
.super Lcom/tencent/ugc/videoprocessor/transitions/TXCGPUTransitionFilterBase;
.source "SourceFile"


# static fields
.field private static final FRAGMENT:Ljava/lang/String; = "precision mediump float;\nvarying mediump vec2 _uv;\nuniform sampler2D inputImageTexture;\nuniform float progress;\nuniform float ratio;\n#define PI 3.14159265358979323\n#define POW2(X) X*X\n#define POW3(X) X*X*X\nconst int endx = 2; // = 2\nconst int endy = -1; // = -1\nvec4 getFromColor(in vec2 uv){\n    vec2 fromTexture = vec2(uv.x,1.0 - uv.y);\n    vec4 fromColor = texture2D(inputImageTexture,fromTexture);\n    return fromColor;\n}\nvec4 getToColor(in vec2 uv){\n    vec2 toTexture = vec2(uv.x,1.0-uv.y);\n    vec4 toColor = texture2D(inputImageTexture,toTexture);\n    return toColor;\n}\nfloat Rand(vec2 v) {\n  return fract(sin(dot(v.xy ,vec2(12.9898,78.233))) * 43758.5453);\n}\nvec2 Rotate(vec2 v, float a) {\n  mat2 rm = mat2(cos(a), -sin(a),\n                 sin(a), cos(a));\n  return rm*v;\n}\nfloat CosInterpolation(float x) {\n  return -cos(x*PI)/2.+.5;\n}\nvec4 transition(vec2 uv) {\n  vec2 p = uv.xy / vec2(1.0).xy - .5;\n  vec2 rp = p;\n  float rpr = (progress*2.-1.);\n  float z = -(rpr*rpr*2.) + 3.;\n  float az = abs(z);\n  rp *= az;\n  rp += mix(vec2(.5, .5), vec2(float(endx) + .5, float(endy) + .5), POW2(CosInterpolation(progress)));\n  vec2 mrp = mod(rp, 1.);\n  vec2 crp = rp;\n  bool onEnd = int(floor(crp.x))==endx&&int(floor(crp.y))==endy;\n  if(!onEnd) {\n    float ang = float(int(Rand(floor(crp))*4.))*.5*PI;\n    mrp = vec2(.5) + Rotate(mrp-vec2(.5), ang);\n  }\n  if(onEnd || Rand(floor(crp))>.5) {\n    return getToColor(mrp);\n  } else {\n    return getFromColor(mrp);\n  }\n}\nvoid main() {\n    gl_FragColor = transition(_uv);\n}"


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const-string v0, "attribute vec2 position; \nvarying mediump vec2 _uv;\n  \nvoid main() \n{ \n    gl_Position = vec4(position,0,1); \n    vec2 uv = position * 0.5 + 0.5;\n    _uv = vec2(uv.x,1.0 - uv.y);\n}"

    const-string v1, "precision mediump float;\nvarying mediump vec2 _uv;\nuniform sampler2D inputImageTexture;\nuniform float progress;\nuniform float ratio;\n#define PI 3.14159265358979323\n#define POW2(X) X*X\n#define POW3(X) X*X*X\nconst int endx = 2; // = 2\nconst int endy = -1; // = -1\nvec4 getFromColor(in vec2 uv){\n    vec2 fromTexture = vec2(uv.x,1.0 - uv.y);\n    vec4 fromColor = texture2D(inputImageTexture,fromTexture);\n    return fromColor;\n}\nvec4 getToColor(in vec2 uv){\n    vec2 toTexture = vec2(uv.x,1.0-uv.y);\n    vec4 toColor = texture2D(inputImageTexture,toTexture);\n    return toColor;\n}\nfloat Rand(vec2 v) {\n  return fract(sin(dot(v.xy ,vec2(12.9898,78.233))) * 43758.5453);\n}\nvec2 Rotate(vec2 v, float a) {\n  mat2 rm = mat2(cos(a), -sin(a),\n                 sin(a), cos(a));\n  return rm*v;\n}\nfloat CosInterpolation(float x) {\n  return -cos(x*PI)/2.+.5;\n}\nvec4 transition(vec2 uv) {\n  vec2 p = uv.xy / vec2(1.0).xy - .5;\n  vec2 rp = p;\n  float rpr = (progress*2.-1.);\n  float z = -(rpr*rpr*2.) + 3.;\n  float az = abs(z);\n  rp *= az;\n  rp += mix(vec2(.5, .5), vec2(float(endx) + .5, float(endy) + .5), POW2(CosInterpolation(progress)));\n  vec2 mrp = mod(rp, 1.);\n  vec2 crp = rp;\n  bool onEnd = int(floor(crp.x))==endx&&int(floor(crp.y))==endy;\n  if(!onEnd) {\n    float ang = float(int(Rand(floor(crp))*4.))*.5*PI;\n    mrp = vec2(.5) + Rotate(mrp-vec2(.5), ang);\n  }\n  if(onEnd || Rand(floor(crp))>.5) {\n    return getToColor(mrp);\n  } else {\n    return getFromColor(mrp);\n  }\n}\nvoid main() {\n    gl_FragColor = transition(_uv);\n}"

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/ugc/videoprocessor/transitions/TXCGPUTransitionFilterBase;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
