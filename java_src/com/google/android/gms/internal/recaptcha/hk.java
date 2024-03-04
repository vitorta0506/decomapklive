package com.google.android.gms.internal.recaptcha;
/* loaded from: classes2.dex */
public final class hk extends dg<hk, gk> implements hh {
    private static final hk zzb;
    private static volatile nh<hk> zze;
    private int zzg;
    private long zzi;
    private la zzj;
    private int zzk;
    private String zzf = "";
    private String zzh = "";

    static {
        hk hkVar = new hk();
        zzb = hkVar;
        dg.l(hk.class, hkVar);
    }

    private hk() {
    }

    public static gk v() {
        return zzb.n();
    }

    public static hk x() {
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
                            nh<hk> nhVar = zze;
                            if (nhVar == null) {
                                synchronized (hk.class) {
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
                    return new gk(null);
                }
                return new hk();
            }
            return dg.k(zzb, "\u0000\u0006\u0000\u0000\u0001\u0007\u0006\u0000\u0000\u0000\u0001Ȉ\u0002\u0004\u0003Ȉ\u0004\u0002\u0005\t\u0007\f", new Object[]{"zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        return (byte) 1;
    }

    public final int t() {
        return this.zzg;
    }

    public final long u() {
        return this.zzi;
    }
}
