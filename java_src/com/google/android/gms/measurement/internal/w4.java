package com.google.android.gms.measurement.internal;
/* loaded from: classes2.dex */
final class w4 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zzq f9937a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ f5 f9938b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w4(f5 f5Var, zzq zzqVar) {
        this.f9938b = f5Var;
        this.f9937a = zzqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        d9 d9Var;
        d9 d9Var2;
        d9Var = this.f9938b.f9403a;
        d9Var.e();
        d9Var2 = this.f9938b.f9403a;
        zzq zzqVar = this.f9937a;
        d9Var2.a().h();
        d9Var2.g();
        com.google.android.gms.common.internal.p.f(zzqVar.zza);
        d9Var2.S(zzqVar);
    }
}
