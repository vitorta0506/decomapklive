package com.google.android.gms.internal.recaptcha;
/* loaded from: classes2.dex */
public final class mf extends dg<mf, lf> implements hh {
    private static final mf zzb;
    private static volatile nh<mf> zze;
    private long zzf;
    private int zzg;

    static {
        mf mfVar = new mf();
        zzb = mfVar;
        dg.l(mf.class, mfVar);
    }

    private mf() {
    }

    public static lf v() {
        return zzb.n();
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
                            nh<mf> nhVar = zze;
                            if (nhVar == null) {
                                synchronized (mf.class) {
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
                    return new lf(null);
                }
                return new mf();
            }
            return new rh(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0002\u0004", new Object[]{"zzf", "zzg"});
        }
        return (byte) 1;
    }

    public final int t() {
        return this.zzg;
    }

    public final long u() {
        return this.zzf;
    }
}
