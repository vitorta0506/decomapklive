package com.google.android.gms.internal.measurement;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class e2 implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    private final ThreadFactory f8045a = Executors.defaultThreadFactory();

    /* JADX INFO: Access modifiers changed from: package-private */
    public e2(w2 w2Var) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f8045a.newThread(runnable);
        newThread.setName("ScionFrontendApi");
        return newThread;
    }
}
