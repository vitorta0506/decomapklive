package com.google.android.gms.measurement.internal;
/* loaded from: classes2.dex */
final class z4 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zzaw f10080a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f10081b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ f5 f10082c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z4(f5 f5Var, zzaw zzawVar, String str) {
        this.f10082c = f5Var;
        this.f10080a = zzawVar;
        this.f10081b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        d9 d9Var;
        d9 d9Var2;
        d9Var = this.f10082c.f9403a;
        d9Var.e();
        d9Var2 = this.f10082c.f9403a;
        d9Var2.k(this.f10080a, this.f10081b);
    }
}
