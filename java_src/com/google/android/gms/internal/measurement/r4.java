package com.google.android.gms.internal.measurement;
/* loaded from: classes2.dex */
public final class r4 extends x8 implements aa {
    private static final r4 zza;
    private int zze;
    private String zzf = "";
    private String zzg = "";
    private f4 zzh;

    static {
        r4 r4Var = new r4();
        zza = r4Var;
        x8.r(r4.class, r4Var);
    }

    private r4() {
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
                    return new q4(null);
                }
                return new r4();
            }
            return x8.q(zza, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဉ\u0002", new Object[]{"zze", "zzf", "zzg", "zzh"});
        }
        return (byte) 1;
    }
}
