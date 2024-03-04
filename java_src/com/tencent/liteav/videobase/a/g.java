package com.tencent.liteav.videobase.a;

import java.util.concurrent.CountDownLatch;
/* loaded from: classes4.dex */
final /* synthetic */ class g implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final Runnable f31678a;

    /* renamed from: b  reason: collision with root package name */
    private final CountDownLatch f31679b;

    private g(Runnable runnable, CountDownLatch countDownLatch) {
        this.f31678a = runnable;
        this.f31679b = countDownLatch;
    }

    public static Runnable a(Runnable runnable, CountDownLatch countDownLatch) {
        return new g(runnable, countDownLatch);
    }

    @Override // java.lang.Runnable
    public final void run() {
        b.lambda$runOnDrawAndWaitDone$4(this.f31678a, this.f31679b);
    }
}
