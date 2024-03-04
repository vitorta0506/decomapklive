package com.google.android.gms.internal.measurement;
/* loaded from: classes2.dex */
public final class z3 extends x8 implements aa {
    private static final z3 zza;
    private int zze;
    private String zzf = "";
    private String zzg = "";

    static {
        z3 z3Var = new z3();
        zza = z3Var;
        x8.r(z3.class, z3Var);
    }

    private z3() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
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
                    return new y3(null);
                }
                return new z3();
            }
            return x8.q(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }
}
