package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class o7 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zzq f9728a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ boolean f9729b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ zzac f9730c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ zzac f9731d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ y7 f9732e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o7(y7 y7Var, boolean z10, zzq zzqVar, boolean z11, zzac zzacVar, zzac zzacVar2) {
        this.f9732e = y7Var;
        this.f9728a = zzqVar;
        this.f9729b = z11;
        this.f9730c = zzacVar;
        this.f9731d = zzacVar2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        p4.e eVar;
        y7 y7Var = this.f9732e;
        eVar = y7Var.f10015d;
        if (eVar == null) {
            y7Var.f9432a.b().r().a("Discarding data. Failed to send conditional user property to service");
            return;
        }
        com.google.android.gms.common.internal.p.j(this.f9728a);
        this.f9732e.r(eVar, this.f9729b ? null : this.f9730c, this.f9728a);
        this.f9732e.E();
    }
}
