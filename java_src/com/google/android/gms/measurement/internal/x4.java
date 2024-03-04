package com.google.android.gms.measurement.internal;
/* loaded from: classes2.dex */
final class x4 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zzq f9974a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ f5 f9975b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x4(f5 f5Var, zzq zzqVar) {
        this.f9975b = f5Var;
        this.f9974a = zzqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        d9 d9Var;
        d9 d9Var2;
        d9Var = this.f9975b.f9403a;
        d9Var.e();
        d9Var2 = this.f9975b.f9403a;
        zzq zzqVar = this.f9974a;
        d9Var2.a().h();
        d9Var2.g();
        com.google.android.gms.common.internal.p.f(zzqVar.zza);
        p4.a b10 = p4.a.b(zzqVar.zzv);
        p4.a V = d9Var2.V(zzqVar.zza);
        d9Var2.b().v().c("Setting consent, package, consent", zzqVar.zza, b10);
        d9Var2.A(zzqVar.zza, b10);
        if (b10.k(V)) {
            d9Var2.v(zzqVar);
        }
    }
}
