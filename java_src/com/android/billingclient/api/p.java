package com.android.billingclient.api;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class p implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    private final ThreadFactory f3997a = Executors.defaultThreadFactory();

    /* renamed from: b  reason: collision with root package name */
    private final AtomicInteger f3998b = new AtomicInteger(1);

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(b bVar) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f3997a.newThread(runnable);
        int andIncrement = this.f3998b.getAndIncrement();
        StringBuilder sb2 = new StringBuilder(30);
        sb2.append("PlayBillingLibrary-");
        sb2.append(andIncrement);
        newThread.setName(sb2.toString());
        return newThread;
    }
}
