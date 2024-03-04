package com.tencent.liteav.base.util;

import java.util.concurrent.CountDownLatch;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final Runnable f30998a;

    /* renamed from: b  reason: collision with root package name */
    private final CountDownLatch f30999b;

    private b(Runnable runnable, CountDownLatch countDownLatch) {
        this.f30998a = runnable;
        this.f30999b = countDownLatch;
    }

    public static Runnable a(Runnable runnable, CountDownLatch countDownLatch) {
        return new b(runnable, countDownLatch);
    }

    @Override // java.lang.Runnable
    public final void run() {
        CustomHandler.b(this.f30998a, this.f30999b);
    }
}
