package com.google.android.gms.internal.recaptcha;
/* loaded from: classes2.dex */
public final class qk extends dg<qk, pk> implements hh {
    private static final qk zzb;
    private static volatile nh<qk> zze;
    private int zzf;
    private String zzg = "";
    private String zzh = "";

    static {
        qk qkVar = new qk();
        zzb = qkVar;
        dg.l(qk.class, qkVar);
    }

    private qk() {
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
                            nh<qk> nhVar = zze;
                            if (nhVar == null) {
                                synchronized (qk.class) {
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
                    return new pk(null);
                }
                return new qk();
            }
            return dg.k(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"zzf", "zzg", "zzh"});
        }
        return (byte) 1;
    }
}
