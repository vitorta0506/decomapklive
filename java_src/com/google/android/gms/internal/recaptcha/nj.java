package com.google.android.gms.internal.recaptcha;

import java.util.List;
/* loaded from: classes2.dex */
public final class nj extends dg<nj, kj> implements hh {
    private static final jg<Integer, zzvj> zzb = new jj();
    private static final nj zze;
    private static volatile nh<nj> zzf;
    private mj zzh;
    private int zzk;
    private xj zzm;
    private sk zzn;
    private String zzg = "";
    private lg<String> zzi = dg.s();
    private ig zzj = dg.r();
    private String zzl = "";

    static {
        nj njVar = new nj();
        zze = njVar;
        dg.l(nj.class, njVar);
    }

    private nj() {
    }

    public static nj u() {
        return zze;
    }

    @Override // com.google.android.gms.internal.recaptcha.dg
    public final Object m(int i9, Object obj, Object obj2) {
        int i10 = i9 - 1;
        if (i10 != 0) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        if (i10 != 5) {
                            if (i10 != 6) {
                                return null;
                            }
                            nh<nj> nhVar = zzf;
                            if (nhVar == null) {
                                synchronized (nj.class) {
                                    nhVar = zzf;
                                    if (nhVar == null) {
                                        nhVar = new ag<>(zze);
                                        zzf = nhVar;
                                    }
                                }
                            }
                            return nhVar;
                        }
                        return zze;
                    }
                    return new kj(null);
                }
                return new nj();
            }
            return dg.k(zze, "\u0000\b\u0000\u0000\u0001\b\b\u0000\u0002\u0000\u0001Ȉ\u0002\t\u0003Ț\u0004,\u0005\f\u0006Ȉ\u0007\t\b\t", new Object[]{"zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn"});
        }
        return (byte) 1;
    }

    public final xj v() {
        xj xjVar = this.zzm;
        return xjVar == null ? xj.z() : xjVar;
    }

    public final String w() {
        return this.zzg;
    }

    public final String x() {
        return this.zzl;
    }

    public final List<String> y() {
        return this.zzi;
    }

    public final List<zzvj> z() {
        return new kg(this.zzj, zzb);
    }
}
