package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes2.dex */
public final class i5 extends x8 implements aa {
    private static final i5 zza;
    private d9 zze = x8.n();

    static {
        i5 i5Var = new i5();
        zza = i5Var;
        x8.r(i5.class, i5Var);
    }

    private i5() {
    }

    public static i5 y() {
        return zza;
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
                    return new h5(null);
                }
                return new i5();
            }
            return x8.q(zza, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zze", k5.class});
        }
        return (byte) 1;
    }

    public final int w() {
        return this.zze.size();
    }

    public final List z() {
        return this.zze;
    }
}
