package com.google.android.gms.measurement.internal;
/* loaded from: classes2.dex */
final class q4 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zzac f9779a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ f5 f9780b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q4(f5 f5Var, zzac zzacVar) {
        this.f9780b = f5Var;
        this.f9779a = zzacVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        d9 d9Var;
        d9 d9Var2;
        d9 d9Var3;
        d9Var = this.f9780b.f9403a;
        d9Var.e();
        if (this.f9779a.zzc.I() == null) {
            d9Var3 = this.f9780b.f9403a;
            d9Var3.s(this.f9779a);
            return;
        }
        d9Var2 = this.f9780b.f9403a;
        d9Var2.y(this.f9779a);
    }
}
