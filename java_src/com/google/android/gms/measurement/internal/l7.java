package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class l7 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zzq f9612a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ y7 f9613b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l7(y7 y7Var, zzq zzqVar) {
        this.f9613b = y7Var;
        this.f9612a = zzqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        p4.e eVar;
        y7 y7Var = this.f9613b;
        eVar = y7Var.f10015d;
        if (eVar == null) {
            y7Var.f9432a.b().r().a("Failed to send measurementEnabled to service");
            return;
        }
        try {
            com.google.android.gms.common.internal.p.j(this.f9612a);
            eVar.a0(this.f9612a);
            this.f9613b.E();
        } catch (RemoteException e10) {
            this.f9613b.f9432a.b().r().b("Failed to send measurementEnabled to the service", e10);
        }
    }
}
