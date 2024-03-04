package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class y5 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AtomicReference f10002a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ m6 f10003b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y5(m6 m6Var, AtomicReference atomicReference) {
        this.f10003b = m6Var;
        this.f10002a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f10002a) {
            this.f10002a.set(Boolean.valueOf(this.f10003b.f9432a.z().B(this.f10003b.f9432a.B().s(), z2.L)));
            this.f10002a.notify();
        }
    }
}
