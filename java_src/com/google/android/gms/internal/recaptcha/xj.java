package com.google.android.gms.internal.recaptcha;

import java.util.List;
/* loaded from: classes2.dex */
public final class xj extends dg<xj, wj> implements hh {
    private static final xj zzb;
    private static volatile nh<xj> zze;
    private int zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private lg<zzpy> zzf = dg.s();
    private zzpy zzk = zzpy.zzb;

    static {
        xj xjVar = new xj();
        zzb = xjVar;
        dg.l(xj.class, xjVar);
    }

    private xj() {
    }

    public static xj z() {
        return zzb;
    }

    public final List<zzpy> A() {
        return this.zzf;
    }

    /* JADX INFO: Access modifiers changed from: protected */
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
                            nh<xj> nhVar = zze;
                            if (nhVar == null) {
                                synchronized (xj.class) {
                                    nhVar = zze;
                                    if (nhVar == null) {
                                        nhVar = new ag<>(zzb);
                                        zze = nhVar;
                                    }
                                }
                            }
                            return nhVar;
                        }
                        return zzb;
                    }
                    return new wj(null);
                }
                return new xj();
            }
            return dg.k(zzb, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u001c\u0002\u0004\u0003\u0004\u0004\u0004\u0005\u0004\u0006\n", new Object[]{"zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        return (byte) 1;
    }

    public final int t() {
        return this.zzg;
    }

    public final int u() {
        return this.zzh;
    }

    public final int v() {
        return this.zzi;
    }

    public final int w() {
        return this.zzj;
    }

    public final zzpy x() {
        return this.zzk;
    }
}
