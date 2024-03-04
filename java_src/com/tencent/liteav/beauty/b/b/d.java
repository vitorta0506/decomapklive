package com.tencent.liteav.beauty.b.b;

import android.opengl.GLES20;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.beauty.NativeLoad;
/* loaded from: classes4.dex */
public final class d extends com.tencent.liteav.videobase.a.b {

    /* renamed from: a  reason: collision with root package name */
    private int f31104a;

    /* renamed from: b  reason: collision with root package name */
    private int f31105b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d() {
        super(null, null);
        this.f31104a = -1;
        this.f31105b = -1;
    }

    @Override // com.tencent.liteav.videobase.a.b
    public final int buildProgram() {
        return NativeLoad.nativeLoadGLProgram(13);
    }

    @Override // com.tencent.liteav.videobase.a.b
    public final void onInit(com.tencent.liteav.videobase.frame.e eVar) {
        super.onInit(eVar);
        this.f31104a = GLES20.glGetUniformLocation(getProgramId(), "texelWidthOffset");
        this.f31105b = GLES20.glGetUniformLocation(getProgramId(), "texelHeightOffset");
    }

    @Override // com.tencent.liteav.videobase.a.b
    public final void onOutputSizeChanged(int i9, int i10) {
        super.onOutputSizeChanged(i9, i10);
        float f10 = 2.0f;
        if (i9 <= i10 ? i9 >= 540 : i10 >= 540) {
            f10 = 4.0f;
        }
        LiteavLog.i("SmoothHorizontal", "m_textureRation ".concat(String.valueOf(f10)));
        setFloatOnDraw(this.f31104a, f10 / i9);
        setFloatOnDraw(this.f31105b, f10 / i10);
    }
}
