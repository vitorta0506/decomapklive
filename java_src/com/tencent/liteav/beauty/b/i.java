package com.tencent.liteav.beauty.b;

import android.graphics.Bitmap;
import android.opengl.GLES20;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
import java.nio.FloatBuffer;
/* loaded from: classes4.dex */
public final class i extends com.tencent.liteav.videobase.a.b {

    /* renamed from: a  reason: collision with root package name */
    Bitmap f31157a;

    /* renamed from: b  reason: collision with root package name */
    int f31158b;

    /* renamed from: c  reason: collision with root package name */
    Bitmap f31159c;

    /* renamed from: d  reason: collision with root package name */
    int f31160d;

    /* renamed from: e  reason: collision with root package name */
    final FloatBuffer f31161e;

    /* renamed from: f  reason: collision with root package name */
    final FloatBuffer f31162f;

    /* renamed from: g  reason: collision with root package name */
    private int f31163g;

    /* renamed from: h  reason: collision with root package name */
    private int f31164h;

    /* renamed from: i  reason: collision with root package name */
    private int f31165i;

    /* renamed from: j  reason: collision with root package name */
    private int f31166j;

    public i() {
        super(com.tencent.liteav.videobase.a.b.NO_FILTER_VERTEX_SHADER, "varying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\nuniform sampler2D inputImageTexture2; // lookup texture 1\nuniform sampler2D inputImageTexture3; // lookup texture 2\n\n\nuniform lowp vec3 v3_params;\nuniform lowp vec2 v2_texs;\n\n\nvoid main()\n{\n    lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n\n    mediump float blueColor = textureColor.b * 63.0;\n\n    mediump vec2 quad1;\n    quad1.y = floor(floor(blueColor) / 8.0);\n    quad1.x = floor(blueColor) - (quad1.y * 8.0);\n\n    mediump vec2 quad2;\n    quad2.y = floor(ceil(blueColor) / 8.0);\n    quad2.x = ceil(blueColor) - (quad2.y * 8.0);\n\n    highp vec2 texPos1;\n    texPos1.x = (quad1.x * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.r);\n    texPos1.y = (quad1.y * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.g);\n\n    highp vec2 texPos2;\n    texPos2.x = (quad2.x * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.r);\n    texPos2.y = (quad2.y * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.g);\n\n    lowp vec4 newColor1;\n    lowp vec4 newColor2;\n    if(textureCoordinate.x <= v3_params.x) { \n      if(v2_texs.x == 1.0) { \n        newColor1 = texture2D(inputImageTexture2, texPos1);\n        newColor2 = texture2D(inputImageTexture2, texPos2);\n        lowp vec4 newColor = mix(newColor1, newColor2, fract(blueColor));\n        gl_FragColor = mix(textureColor, vec4(newColor.rgb, textureColor.w), v3_params.y);\n      } else { \n        gl_FragColor = textureColor;\n      } \n    } else {\n      if(v2_texs.y == 1.0) { \n        newColor1 = texture2D(inputImageTexture3, texPos1);\n        newColor2 = texture2D(inputImageTexture3, texPos2);\n        lowp vec4 newColor = mix(newColor1, newColor2, fract(blueColor));\n        gl_FragColor = mix(textureColor, vec4(newColor.rgb, textureColor.w), v3_params.z);\n      } else { \n        gl_FragColor = textureColor;\n      } \n    }\n }");
        this.f31157a = null;
        this.f31158b = -1;
        this.f31159c = null;
        this.f31160d = -1;
        this.f31161e = FloatBuffer.allocate(3);
        this.f31162f = FloatBuffer.allocate(2);
    }

    public final void a(float f10, Bitmap bitmap, float f11, Bitmap bitmap2, float f12) {
        runOnDraw(j.a(this, f10, f11, f12, bitmap, bitmap2));
    }

    @Override // com.tencent.liteav.videobase.a.b
    public final void afterDrawArrays() {
        super.afterDrawArrays();
        if (this.f31158b != -1) {
            GLES20.glActiveTexture(33987);
            GLES20.glBindTexture(3553, 0);
        }
        if (this.f31160d != -1) {
            GLES20.glActiveTexture(33988);
            GLES20.glBindTexture(3553, 0);
        }
    }

    @Override // com.tencent.liteav.videobase.a.b
    public final void beforeDrawArrays(int i9) {
        super.beforeDrawArrays(i9);
        if (this.f31158b != -1) {
            GLES20.glActiveTexture(33987);
            GLES20.glBindTexture(3553, this.f31158b);
            GLES20.glUniform1i(this.f31163g, 3);
        }
        if (this.f31160d != -1) {
            GLES20.glActiveTexture(33988);
            GLES20.glBindTexture(3553, this.f31160d);
            GLES20.glUniform1i(this.f31164h, 4);
        }
        GLES20.glUniform2fv(this.f31166j, 1, this.f31162f);
        GLES20.glUniform3fv(this.f31165i, 1, this.f31161e);
    }

    @Override // com.tencent.liteav.videobase.a.b
    public final void onInit(com.tencent.liteav.videobase.frame.e eVar) {
        super.onInit(eVar);
        this.f31163g = GLES20.glGetUniformLocation(getProgramId(), com.tencent.liteav.videobase.a.j.SECOND_INPUT_SAMPLE2D_NAME);
        this.f31164h = GLES20.glGetUniformLocation(getProgramId(), com.tencent.liteav.videobase.a.j.THIRD_INPUT_SAMPLE2D_NAME);
        this.f31165i = GLES20.glGetUniformLocation(getProgramId(), "v3_params");
        this.f31166j = GLES20.glGetUniformLocation(getProgramId(), "v2_texs");
        if (this.f31157a == null && this.f31159c == null) {
            return;
        }
        a(this.f31161e.get(0), this.f31157a, this.f31161e.get(1), this.f31159c, this.f31161e.get(2));
        this.f31157a = null;
        this.f31159c = null;
    }

    @Override // com.tencent.liteav.videobase.a.b
    public final void onUninit() {
        super.onUninit();
        OpenGlUtils.deleteTexture(this.f31158b);
        OpenGlUtils.deleteTexture(this.f31160d);
        this.f31158b = -1;
        this.f31160d = -1;
    }
}
