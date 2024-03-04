package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class z6 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f10088a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f10089b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ zzq f10090c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ boolean f10091d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.internal.measurement.h1 f10092e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ y7 f10093f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z6(y7 y7Var, String str, String str2, zzq zzqVar, boolean z10, com.google.android.gms.internal.measurement.h1 h1Var) {
        this.f10093f = y7Var;
        this.f10088a = str;
        this.f10089b = str2;
        this.f10090c = zzqVar;
        this.f10091d = z10;
        this.f10092e = h1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Bundle bundle;
        RemoteException e10;
        p4.e eVar;
        Bundle bundle2 = new Bundle();
        try {
            y7 y7Var = this.f10093f;
            eVar = y7Var.f10015d;
            if (eVar == null) {
                y7Var.f9432a.b().r().c("Failed to get user properties; not connected to service", this.f10088a, this.f10089b);
                this.f10093f.f9432a.N().F(this.f10092e, bundle2);
                return;
            }
            com.google.android.gms.common.internal.p.j(this.f10090c);
            List<zzlc> L = eVar.L(this.f10088a, this.f10089b, this.f10091d, this.f10090c);
            bundle = new Bundle();
            if (L != null) {
                for (zzlc zzlcVar : L) {
                    String str = zzlcVar.zze;
                    if (str != null) {
                        bundle.putString(zzlcVar.zzb, str);
                    } else {
                        Long l10 = zzlcVar.zzd;
                        if (l10 != null) {
                            bundle.putLong(zzlcVar.zzb, l10.longValue());
                        } else {
                            Double d10 = zzlcVar.zzg;
                            if (d10 != null) {
                                bundle.putDouble(zzlcVar.zzb, d10.doubleValue());
                            }
                        }
                    }
                }
            }
            try {
                try {
                    this.f10093f.E();
                    this.f10093f.f9432a.N().F(this.f10092e, bundle);
                } catch (RemoteException e11) {
                    e10 = e11;
                    this.f10093f.f9432a.b().r().c("Failed to get user properties; remote exception", this.f10088a, e10);
                    this.f10093f.f9432a.N().F(this.f10092e, bundle);
                }
            } catch (Throwable th2) {
                th = th2;
                bundle2 = bundle;
                this.f10093f.f9432a.N().F(this.f10092e, bundle2);
                throw th;
            }
        } catch (RemoteException e12) {
            bundle = bundle2;
            e10 = e12;
        } catch (Throwable th3) {
            th = th3;
            this.f10093f.f9432a.N().F(this.f10092e, bundle2);
            throw th;
        }
    }
}
