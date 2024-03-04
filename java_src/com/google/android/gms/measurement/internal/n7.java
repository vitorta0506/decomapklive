package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class n7 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zzq f9703a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ boolean f9704b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ zzaw f9705c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ String f9706d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ y7 f9707e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n7(y7 y7Var, boolean z10, zzq zzqVar, boolean z11, zzaw zzawVar, String str) {
        this.f9707e = y7Var;
        this.f9703a = zzqVar;
        this.f9704b = z11;
        this.f9705c = zzawVar;
        this.f9706d = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        p4.e eVar;
        y7 y7Var = this.f9707e;
        eVar = y7Var.f10015d;
        if (eVar == null) {
            y7Var.f9432a.b().r().a("Discarding data. Failed to send event to service");
            return;
        }
        com.google.android.gms.common.internal.p.j(this.f9703a);
        this.f9707e.r(eVar, this.f9704b ? null : this.f9705c, this.f9703a);
        this.f9707e.E();
    }
}
