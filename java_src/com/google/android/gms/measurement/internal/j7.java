package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class j7 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zzaw f9545a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f9546b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.internal.measurement.h1 f9547c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ y7 f9548d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j7(y7 y7Var, zzaw zzawVar, String str, com.google.android.gms.internal.measurement.h1 h1Var) {
        this.f9548d = y7Var;
        this.f9545a = zzawVar;
        this.f9546b = str;
        this.f9547c = h1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        n4 n4Var;
        p4.e eVar;
        byte[] bArr = null;
        try {
            try {
                y7 y7Var = this.f9548d;
                eVar = y7Var.f10015d;
                if (eVar == null) {
                    y7Var.f9432a.b().r().a("Discarding data. Failed to send event to service to bundle");
                    n4Var = this.f9548d.f9432a;
                } else {
                    bArr = eVar.g0(this.f9545a, this.f9546b);
                    this.f9548d.E();
                    n4Var = this.f9548d.f9432a;
                }
            } catch (RemoteException e10) {
                this.f9548d.f9432a.b().r().b("Failed to send event to the service to bundle", e10);
                n4Var = this.f9548d.f9432a;
            }
            n4Var.N().G(this.f9547c, bArr);
        } catch (Throwable th2) {
            this.f9548d.f9432a.N().G(this.f9547c, bArr);
            throw th2;
        }
    }
}
