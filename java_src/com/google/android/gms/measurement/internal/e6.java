package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class e6 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AtomicReference f9392a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ m6 f9393b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e6(m6 m6Var, AtomicReference atomicReference) {
        this.f9393b = m6Var;
        this.f9392a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f9392a) {
            this.f9392a.set(Double.valueOf(this.f9393b.f9432a.z().k(this.f9393b.f9432a.B().s(), z2.P)));
            this.f9392a.notify();
        }
    }
}
