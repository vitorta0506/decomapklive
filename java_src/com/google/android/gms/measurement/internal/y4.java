package com.google.android.gms.measurement.internal;
/* loaded from: classes2.dex */
final class y4 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zzaw f9999a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ zzq f10000b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ f5 f10001c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y4(f5 f5Var, zzaw zzawVar, zzq zzqVar) {
        this.f10001c = f5Var;
        this.f9999a = zzawVar;
        this.f10000b = zzqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10001c.F0(this.f10001c.D0(this.f9999a, this.f10000b), this.f10000b);
    }
}
