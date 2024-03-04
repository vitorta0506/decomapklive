package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class u5 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ long f9896a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ m6 f9897b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u5(m6 m6Var, long j10) {
        this.f9897b = m6Var;
        this.f9896a = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9897b.z(this.f9896a, true);
        this.f9897b.f9432a.L().S(new AtomicReference());
    }
}
