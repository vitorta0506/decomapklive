package com.google.android.gms.internal.recaptcha;
/* loaded from: classes2.dex */
public final class uk extends dg<uk, tk> implements hh {
    private static final uk zzb;
    private static volatile nh<uk> zze;
    private int zzf;
    private String zzg = "";
    private String zzh = "";

    static {
        uk ukVar = new uk();
        zzb = ukVar;
        dg.l(uk.class, ukVar);
    }

    private uk() {
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
                            nh<uk> nhVar = zze;
                            if (nhVar == null) {
                                synchronized (uk.class) {
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
                    return new tk(null);
                }
                return new uk();
            }
            return dg.k(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"zzf", "zzg", "zzh"});
        }
        return (byte) 1;
    }
}
