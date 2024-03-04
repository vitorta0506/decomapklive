package com.google.android.gms.measurement.internal;
/* loaded from: classes2.dex */
final class b5 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zzlc f9303a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ zzq f9304b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ f5 f9305c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b5(f5 f5Var, zzlc zzlcVar, zzq zzqVar) {
        this.f9305c = f5Var;
        this.f9303a = zzlcVar;
        this.f9304b = zzqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        d9 d9Var;
        d9 d9Var2;
        d9 d9Var3;
        d9Var = this.f9305c.f9403a;
        d9Var.e();
        if (this.f9303a.I() == null) {
            d9Var3 = this.f9305c.f9403a;
            d9Var3.u(this.f9303a, this.f9304b);
            return;
        }
        d9Var2 = this.f9305c.f9403a;
        d9Var2.B(this.f9303a, this.f9304b);
    }
}
