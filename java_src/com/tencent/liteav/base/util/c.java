package com.tencent.liteav.base.util;

import java.util.concurrent.CountDownLatch;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final Runnable f31000a;

    /* renamed from: b  reason: collision with root package name */
    private final CountDownLatch f31001b;

    private c(Runnable runnable, CountDownLatch countDownLatch) {
        this.f31000a = runnable;
        this.f31001b = countDownLatch;
    }

    public static Runnable a(Runnable runnable, CountDownLatch countDownLatch) {
        return new c(runnable, countDownLatch);
    }

    @Override // java.lang.Runnable
    public final void run() {
        CustomHandler.a(this.f31000a, this.f31001b);
    }
}
