package com.tencent.liteav.videobase.d;

import android.opengl.GLES20;
/* loaded from: classes4.dex */
public class j extends com.tencent.liteav.videobase.a.b {

    /* renamed from: a  reason: collision with root package name */
    int f31819a;

    /* renamed from: b  reason: collision with root package name */
    int f31820b;

    public j(String str, String str2) {
        super(str, str2);
    }

    @Override // com.tencent.liteav.videobase.a.b
    public void onInit(com.tencent.liteav.videobase.frame.e eVar) {
        super.onInit(eVar);
        this.f31819a = GLES20.glGetUniformLocation(getProgramId(), "width");
        this.f31820b = GLES20.glGetUniformLocation(getProgramId(), "height");
    }

    @Override // com.tencent.liteav.videobase.a.b
    public void onOutputSizeChanged(int i9, int i10) {
        super.onOutputSizeChanged(i9, i10);
        runOnDraw(k.a(this));
    }
}
