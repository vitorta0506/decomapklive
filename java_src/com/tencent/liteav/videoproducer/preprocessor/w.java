package com.tencent.liteav.videoproducer.preprocessor;

import com.tencent.liteav.base.util.LiteavLog;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class w implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final h f33122a;

    private w(h hVar) {
        this.f33122a = hVar;
    }

    public static Runnable a(h hVar) {
        return new w(hVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f33122a.a();
        LiteavLog.i("GPUPreprocessor", "destroy gpu preprocessor");
    }
}
