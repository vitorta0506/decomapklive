package com.tencent.liteav.base.util;

import com.tencent.liteav.base.util.j;
/* loaded from: classes4.dex */
final /* synthetic */ class n implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final j.a f31020a;

    /* renamed from: b  reason: collision with root package name */
    private final Runnable f31021b;

    private n(j.a aVar, Runnable runnable) {
        this.f31020a = aVar;
        this.f31021b = runnable;
    }

    public static Runnable a(j.a aVar, Runnable runnable) {
        return new n(aVar, runnable);
    }

    @Override // java.lang.Runnable
    public final void run() {
        j.a aVar = this.f31020a;
        Runnable runnable = this.f31021b;
        runnable.run();
        synchronized (j.this) {
            j.this.f31010c.remove(runnable);
        }
    }
}
