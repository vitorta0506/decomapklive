package com.google.android.gms.internal.recaptcha;
/* loaded from: classes2.dex */
public final class dk extends dg<dk, ck> implements hh {
    private static final dk zzb;
    private static volatile nh<dk> zze;
    private int zzf;
    private hk zzh;
    private String zzg = "";
    private String zzi = "";

    static {
        dk dkVar = new dk();
        zzb = dkVar;
        dg.l(dk.class, dkVar);
    }

    private dk() {
    }

    public static dk u() {
        return zzb;
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
                            nh<dk> nhVar = zze;
                            if (nhVar == null) {
                                synchronized (dk.class) {
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
                    return new ck(null);
                }
                return new dk();
            }
            return dg.k(zzb, "\u0000\u0004\u0000\u0000\u0001\u0005\u0004\u0000\u0000\u0000\u0001\f\u0002Ȉ\u0003\t\u0005Ȉ", new Object[]{"zzf", "zzg", "zzh", "zzi"});
        }
        return (byte) 1;
    }

    public final hk v() {
        hk hkVar = this.zzh;
        return hkVar == null ? hk.x() : hkVar;
    }

    public final String w() {
        return this.zzg;
    }
}
