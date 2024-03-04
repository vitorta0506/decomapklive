package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class x5 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AtomicReference f9976a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f9977b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f9978c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ m6 f9979d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x5(m6 m6Var, AtomicReference atomicReference, String str, String str2, String str3) {
        this.f9979d = m6Var;
        this.f9976a = atomicReference;
        this.f9977b = str2;
        this.f9978c = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9979d.f9432a.L().U(this.f9976a, null, this.f9977b, this.f9978c);
    }
}
