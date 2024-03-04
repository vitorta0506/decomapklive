package com.google.android.gms.internal.recaptcha;
/* loaded from: classes2.dex */
public final class la extends dg<la, ka> implements hh {
    private static final la zzb;
    private static volatile nh<la> zze;
    private int zzf;
    private String zzg = "";

    static {
        la laVar = new la();
        zzb = laVar;
        dg.l(la.class, laVar);
    }

    private la() {
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
                            nh<la> nhVar = zze;
                            if (nhVar == null) {
                                synchronized (la.class) {
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
                    return new ka(null);
                }
                return new la();
            }
            return dg.k(zzb, "\u0001\u0001\u0000\u0001\u0007\u0007\u0001\u0000\u0000\u0000\u0007ဈ\u0000", new Object[]{"zzf", "zzg"});
        }
        return (byte) 1;
    }
}
