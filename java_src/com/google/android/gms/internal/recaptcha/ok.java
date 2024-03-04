package com.google.android.gms.internal.recaptcha;
/* loaded from: classes2.dex */
public final class ok extends dg<ok, nk> implements hh {
    private static final ok zzb;
    private static volatile nh<ok> zze;
    private int zzf;
    private uk zzg;
    private boolean zzj;
    private lg<qk> zzh = dg.s();
    private int zzi = 2;
    private lg<zzpy> zzk = dg.s();

    static {
        ok okVar = new ok();
        zzb = okVar;
        dg.l(ok.class, okVar);
    }

    private ok() {
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
                            nh<ok> nhVar = zze;
                            if (nhVar == null) {
                                synchronized (ok.class) {
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
                    return new nk(null);
                }
                return new ok();
            }
            return dg.k(zzb, "\u0001\u0005\u0000\u0001\u0001\u0017\u0005\u0000\u0002\u0000\u0001ဉ\u0000\u0002\u001b\bဇ\u0002\t\u001c\u0017ဌ\u0001", new Object[]{"zzf", "zzg", "zzh", qk.class, "zzj", "zzk", "zzi", zzwa.zzb()});
        }
        return (byte) 1;
    }
}
