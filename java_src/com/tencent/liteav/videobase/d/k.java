package com.tencent.liteav.videobase.d;

import android.opengl.GLES20;
/* loaded from: classes4.dex */
final /* synthetic */ class k implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final j f31821a;

    private k(j jVar) {
        this.f31821a = jVar;
    }

    public static Runnable a(j jVar) {
        return new k(jVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        j jVar = this.f31821a;
        GLES20.glUseProgram(jVar.getProgramId());
        GLES20.glUniform1f(jVar.f31819a, jVar.mOutputSize.f31029a);
        GLES20.glUniform1f(jVar.f31820b, jVar.mOutputSize.f31030b);
    }
}
