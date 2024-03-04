package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class t6 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ r6 f9877a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ r6 f9878b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ long f9879c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ boolean f9880d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ y6 f9881e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t6(y6 y6Var, r6 r6Var, r6 r6Var2, long j10, boolean z10) {
        this.f9881e = y6Var;
        this.f9877a = r6Var;
        this.f9878b = r6Var2;
        this.f9879c = j10;
        this.f9880d = z10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9881e.o(this.f9877a, this.f9878b, this.f9879c, this.f9880d, null);
    }
}
