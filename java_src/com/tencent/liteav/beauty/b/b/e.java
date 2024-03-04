package com.tencent.liteav.beauty.b.b;

import android.opengl.GLES20;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.beauty.NativeLoad;
/* loaded from: classes4.dex */
public final class e extends com.tencent.liteav.videobase.c.d {

    /* renamed from: a  reason: collision with root package name */
    int f31106a;

    /* renamed from: b  reason: collision with root package name */
    float f31107b;

    /* renamed from: c  reason: collision with root package name */
    private int f31108c;

    /* renamed from: d  reason: collision with root package name */
    private int f31109d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e() {
        super(null, null);
        this.f31108c = -1;
        this.f31109d = -1;
        this.f31106a = -1;
        this.f31107b = 0.0f;
    }

    @Override // com.tencent.liteav.videobase.a.b
    public final int buildProgram() {
        if (LiteavSystemInfo.getBrand().equals("samsung") && LiteavSystemInfo.getModel().equals("GT-I9500") && LiteavSystemInfo.getSystemOSVersion().equals("4.3")) {
            LiteavLog.d("SmoothVertical", "SAMSUNG_S4 GT-I9500 + Android 4.3; use diffrent shader!");
            return NativeLoad.nativeLoadGLProgram(15);
        }
        return NativeLoad.nativeLoadGLProgram(5);
    }

    @Override // com.tencent.liteav.videobase.a.b
    public final boolean canBeSkipped() {
        return isLessOrEqualZero(this.f31107b);
    }

    @Override // com.tencent.liteav.videobase.c.d, com.tencent.liteav.videobase.a.b
    public final void onInit(com.tencent.liteav.videobase.frame.e eVar) {
        super.onInit(eVar);
        this.f31108c = GLES20.glGetUniformLocation(getProgramId(), "texelWidthOffset");
        this.f31109d = GLES20.glGetUniformLocation(getProgramId(), "texelHeightOffset");
        this.f31106a = GLES20.glGetUniformLocation(getProgramId(), "smoothDegree");
    }

    @Override // com.tencent.liteav.videobase.a.b
    public final void onOutputSizeChanged(int i9, int i10) {
        super.onOutputSizeChanged(i9, i10);
        float f10 = 2.0f;
        if (i9 <= i10 ? i9 >= 540 : i10 >= 540) {
            f10 = 4.0f;
        }
        LiteavLog.i("SmoothVertical", "mTextureRation ".concat(String.valueOf(f10)));
        setFloatOnDraw(this.f31108c, f10 / i9);
        setFloatOnDraw(this.f31109d, f10 / i10);
    }
}
