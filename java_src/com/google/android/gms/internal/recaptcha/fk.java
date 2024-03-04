package com.google.android.gms.internal.recaptcha;
/* loaded from: classes2.dex */
public final class fk extends dg<fk, ek> implements hh {
    private static final fk zzb;
    private static volatile nh<fk> zze;
    private int zzf;
    private hk zzh;
    private String zzg = "";
    private String zzi = "";
    private String zzj = "";

    static {
        fk fkVar = new fk();
        zzb = fkVar;
        dg.l(fk.class, fkVar);
    }

    private fk() {
    }

    public static fk u() {
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
                            nh<fk> nhVar = zze;
                            if (nhVar == null) {
                                synchronized (fk.class) {
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
                    return new ek(null);
                }
                return new fk();
            }
            return dg.k(zzb, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\f\u0002Ȉ\u0003Ȉ\u0004Ȉ\u0005\t", new Object[]{"zzf", "zzg", "zzi", "zzj", "zzh"});
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
