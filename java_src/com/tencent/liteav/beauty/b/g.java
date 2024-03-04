package com.tencent.liteav.beauty.b;

import android.opengl.GLES20;
import com.tencent.liteav.beauty.b.f;
/* loaded from: classes4.dex */
final /* synthetic */ class g implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f.a f31145a;

    private g(f.a aVar) {
        this.f31145a = aVar;
    }

    public static Runnable a(f.a aVar) {
        return new g(aVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.a aVar = this.f31145a;
        GLES20.glUseProgram(aVar.getProgramId());
        GLES20.glUniform1f(aVar.f31141a, aVar.f31143c / aVar.mOutputSize.f31029a);
        GLES20.glUniform1f(aVar.f31142b, aVar.f31144d / aVar.mOutputSize.f31030b);
    }
}
