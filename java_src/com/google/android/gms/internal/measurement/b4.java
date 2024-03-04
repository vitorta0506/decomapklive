package com.google.android.gms.internal.measurement;
/* loaded from: classes2.dex */
public final class b4 extends x8 implements aa {
    private static final b4 zza;
    private int zze;
    private String zzf = "";
    private String zzg = "";

    static {
        b4 b4Var = new b4();
        zza = b4Var;
        x8.r(b4.class, b4Var);
    }

    private b4() {
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
                    return new a4(null);
                }
                return new b4();
            }
            return x8.q(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }

    public final String x() {
        return this.zzf;
    }

    public final String y() {
        return this.zzg;
    }
}
