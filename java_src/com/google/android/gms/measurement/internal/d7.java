package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class d7 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zzq f9347a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.internal.measurement.h1 f9348b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ y7 f9349c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d7(y7 y7Var, zzq zzqVar, com.google.android.gms.internal.measurement.h1 h1Var) {
        this.f9349c = y7Var;
        this.f9347a = zzqVar;
        this.f9348b = h1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        n4 n4Var;
        p4.e eVar;
        String str = null;
        try {
            try {
                if (this.f9349c.f9432a.F().q().i(zzah.ANALYTICS_STORAGE)) {
                    y7 y7Var = this.f9349c;
                    eVar = y7Var.f10015d;
                    if (eVar == null) {
                        y7Var.f9432a.b().r().a("Failed to get app instance id");
                        n4Var = this.f9349c.f9432a;
                    } else {
                        com.google.android.gms.common.internal.p.j(this.f9347a);
                        str = eVar.i0(this.f9347a);
                        if (str != null) {
                            this.f9349c.f9432a.I().C(str);
                            this.f9349c.f9432a.F().f9957g.b(str);
                        }
                        this.f9349c.E();
                        n4Var = this.f9349c.f9432a;
                    }
                } else {
                    this.f9349c.f9432a.b().x().a("Analytics storage consent denied; will not get app instance id");
                    this.f9349c.f9432a.I().C(null);
                    this.f9349c.f9432a.F().f9957g.b(null);
                    n4Var = this.f9349c.f9432a;
                }
            } catch (RemoteException e10) {
                this.f9349c.f9432a.b().r().b("Failed to get app instance id", e10);
                n4Var = this.f9349c.f9432a;
            }
            n4Var.N().J(this.f9348b, str);
        } catch (Throwable th2) {
            this.f9349c.f9432a.N().J(this.f9348b, null);
            throw th2;
        }
    }
}
