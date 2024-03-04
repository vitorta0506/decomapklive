package com.google.android.gms.internal.recaptcha;
/* loaded from: classes2.dex */
public final class ij extends dg<ij, hj> implements hh {
    private static final ij zzb;
    private static volatile nh<ij> zze;
    private Object zzg;
    private boolean zzi;
    private ok zzj;
    private int zzf = 0;
    private zzpy zzh = zzpy.zzb;

    static {
        ij ijVar = new ij();
        zzb = ijVar;
        dg.l(ij.class, ijVar);
    }

    private ij() {
    }

    public static hj t() {
        return zzb.n();
    }

    public static /* synthetic */ void v(ij ijVar, pj pjVar) {
        pjVar.getClass();
        ijVar.zzg = pjVar;
        ijVar.zzf = 2;
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
                            nh<ij> nhVar = zze;
                            if (nhVar == null) {
                                synchronized (ij.class) {
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
                    return new hj(null);
                }
                return new ij();
            }
            return dg.k(zzb, "\u0000\u0005\u0001\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001Ȼ\u0000\u0002<\u0000\u0003\n\u0004\u0007\u0005\t", new Object[]{"zzg", "zzf", pj.class, "zzh", "zzi", "zzj"});
        }
        return (byte) 1;
    }
}
