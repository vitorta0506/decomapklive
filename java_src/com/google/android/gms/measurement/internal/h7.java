package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class h7 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zzq f9472a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Bundle f9473b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ y7 f9474c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h7(y7 y7Var, zzq zzqVar, Bundle bundle) {
        this.f9474c = y7Var;
        this.f9472a = zzqVar;
        this.f9473b = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        p4.e eVar;
        y7 y7Var = this.f9474c;
        eVar = y7Var.f10015d;
        if (eVar == null) {
            y7Var.f9432a.b().r().a("Failed to send default event parameters to service");
            return;
        }
        try {
            com.google.android.gms.common.internal.p.j(this.f9472a);
            eVar.c0(this.f9473b, this.f9472a);
        } catch (RemoteException e10) {
            this.f9474c.f9432a.b().r().b("Failed to send default event parameters to service", e10);
        }
    }
}
