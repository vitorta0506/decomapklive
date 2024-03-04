package com.google.android.gms.internal.measurement;
/* loaded from: classes2.dex */
public final class n4 extends x8 implements aa {
    private static final n4 zza;
    private int zze;
    private String zzf = "";
    private long zzg;

    static {
        n4 n4Var = new n4();
        zza = n4Var;
        x8.r(n4.class, n4Var);
    }

    private n4() {
    }

    public static m4 w() {
        return (m4) zza.s();
    }

    public static /* synthetic */ void y(n4 n4Var, String str) {
        str.getClass();
        n4Var.zze |= 1;
        n4Var.zzf = str;
    }

    public static /* synthetic */ void z(n4 n4Var, long j10) {
        n4Var.zze |= 2;
        n4Var.zzg = j10;
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
                    return new m4(null);
                }
                return new n4();
            }
            return x8.q(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001", new Object[]{"zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }
}
