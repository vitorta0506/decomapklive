package com.google.android.gms.internal.recaptcha;
/* loaded from: classes2.dex */
public final class a2 extends dg<a2, z1> implements hh {
    private static final a2 zzb;
    private static volatile nh<a2> zze;
    private String zzf = "";
    private ji zzg;

    static {
        a2 a2Var = new a2();
        zzb = a2Var;
        dg.l(a2.class, a2Var);
    }

    private a2() {
    }

    public static z1 t() {
        return zzb.n();
    }

    public static a2 v() {
        return zzb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void x(a2 a2Var, String str) {
        str.getClass();
        a2Var.zzf = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void y(a2 a2Var, ji jiVar) {
        jiVar.getClass();
        a2Var.zzg = jiVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
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
                            nh<a2> nhVar = zze;
                            if (nhVar == null) {
                                synchronized (a2.class) {
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
                    return new z1(null);
                }
                return new a2();
            }
            return dg.k(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\t", new Object[]{"zzf", "zzg"});
        }
        return (byte) 1;
    }

    public final String w() {
        return this.zzf;
    }
}
