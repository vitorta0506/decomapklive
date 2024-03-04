package com.tencent.liteav.beauty.b.b;

import android.opengl.GLES20;
import com.tencent.liteav.beauty.NativeLoad;
/* loaded from: classes4.dex */
public final class b extends com.tencent.liteav.videobase.c.d {

    /* renamed from: a  reason: collision with root package name */
    int f31094a;

    /* renamed from: b  reason: collision with root package name */
    int f31095b;

    /* renamed from: c  reason: collision with root package name */
    float f31096c;

    /* renamed from: d  reason: collision with root package name */
    float f31097d;

    /* renamed from: e  reason: collision with root package name */
    private int f31098e;

    /* renamed from: f  reason: collision with root package name */
    private float f31099f;

    public b() {
        super(null);
        this.f31098e = -1;
        this.f31094a = -1;
        this.f31095b = -1;
        this.f31096c = 0.0f;
        this.f31097d = 0.0f;
        this.f31099f = 0.0f;
    }

    @Override // com.tencent.liteav.videobase.a.b
    public final int buildProgram() {
        return NativeLoad.nativeLoadGLProgram(12);
    }

    @Override // com.tencent.liteav.videobase.a.b
    public final boolean canBeSkipped() {
        return isLessOrEqualZero(this.f31096c) && isLessOrEqualZero(this.f31097d) && isLessOrEqualZero(this.f31099f);
    }

    @Override // com.tencent.liteav.videobase.c.d, com.tencent.liteav.videobase.a.b
    public final void onInit(com.tencent.liteav.videobase.frame.e eVar) {
        super.onInit(eVar);
        this.f31094a = GLES20.glGetUniformLocation(getProgramId(), "whiteDegree");
        this.f31098e = GLES20.glGetUniformLocation(getProgramId(), "contrast");
        this.f31095b = GLES20.glGetUniformLocation(getProgramId(), "ruddyDegree");
    }
}
