package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class b6 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AtomicReference f9306a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ m6 f9307b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b6(m6 m6Var, AtomicReference atomicReference) {
        this.f9307b = m6Var;
        this.f9306a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f9306a) {
            this.f9306a.set(this.f9307b.f9432a.z().x(this.f9307b.f9432a.B().s(), z2.M));
            this.f9306a.notify();
        }
    }
}
