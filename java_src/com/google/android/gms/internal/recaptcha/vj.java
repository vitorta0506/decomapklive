package com.google.android.gms.internal.recaptcha;
/* loaded from: classes2.dex */
public final class vj extends dg<vj, uj> implements hh {
    private static final vj zzb;
    private static volatile nh<vj> zze;
    private int zzg;
    private sk zzi;
    private String zzf = "";
    private String zzh = "";

    static {
        vj vjVar = new vj();
        zzb = vjVar;
        dg.l(vj.class, vjVar);
    }

    private vj() {
    }

    public static vj u() {
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
                            nh<vj> nhVar = zze;
                            if (nhVar == null) {
                                synchronized (vj.class) {
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
                    return new uj(null);
                }
                return new vj();
            }
            return dg.k(zzb, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002\f\u0003Ȉ\u0004\t", new Object[]{"zzf", "zzg", "zzh", "zzi"});
        }
        return (byte) 1;
    }

    public final String v() {
        return this.zzf;
    }
}
