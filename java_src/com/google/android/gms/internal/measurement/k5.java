package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes2.dex */
public final class k5 extends x8 implements aa {
    private static final k5 zza;
    private int zze;
    private String zzf = "";
    private d9 zzg = x8.n();

    static {
        k5 k5Var = new k5();
        zza = k5Var;
        x8.r(k5.class, k5Var);
    }

    private k5() {
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
                    return new j5(null);
                }
                return new k5();
            }
            return x8.q(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b", new Object[]{"zze", "zzf", "zzg", r5.class});
        }
        return (byte) 1;
    }

    public final String x() {
        return this.zzf;
    }

    public final List y() {
        return this.zzg;
    }
}
