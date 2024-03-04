package com.google.android.gms.measurement.internal;
/* loaded from: classes2.dex */
final class p3 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ boolean f9748a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ q3 f9749b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p3(q3 q3Var, boolean z10) {
        this.f9749b = q3Var;
        this.f9748a = z10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        d9 d9Var;
        d9Var = this.f9749b.f9776a;
        d9Var.o(this.f9748a);
    }
}
