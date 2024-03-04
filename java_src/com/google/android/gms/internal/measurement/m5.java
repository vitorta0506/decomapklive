package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes2.dex */
public final class m5 extends x8 implements aa {
    private static final m5 zza;
    private int zze;
    private d9 zzf = x8.n();
    private i5 zzg;

    static {
        m5 m5Var = new m5();
        zza = m5Var;
        x8.r(m5.class, m5Var);
    }

    private m5() {
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
                    return new l5(null);
                }
                return new m5();
            }
            return x8.q(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002ဉ\u0000", new Object[]{"zze", "zzf", r5.class, "zzg"});
        }
        return (byte) 1;
    }

    public final i5 w() {
        i5 i5Var = this.zzg;
        return i5Var == null ? i5.y() : i5Var;
    }

    public final List y() {
        return this.zzf;
    }
}
