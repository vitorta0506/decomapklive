package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class e7 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zzq f9394a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ y7 f9395b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e7(y7 y7Var, zzq zzqVar) {
        this.f9395b = y7Var;
        this.f9394a = zzqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        p4.e eVar;
        y7 y7Var = this.f9395b;
        eVar = y7Var.f10015d;
        if (eVar == null) {
            y7Var.f9432a.b().r().a("Discarding data. Failed to send app launch");
            return;
        }
        try {
            com.google.android.gms.common.internal.p.j(this.f9394a);
            eVar.y(this.f9394a);
            this.f9395b.f9432a.C().t();
            this.f9395b.r(eVar, null, this.f9394a);
            this.f9395b.E();
        } catch (RemoteException e10) {
            this.f9395b.f9432a.b().r().b("Failed to send app launch to the service", e10);
        }
    }
}
