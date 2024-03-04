package com.google.android.gms.internal.recaptcha;
/* loaded from: classes2.dex */
public final class mj extends dg<mj, lj> implements hh {
    private static final mj zzb;
    private static volatile nh<mj> zze;
    private zzpy zzf;
    private zzpy zzg;

    static {
        mj mjVar = new mj();
        zzb = mjVar;
        dg.l(mj.class, mjVar);
    }

    private mj() {
        zzpy zzpyVar = zzpy.zzb;
        this.zzf = zzpyVar;
        this.zzg = zzpyVar;
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
                            nh<mj> nhVar = zze;
                            if (nhVar == null) {
                                synchronized (mj.class) {
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
                    return new lj(null);
                }
                return new mj();
            }
            return dg.k(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002\n", new Object[]{"zzf", "zzg"});
        }
        return (byte) 1;
    }
}
