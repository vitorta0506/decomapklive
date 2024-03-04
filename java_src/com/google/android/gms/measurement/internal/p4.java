package com.google.android.gms.measurement.internal;
/* loaded from: classes2.dex */
final class p4 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zzac f9750a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ zzq f9751b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ f5 f9752c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p4(f5 f5Var, zzac zzacVar, zzq zzqVar) {
        this.f9752c = f5Var;
        this.f9750a = zzacVar;
        this.f9751b = zzqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        d9 d9Var;
        d9 d9Var2;
        d9 d9Var3;
        d9Var = this.f9752c.f9403a;
        d9Var.e();
        if (this.f9750a.zzc.I() == null) {
            d9Var3 = this.f9752c.f9403a;
            d9Var3.t(this.f9750a, this.f9751b);
            return;
        }
        d9Var2 = this.f9752c.f9403a;
        d9Var2.z(this.f9750a, this.f9751b);
    }
}
