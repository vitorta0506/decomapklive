package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class c6 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AtomicReference f9326a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ m6 f9327b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c6(m6 m6Var, AtomicReference atomicReference) {
        this.f9327b = m6Var;
        this.f9326a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f9326a) {
            this.f9326a.set(Long.valueOf(this.f9327b.f9432a.z().r(this.f9327b.f9432a.B().s(), z2.N)));
            this.f9326a.notify();
        }
    }
}
