package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class a7 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zzq f9267a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ boolean f9268b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ zzlc f9269c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ y7 f9270d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a7(y7 y7Var, zzq zzqVar, boolean z10, zzlc zzlcVar) {
        this.f9270d = y7Var;
        this.f9267a = zzqVar;
        this.f9268b = z10;
        this.f9269c = zzlcVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        p4.e eVar;
        y7 y7Var = this.f9270d;
        eVar = y7Var.f10015d;
        if (eVar == null) {
            y7Var.f9432a.b().r().a("Discarding data. Failed to set user property");
            return;
        }
        com.google.android.gms.common.internal.p.j(this.f9267a);
        this.f9270d.r(eVar, this.f9268b ? null : this.f9269c, this.f9267a);
        this.f9270d.E();
    }
}
