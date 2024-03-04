package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class m7 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zzq f9649a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ y7 f9650b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m7(y7 y7Var, zzq zzqVar) {
        this.f9650b = y7Var;
        this.f9649a = zzqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        p4.e eVar;
        y7 y7Var = this.f9650b;
        eVar = y7Var.f10015d;
        if (eVar == null) {
            y7Var.f9432a.b().r().a("Failed to send consent settings to service");
            return;
        }
        try {
            com.google.android.gms.common.internal.p.j(this.f9649a);
            eVar.K(this.f9649a);
            this.f9650b.E();
        } catch (RemoteException e10) {
            this.f9650b.f9432a.b().r().b("Failed to send consent settings to the service", e10);
        }
    }
}
