package com.tencent.liteav.base.util;

import java.util.concurrent.CountDownLatch;
/* loaded from: classes4.dex */
public final /* synthetic */ class m implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final Runnable f31018a;

    /* renamed from: b  reason: collision with root package name */
    private final CountDownLatch f31019b;

    private m(Runnable runnable, CountDownLatch countDownLatch) {
        this.f31018a = runnable;
        this.f31019b = countDownLatch;
    }

    public static Runnable a(Runnable runnable, CountDownLatch countDownLatch) {
        return new m(runnable, countDownLatch);
    }

    @Override // java.lang.Runnable
    public final void run() {
        Runnable runnable = this.f31018a;
        CountDownLatch countDownLatch = this.f31019b;
        runnable.run();
        countDownLatch.countDown();
    }
}
