package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class g7 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ r6 f9440a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ y7 f9441b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g7(y7 y7Var, r6 r6Var) {
        this.f9441b = y7Var;
        this.f9440a = r6Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        p4.e eVar;
        y7 y7Var = this.f9441b;
        eVar = y7Var.f10015d;
        if (eVar == null) {
            y7Var.f9432a.b().r().a("Failed to send current screen to service");
            return;
        }
        try {
            r6 r6Var = this.f9440a;
            if (r6Var == null) {
                eVar.B(0L, null, null, y7Var.f9432a.f().getPackageName());
            } else {
                eVar.B(r6Var.f9807c, r6Var.f9805a, r6Var.f9806b, y7Var.f9432a.f().getPackageName());
            }
            this.f9441b.E();
        } catch (RemoteException e10) {
            this.f9441b.f9432a.b().r().b("Failed to send current screen to the service", e10);
        }
    }
}
