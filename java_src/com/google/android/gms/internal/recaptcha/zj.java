package com.google.android.gms.internal.recaptcha;
/* loaded from: classes2.dex */
public final class zj extends dg<zj, yj> implements hh {
    private static final zj zzb;
    private static volatile nh<zj> zze;
    private zzpy zzf;
    private int zzg;
    private int zzh;
    private zzpy zzi;

    static {
        zj zjVar = new zj();
        zzb = zjVar;
        dg.l(zj.class, zjVar);
    }

    private zj() {
        zzpy zzpyVar = zzpy.zzb;
        this.zzf = zzpyVar;
        this.zzi = zzpyVar;
    }

    public static yj t() {
        return zzb.n();
    }

    public static zj v() {
        return zzb;
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
                            nh<zj> nhVar = zze;
                            if (nhVar == null) {
                                synchronized (zj.class) {
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
                    return new yj(null);
                }
                return new zj();
            }
            return dg.k(zzb, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\n\u0002\u0004\u0003\u0004\u0004\n", new Object[]{"zzf", "zzg", "zzh", "zzi"});
        }
        return (byte) 1;
    }
}
