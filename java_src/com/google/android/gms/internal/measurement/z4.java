package com.google.android.gms.internal.measurement;
/* loaded from: classes2.dex */
public final class z4 extends x8 implements aa {
    private static final z4 zza;
    private int zze;
    private int zzf = 1;
    private d9 zzg = x8.n();

    static {
        z4 z4Var = new z4();
        zza = z4Var;
        x8.r(z4.class, z4Var);
    }

    private z4() {
    }

    public static x4 w() {
        return (x4) zza.s();
    }

    public static /* synthetic */ void y(z4 z4Var, n4 n4Var) {
        n4Var.getClass();
        d9 d9Var = z4Var.zzg;
        if (!d9Var.E()) {
            z4Var.zzg = x8.o(d9Var);
        }
        z4Var.zzg.add(n4Var);
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
                    return new x4(null);
                }
                return new z4();
            }
            return x8.q(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001ဌ\u0000\u0002\u001b", new Object[]{"zze", "zzf", y4.f8438a, "zzg", n4.class});
        }
        return (byte) 1;
    }
}
