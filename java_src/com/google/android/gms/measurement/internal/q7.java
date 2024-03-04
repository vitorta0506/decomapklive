package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class q7 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f9782a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f9783b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ zzq f9784c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.internal.measurement.h1 f9785d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ y7 f9786e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q7(y7 y7Var, String str, String str2, zzq zzqVar, com.google.android.gms.internal.measurement.h1 h1Var) {
        this.f9786e = y7Var;
        this.f9782a = str;
        this.f9783b = str2;
        this.f9784c = zzqVar;
        this.f9785d = h1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        n4 n4Var;
        p4.e eVar;
        ArrayList arrayList = new ArrayList();
        try {
            try {
                y7 y7Var = this.f9786e;
                eVar = y7Var.f10015d;
                if (eVar == null) {
                    y7Var.f9432a.b().r().c("Failed to get conditional properties; not connected to service", this.f9782a, this.f9783b);
                    n4Var = this.f9786e.f9432a;
                } else {
                    com.google.android.gms.common.internal.p.j(this.f9784c);
                    arrayList = k9.v(eVar.s0(this.f9782a, this.f9783b, this.f9784c));
                    this.f9786e.E();
                    n4Var = this.f9786e.f9432a;
                }
            } catch (RemoteException e10) {
                this.f9786e.f9432a.b().r().d("Failed to get conditional properties; remote exception", this.f9782a, this.f9783b, e10);
                n4Var = this.f9786e.f9432a;
            }
            n4Var.N().E(this.f9785d, arrayList);
        } catch (Throwable th2) {
            this.f9786e.f9432a.N().E(this.f9785d, arrayList);
            throw th2;
        }
    }
}
