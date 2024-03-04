package com.tencent.liteav.beauty.b.c;

import android.opengl.GLES20;
import com.tencent.liteav.beauty.NativeLoad;
import com.tencent.liteav.videobase.frame.e;
/* loaded from: classes4.dex */
public final class b extends com.tencent.liteav.videobase.a.b {

    /* renamed from: a  reason: collision with root package name */
    private int f31118a;

    /* renamed from: b  reason: collision with root package name */
    private int f31119b;

    /* renamed from: c  reason: collision with root package name */
    private final float[] f31120c;

    public b() {
        super(null, null);
        this.f31118a = -1;
        this.f31119b = -1;
        this.f31120c = new float[4];
    }

    public final void a(float f10) {
        float[] fArr = this.f31120c;
        fArr[0] = f10;
        a(fArr);
    }

    public final void b(float f10) {
        float[] fArr = this.f31120c;
        fArr[1] = f10;
        a(fArr);
    }

    @Override // com.tencent.liteav.videobase.a.b
    public final int buildProgram() {
        return NativeLoad.nativeLoadGLProgram(14);
    }

    public final void c(float f10) {
        float[] fArr = this.f31120c;
        fArr[2] = f10;
        a(fArr);
    }

    @Override // com.tencent.liteav.videobase.a.b
    public final boolean canBeSkipped() {
        return isLessOrEqualZero(this.f31120c[0]) && isLessOrEqualZero(this.f31120c[1]) && isLessOrEqualZero(this.f31120c[2]);
    }

    @Override // com.tencent.liteav.videobase.a.b
    public final void onInit(e eVar) {
        super.onInit(eVar);
        this.f31118a = GLES20.glGetUniformLocation(getProgramId(), "singleStepOffset");
        this.f31119b = GLES20.glGetUniformLocation(getProgramId(), "beautyParams");
        a(5.0f);
    }

    @Override // com.tencent.liteav.videobase.a.b
    public final void onOutputSizeChanged(int i9, int i10) {
        super.onOutputSizeChanged(i9, i10);
        setFloatVec2OnDraw(this.f31118a, new float[]{2.0f / i9, 2.0f / i10});
    }

    private void a(float[] fArr) {
        setFloatVec4OnDraw(this.f31119b, fArr);
    }
}
