package com.google.android.gms.measurement.internal;
/* loaded from: classes2.dex */
final class d5 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zzq f9343a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ f5 f9344b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d5(f5 f5Var, zzq zzqVar) {
        this.f9344b = f5Var;
        this.f9343a = zzqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        d9 d9Var;
        d9 d9Var2;
        d9Var = this.f9344b.f9403a;
        d9Var.e();
        d9Var2 = this.f9344b.f9403a;
        d9Var2.q(this.f9343a);
    }
}
