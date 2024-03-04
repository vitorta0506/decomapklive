package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class z5 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AtomicReference f10083a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f10084b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f10085c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ boolean f10086d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ m6 f10087e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z5(m6 m6Var, AtomicReference atomicReference, String str, String str2, String str3, boolean z10) {
        this.f10087e = m6Var;
        this.f10083a = atomicReference;
        this.f10084b = str2;
        this.f10085c = str3;
        this.f10086d = z10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10087e.f9432a.L().W(this.f10083a, null, this.f10084b, this.f10085c, this.f10086d);
    }
}
