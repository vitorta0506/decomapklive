package com.tencent.liteav.beauty.b.a;

import android.opengl.GLES20;
import com.tencent.liteav.videobase.frame.e;
/* loaded from: classes4.dex */
final class d extends com.tencent.liteav.videobase.a.b {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f31083a;

    /* renamed from: b  reason: collision with root package name */
    private int f31084b;

    /* renamed from: c  reason: collision with root package name */
    private int f31085c;

    public d(boolean z10) {
        super(" attribute vec4 position;\n attribute vec4 inputTextureCoordinate;\n \n uniform float texelWidthOffset;\n uniform float texelHeightOffset;\n \n varying vec2 textureCoordinate;\n varying vec4 textureShift_1;\n varying vec4 textureShift_2;\n varying vec4 textureShift_3;\n varying vec4 textureShift_4;\n \n void main(void)\n {\n     gl_Position = position;\n     textureCoordinate = inputTextureCoordinate.xy;\n     \n     vec2 singleStepOffset = vec2(texelWidthOffset, texelHeightOffset);\n     textureShift_1 = vec4(textureCoordinate - singleStepOffset,                           textureCoordinate + singleStepOffset);\n     textureShift_2 = vec4(textureCoordinate - 2.0 * singleStepOffset,                           textureCoordinate + 2.0 * singleStepOffset);\n     textureShift_3 = vec4(textureCoordinate - 3.0 * singleStepOffset,                           textureCoordinate + 3.0 * singleStepOffset);\n     textureShift_4 = vec4(textureCoordinate - 4.0 * singleStepOffset,                           textureCoordinate + 4.0 * singleStepOffset);\n }\n", "uniform sampler2D inputImageTexture;\n varying highp vec2 textureCoordinate;\n varying highp vec4 textureShift_1;\n varying highp vec4 textureShift_2;\n varying highp vec4 textureShift_3;\n varying highp vec4 textureShift_4;\n \n void main()\n {\n     mediump vec3 sum = texture2D(inputImageTexture, textureCoordinate).rgb;\n     sum += texture2D(inputImageTexture, textureShift_1.xy).rgb;\n     sum += texture2D(inputImageTexture, textureShift_1.zw).rgb;\n     sum += texture2D(inputImageTexture, textureShift_2.xy).rgb;\n     sum += texture2D(inputImageTexture, textureShift_2.zw).rgb;\n     sum += texture2D(inputImageTexture, textureShift_3.xy).rgb;\n     sum += texture2D(inputImageTexture, textureShift_3.zw).rgb;\n     sum += texture2D(inputImageTexture, textureShift_4.xy).rgb;\n     sum += texture2D(inputImageTexture, textureShift_4.zw).rgb;\n     \n     gl_FragColor = vec4(sum * 0.1111, 1.0);\n }\n");
        this.f31084b = -1;
        this.f31085c = -1;
        this.f31083a = z10;
    }

    @Override // com.tencent.liteav.videobase.a.b
    public final void onInit(e eVar) {
        super.onInit(eVar);
        this.f31084b = GLES20.glGetUniformLocation(getProgramId(), "texelWidthOffset");
        this.f31085c = GLES20.glGetUniformLocation(getProgramId(), "texelHeightOffset");
    }

    @Override // com.tencent.liteav.videobase.a.b
    public final void onOutputSizeChanged(int i9, int i10) {
        float min = Math.min(1.0f, 360.0f / Math.min(i9, i10));
        int round = Math.round(i9 * min);
        int round2 = Math.round(i10 * min);
        super.onOutputSizeChanged(round, round2);
        if (this.f31083a) {
            setFloatOnDraw(this.f31084b, 0.0f);
            setFloatOnDraw(this.f31085c, 1.5f / round2);
            return;
        }
        setFloatOnDraw(this.f31084b, 1.5f / round);
        setFloatOnDraw(this.f31085c, 0.0f);
    }
}
