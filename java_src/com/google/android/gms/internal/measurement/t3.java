package com.google.android.gms.internal.measurement;
/* loaded from: classes2.dex */
public final class t3 extends x8 implements aa {
    private static final t3 zza;
    private int zze;
    private String zzf = "";
    private d9 zzg = x8.n();
    private boolean zzh;

    static {
        t3 t3Var = new t3();
        zza = t3Var;
        x8.r(t3.class, t3Var);
    }

    private t3() {
    }

    @Override // com.google.android.gms.internal.measurement.x8
    public final Object v(int i9, Object obj, Object obj2) {
        int i10 = i9 - 1;
        if (i10 != 0) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        if (i10 != 5) {
                            return null;
                        }
                        return zza;
                    }
                    return new r3(null);
                }
                return new t3();
            }
            return x8.q(zza, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b\u0003ဇ\u0001", new Object[]{"zze", "zzf", "zzg", z3.class, "zzh"});
        }
        return (byte) 1;
    }

    public final String x() {
        return this.zzf;
    }
}
