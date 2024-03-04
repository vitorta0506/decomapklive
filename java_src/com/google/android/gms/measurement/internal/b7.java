package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class b7 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zzq f9308a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ y7 f9309b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b7(y7 y7Var, zzq zzqVar) {
        this.f9309b = y7Var;
        this.f9308a = zzqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        p4.e eVar;
        y7 y7Var = this.f9309b;
        eVar = y7Var.f10015d;
        if (eVar == null) {
            y7Var.f9432a.b().r().a("Failed to reset data on the service: not connected to service");
            return;
        }
        try {
            com.google.android.gms.common.internal.p.j(this.f9308a);
            eVar.O(this.f9308a);
        } catch (RemoteException e10) {
            this.f9309b.f9432a.b().r().b("Failed to reset data on the service: remote exception", e10);
        }
        this.f9309b.E();
    }
}
