package com.tencent.liteav.videobase.d;

import android.opengl.GLES20;
import androidx.constraintlayout.core.motion.utils.TypedValues;
/* loaded from: classes4.dex */
public final class a extends i {

    /* renamed from: a  reason: collision with root package name */
    private static final float[] f31810a = {-0.0627451f, -0.5019608f, -0.5019608f};

    /* renamed from: b  reason: collision with root package name */
    private static final float[] f31811b = {1.1644f, 1.1644f, 1.1644f, 0.0f, -0.3918f, 2.0172f, 1.596f, -0.813f, 0.0f};

    /* renamed from: c  reason: collision with root package name */
    private int f31812c;

    /* renamed from: d  reason: collision with root package name */
    private int f31813d;

    public a() {
        super(com.tencent.liteav.videobase.a.b.NO_FILTER_VERTEX_SHADER, "precision highp float;\nvarying vec2 textureCoordinate;\nuniform sampler2D inputImageTexture;\nuniform sampler2D uvTexture;\nuniform mat3 convertMatrix;\nuniform vec3 offset;\n\nvoid main()\n{\n    highp vec3 yuvColor;\n    highp vec3 rgbColor;\n\n    // Get the YUV values\n    yuvColor.x = texture2D(inputImageTexture, textureCoordinate).r;\n    yuvColor.y = texture2D(uvTexture, vec2(textureCoordinate.x, textureCoordinate.y * 0.5)).r;\n    yuvColor.z = texture2D(uvTexture, vec2(textureCoordinate.x, textureCoordinate.y * 0.5 + 0.5)).r;\n\n    // Do the color transform\n    yuvColor += offset;\n    rgbColor = convertMatrix * yuvColor;\n\n    gl_FragColor = vec4(rgbColor, 1.0);\n}");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(a aVar) {
        GLES20.glUseProgram(aVar.getProgramId());
        GLES20.glUniform3fv(aVar.f31813d, 1, f31810a, 0);
        GLES20.glUniformMatrix3fv(aVar.f31812c, 1, false, f31811b, 0);
    }

    @Override // com.tencent.liteav.videobase.d.i
    protected final int a() {
        return 6409;
    }

    @Override // com.tencent.liteav.videobase.d.i, com.tencent.liteav.videobase.a.b
    public final void onInit(com.tencent.liteav.videobase.frame.e eVar) {
        super.onInit(eVar);
        this.f31812c = GLES20.glGetUniformLocation(getProgramId(), "convertMatrix");
        this.f31813d = GLES20.glGetUniformLocation(getProgramId(), TypedValues.CycleType.S_WAVE_OFFSET);
        runOnDraw(b.a(this));
    }
}
