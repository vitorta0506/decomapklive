package com.tencent.liteav.beauty.b;

import android.opengl.GLES20;
import com.tencent.liteav.base.util.LiteavLog;
/* loaded from: classes4.dex */
public final class m extends com.tencent.liteav.videobase.a.b {

    /* renamed from: a  reason: collision with root package name */
    private int f31199a;

    /* renamed from: b  reason: collision with root package name */
    private float f31200b;

    /* renamed from: c  reason: collision with root package name */
    private int f31201c;

    /* renamed from: d  reason: collision with root package name */
    private int f31202d;

    public m() {
        this((byte) 0);
    }

    public final void a(float f10) {
        this.f31200b = f10;
        setFloatOnDraw(this.f31199a, f10);
        LiteavLog.d("GPUSharpen", "set Sharpness ".concat(String.valueOf(f10)));
    }

    @Override // com.tencent.liteav.videobase.a.b
    public final boolean canBeSkipped() {
        return isLessOrEqualZero(this.f31200b);
    }

    @Override // com.tencent.liteav.videobase.a.b
    public final void onInit(com.tencent.liteav.videobase.frame.e eVar) {
        super.onInit(eVar);
        this.f31199a = GLES20.glGetUniformLocation(getProgramId(), "sharpness");
        this.f31201c = GLES20.glGetUniformLocation(getProgramId(), "imageWidthFactor");
        this.f31202d = GLES20.glGetUniformLocation(getProgramId(), "imageHeightFactor");
        a(this.f31200b);
    }

    @Override // com.tencent.liteav.videobase.a.b
    public final void onOutputSizeChanged(int i9, int i10) {
        super.onOutputSizeChanged(i9, i10);
        setFloatOnDraw(this.f31201c, 1.0f / i9);
        setFloatOnDraw(this.f31202d, 1.0f / i10);
    }

    private m(byte b10) {
        super("attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n\nuniform float imageWidthFactor; \nuniform float imageHeightFactor; \nuniform float sharpness;\n\nvarying vec2 textureCoordinate;\nvarying vec2 leftTextureCoordinate;\nvarying vec2 rightTextureCoordinate; \nvarying vec2 topTextureCoordinate;\nvarying vec2 bottomTextureCoordinate;\n\nvarying float centerMultiplier;\nvarying float edgeMultiplier;\n\nvoid main()\n{\n    gl_Position = position;\n\n    mediump vec2 widthStep = vec2(imageWidthFactor, 0.0);\n    mediump vec2 heightStep = vec2(0.0, imageHeightFactor);\n\n    textureCoordinate = inputTextureCoordinate.xy;\n    leftTextureCoordinate = inputTextureCoordinate.xy - widthStep;\n    rightTextureCoordinate = inputTextureCoordinate.xy + widthStep;\n    topTextureCoordinate = inputTextureCoordinate.xy + heightStep;\n    bottomTextureCoordinate = inputTextureCoordinate.xy - heightStep;\n\n    centerMultiplier = 1.0 + 4.0 * sharpness;\n    edgeMultiplier = sharpness;\n}", "precision highp float;\n\nvarying highp vec2 textureCoordinate;\nvarying highp vec2 leftTextureCoordinate;\nvarying highp vec2 rightTextureCoordinate; \nvarying highp vec2 topTextureCoordinate;\nvarying highp vec2 bottomTextureCoordinate;\n\nvarying highp float centerMultiplier;\nvarying highp float edgeMultiplier;\n\nuniform sampler2D inputImageTexture;\n\nvoid main()\n{\n    mediump vec3 textureColor = texture2D(inputImageTexture, textureCoordinate).rgb;\n    mediump vec3 leftTextureColor = texture2D(inputImageTexture, leftTextureCoordinate).rgb;\n    mediump vec3 rightTextureColor = texture2D(inputImageTexture, rightTextureCoordinate).rgb;\n    mediump vec3 topTextureColor = texture2D(inputImageTexture, topTextureCoordinate).rgb;\n    mediump vec3 bottomTextureColor = texture2D(inputImageTexture, bottomTextureCoordinate).rgb;\n\n    gl_FragColor = vec4((textureColor * centerMultiplier - (leftTextureColor * edgeMultiplier + rightTextureColor * edgeMultiplier + topTextureColor * edgeMultiplier + bottomTextureColor * edgeMultiplier)), 1.0);\n}");
        this.f31200b = 0.0f;
    }
}
