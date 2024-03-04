package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class d6 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AtomicReference f9345a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ m6 f9346b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d6(m6 m6Var, AtomicReference atomicReference) {
        this.f9346b = m6Var;
        this.f9345a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f9345a) {
            this.f9345a.set(Integer.valueOf(this.f9346b.f9432a.z().o(this.f9346b.f9432a.B().s(), z2.O)));
            this.f9345a.notify();
        }
    }
}
