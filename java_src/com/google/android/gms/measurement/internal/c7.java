package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class c7 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AtomicReference f9328a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ zzq f9329b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ y7 f9330c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c7(y7 y7Var, AtomicReference atomicReference, zzq zzqVar) {
        this.f9330c = y7Var;
        this.f9328a = atomicReference;
        this.f9329b = zzqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        p4.e eVar;
        synchronized (this.f9328a) {
            try {
            } catch (RemoteException e10) {
                this.f9330c.f9432a.b().r().b("Failed to get app instance id", e10);
                atomicReference = this.f9328a;
            }
            if (!this.f9330c.f9432a.F().q().i(zzah.ANALYTICS_STORAGE)) {
                this.f9330c.f9432a.b().x().a("Analytics storage consent denied; will not get app instance id");
                this.f9330c.f9432a.I().C(null);
                this.f9330c.f9432a.F().f9957g.b(null);
                this.f9328a.set(null);
                this.f9328a.notify();
                return;
            }
            y7 y7Var = this.f9330c;
            eVar = y7Var.f10015d;
            if (eVar == null) {
                y7Var.f9432a.b().r().a("Failed to get app instance id");
                this.f9328a.notify();
                return;
            }
            com.google.android.gms.common.internal.p.j(this.f9329b);
            this.f9328a.set(eVar.i0(this.f9329b));
            String str = (String) this.f9328a.get();
            if (str != null) {
                this.f9330c.f9432a.I().C(str);
                this.f9330c.f9432a.F().f9957g.b(str);
            }
            this.f9330c.E();
            atomicReference = this.f9328a;
            atomicReference.notify();
        }
    }
}
