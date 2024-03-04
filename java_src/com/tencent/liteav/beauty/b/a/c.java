package com.tencent.liteav.beauty.b.a;

import android.opengl.GLES20;
import com.tencent.liteav.videobase.frame.e;
/* loaded from: classes4.dex */
public final class c extends com.tencent.liteav.videobase.c.c {

    /* renamed from: a  reason: collision with root package name */
    private int f31073a;

    /* renamed from: b  reason: collision with root package name */
    private int f31074b;

    /* renamed from: c  reason: collision with root package name */
    private int f31075c;

    /* renamed from: d  reason: collision with root package name */
    private int f31076d;

    /* renamed from: e  reason: collision with root package name */
    private int f31077e;

    /* renamed from: f  reason: collision with root package name */
    private int f31078f;

    /* renamed from: g  reason: collision with root package name */
    private float f31079g;

    /* renamed from: h  reason: collision with root package name */
    private float f31080h;

    /* renamed from: i  reason: collision with root package name */
    private float f31081i;

    /* renamed from: j  reason: collision with root package name */
    private float f31082j;

    public c() {
        super("attribute vec4 position;\n attribute vec4 inputTextureCoordinate;\n attribute vec4 inputTextureCoordinate2;\n attribute vec4 inputTextureCoordinate3;\n uniform float texelWidthOffset;\n uniform float texelHeightOffset;\n \n varying vec2 textureCoordinate;\n varying vec2 textureCoordinate2;\n varying vec2 textureCoordinate3;\n varying vec4 textureShift_1;\n varying vec4 textureShift_2;\n varying vec4 textureShift_3;\n varying vec4 textureShift_4;\n \n void main(void)\n {\n     gl_Position = position;\n     textureCoordinate = inputTextureCoordinate.xy;\n     textureCoordinate2 = inputTextureCoordinate2.xy;\n     textureCoordinate3 = inputTextureCoordinate3.xy;\n     textureShift_1 = vec4(textureCoordinate + vec2(-texelWidthOffset, 0.0),                           textureCoordinate + vec2(texelWidthOffset, 0.0));\n     textureShift_2 = vec4(textureCoordinate + vec2(0.0, -texelHeightOffset),                           textureCoordinate + vec2(0.0, texelHeightOffset));\n     textureShift_3 = vec4(textureCoordinate + vec2(texelWidthOffset, texelHeightOffset),                           textureCoordinate + vec2(-texelWidthOffset, -texelHeightOffset));\n     textureShift_4 = vec4(textureCoordinate + vec2(-texelWidthOffset, texelHeightOffset),                           textureCoordinate + vec2(texelWidthOffset, -texelHeightOffset));\n }\n", "precision mediump float;\n varying highp vec2 textureCoordinate;\n varying highp vec2 textureCoordinate2;\n varying highp vec2 textureCoordinate3;\n varying highp vec4 textureShift_1;\n varying highp vec4 textureShift_2;\n varying highp vec4 textureShift_3;\n varying highp vec4 textureShift_4;\n \n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2;\n uniform sampler2D inputImageTexture3;\n uniform highp float blurStrength;\n uniform highp float sharpenStrength;\n uniform highp float whitenStrength;\n uniform highp float ruddyStrength;\n\n \n const mediump vec3 luminanceWeighting = vec3(0.2125, 0.7154, 0.0721);\n  const highp mat3 saturateMatrix = mat3(\n                                        1.1102, -0.0598, -0.061,\n                                        -0.0774, 1.0826, -0.1186,\n                                        -0.0228, -0.0228, 1.1772);\n highp vec3 rgb2hsv(highp vec3 c)\n {\n     highp vec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);\n     highp vec4 p = mix(vec4(c.bg, K.wz), vec4(c.gb, K.xy), step(c.b, c.g));\n     highp vec4 q = mix(vec4(p.xyw, c.r), vec4(c.r, p.yzx), step(p.x, c.r));\n     \n     highp float d = q.x - min(q.w, q.y);\n     highp float e = 1.0e-10;\n     return vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);\n }\n void main()\n {\n     lowp vec4 iColor = texture2D(inputImageTexture, textureCoordinate);\n     lowp vec4 meanColor = texture2D(inputImageTexture2, textureCoordinate2);\n     lowp vec4 varColor = texture2D(inputImageTexture3, textureCoordinate3);\n     \n     lowp float iSkinR = iColor.r;\n     lowp float mSkinR = meanColor.r;\n     \n     // smooth\n     mediump float p = clamp((min(iSkinR, mSkinR - 0.1) - 0.2) * 4.0, 0.0, 1.0);\n     mediump float meanVar = (varColor.r + varColor.g + varColor.b) / 3.0;\n     mediump float diffFactor = (1.0 - meanVar / (meanVar + 0.1));\n     mediump float kMin = diffFactor * p;\n     lowp vec3 smoothColor = mix(iColor.rgb, meanColor.rgb, kMin * blurStrength);\n     \n     // sharpen\n     mediump vec3 sum = 0.25* iColor.rgb;// 0.25*iColor.rgb;\n     sum += 0.125 *texture2D(inputImageTexture,textureShift_1.xy).rgb;\n     sum += 0.125 *texture2D(inputImageTexture,textureShift_1.zw).rgb;\n     sum += 0.125 *texture2D(inputImageTexture,textureShift_2.xy).rgb;\n     sum += 0.125 *texture2D(inputImageTexture,textureShift_2.zw).rgb;\n     sum += 0.0625*texture2D(inputImageTexture,textureShift_3.xy).rgb;\n     sum += 0.0625*texture2D(inputImageTexture,textureShift_3.zw).rgb;\n     sum += 0.0625*texture2D(inputImageTexture,textureShift_4.xy).rgb;\n     sum += 0.0625*texture2D(inputImageTexture,textureShift_4.zw).rgb;\n     vec3 hPass = iColor.rgb - sum;\n     lowp vec3 sharpenResult =          clamp(smoothColor + hPass.g + hPass.rgb * max(0.0, meanVar - 0.05) / (meanVar + 0.1),               vec3(0.0), vec3(1.0));\n     lowp vec3 sharpenColor =          clamp(mix(smoothColor.rgb, sharpenResult.rgb, sharpenStrength),               vec3(0.0), vec3(1.0));\n     \n     //美白\n     //提升对比度，黑白分明\n     lowp vec4 white =          vec4(((sharpenColor.rgb - vec3(0.5)) * (1.0 + whitenStrength * 0.125) + vec3(0.5)),              iColor.a);\n     //越亮越白，越暗越不白\n     lowp vec3 hsv = rgb2hsv(white.rgb);\n     highp float wDegree = 4.0 * hsv.z * whitenStrength + 0.00001;\n     //log曲线美白\n     white.r = log(1.0 + wDegree * white.r)/log(wDegree + 1.0);\n     white.gb = log(1.0 + wDegree * white.gb)/log(wDegree + 1.0);\n     white = mix(vec4(sharpenColor, iColor.a), white, min(wDegree, 0.8));\n     //饱和度红润\n     lowp vec3 ruddy = white.rgb * saturateMatrix;\n     ruddy = mix(white.rgb, ruddy, ruddyStrength * 0.7);\n     gl_FragColor = vec4(ruddy, 1.0);     // whiten red\n\n }");
        this.f31079g = 0.0f;
        this.f31080h = 0.0f;
        this.f31081i = 0.0f;
        this.f31082j = 0.0f;
    }

