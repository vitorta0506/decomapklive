package com.google.android.gms.internal.recaptcha;
/* loaded from: classes2.dex */
public final class sk extends dg<sk, rk> implements hh {
    private static final sk zzb;
    private static volatile nh<sk> zze;
    private int zzf;
    private zzpy zzg;
    private zzpy zzh;
    private int zzi;
    private zzpy zzj;

    static {
        sk skVar = new sk();
        zzb = skVar;
        dg.l(sk.class, skVar);
    }

    private sk() {
        zzpy zzpyVar = zzpy.zzb;
        this.zzg = zzpyVar;
        this.zzh = zzpyVar;
        this.zzj = zzpyVar;
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
                            nh<sk> nhVar = zze;
                            if (nhVar == null) {
                                synchronized (sk.class) {
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
                    return new rk(null);
                }
                return new sk();
            }
            return dg.k(zzb, "\u0001\u0004\u0000\u0001\u0001\u0005\u0004\u0000\u0000\u0000\u0001ည\u0000\u0003ည\u0001\u0004ဋ\u0002\u0005ည\u0003", new Object[]{"zzf", "zzg", "zzh", "zzi", "zzj"});
        }
        return (byte) 1;
    }
}
