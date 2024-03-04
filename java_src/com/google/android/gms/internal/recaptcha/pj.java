package com.google.android.gms.internal.recaptcha;
/* loaded from: classes2.dex */
public final class pj extends dg<pj, oj> implements hh {
    private static final pj zzb;
    private static volatile nh<pj> zze;
    private String zzf = "";
    private String zzg = "";
    private String zzh = "";

    static {
        pj pjVar = new pj();
        zzb = pjVar;
        dg.l(pj.class, pjVar);
    }

    private pj() {
    }

    public static oj t() {
        return zzb.n();
    }

    public static /* synthetic */ void v(pj pjVar, String str) {
        str.getClass();
        pjVar.zzf = str;
    }

    public static /* synthetic */ void w(pj pjVar, String str) {
        str.getClass();
        pjVar.zzg = str;
    }

    public static /* synthetic */ void x(pj pjVar, String str) {
        str.getClass();
        pjVar.zzh = str;
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
                            nh<pj> nhVar = zze;
                            if (nhVar == null) {
                                synchronized (pj.class) {
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
                    return new oj(null);
                }
                return new pj();
            }
            return dg.k(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ", new Object[]{"zzf", "zzg", "zzh"});
        }
        return (byte) 1;
    }
}