    public final void a(float f10) {
        this.f31079g = f10;
        setFloatOnDraw(this.f31075c, f10);
        setFloatOnDraw(this.f31076d, 0.3f * f10 * f10);
    }

    public final void b(float f10) {
        this.f31080h = f10;
        setFloatOnDraw(this.f31078f, f10);
    }

    public final void c(float f10) {
        this.f31081i = f10;
        setFloatOnDraw(this.f31077e, f10);
    }

    @Override // com.tencent.liteav.videobase.a.b
    public final boolean canBeSkipped() {
        return isLessOrEqualZero(this.f31079g) && isLessOrEqualZero(this.f31080h) && isLessOrEqualZero(this.f31081i) && isLessOrEqualZero(this.f31082j);
    }

    public final void d(float f10) {
        this.f31082j = f10;
        setFloatOnDraw(this.f31076d, f10);
    }

    @Override // com.tencent.liteav.videobase.c.c, com.tencent.liteav.videobase.c.d, com.tencent.liteav.videobase.a.b
    public final void onInit(e eVar) {
        super.onInit(eVar);
        this.f31073a = GLES20.glGetUniformLocation(getProgramId(), "texelWidthOffset");
        this.f31074b = GLES20.glGetUniformLocation(getProgramId(), "texelHeightOffset");
        this.f31075c = GLES20.glGetUniformLocation(getProgramId(), "blurStrength");
        this.f31076d = GLES20.glGetUniformLocation(getProgramId(), "sharpenStrength");
        this.f31077e = GLES20.glGetUniformLocation(getProgramId(), "ruddyStrength");
        this.f31078f = GLES20.glGetUniformLocation(getProgramId(), "whitenStrength");
    }

    @Override // com.tencent.liteav.videobase.c.c, com.tencent.liteav.videobase.a.b
    public final void onOutputSizeChanged(int i9, int i10) {
        super.onOutputSizeChanged(i9, i10);
        setFloatOnDraw(this.f31073a, 1.0f / i9);
        setFloatOnDraw(this.f31074b, 1.0f / i10);
    }
}
