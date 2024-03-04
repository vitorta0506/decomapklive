package com.tencent.liteav.base.util;

import java.util.concurrent.CountDownLatch;
/* loaded from: classes4.dex */
final /* synthetic */ class l implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final Runnable f31016a;

    /* renamed from: b  reason: collision with root package name */
    private final CountDownLatch f31017b;

    private l(Runnable runnable, CountDownLatch countDownLatch) {
        this.f31016a = runnable;
        this.f31017b = countDownLatch;
    }

    public static Runnable a(Runnable runnable, CountDownLatch countDownLatch) {
        return new l(runnable, countDownLatch);
    }

    @Override // java.lang.Runnable
    public final void run() {
        Runnable runnable = this.f31016a;
        CountDownLatch countDownLatch = this.f31017b;
        runnable.run();
        countDownLatch.countDown();
    }
}
