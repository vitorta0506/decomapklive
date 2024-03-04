package com.google.android.gms.internal.measurement;
/* loaded from: classes2.dex */
public final class j4 extends x8 implements aa {
    private static final j4 zza;
    private int zze;
    private int zzf;
    private long zzg;

    static {
        j4 j4Var = new j4();
        zza = j4Var;
        x8.r(j4.class, j4Var);
    }

    private j4() {
    }

    public static /* synthetic */ void A(j4 j4Var, int i9) {
        j4Var.zze |= 1;
        j4Var.zzf = i9;
    }

    public static /* synthetic */ void B(j4 j4Var, long j10) {
        j4Var.zze |= 2;
        j4Var.zzg = j10;
    }

    public static i4 y() {
        return (i4) zza.s();
    }

    public final boolean C() {
        return (this.zze & 2) != 0;
    }

    public final boolean D() {
        return (this.zze & 1) != 0;
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
                    return new i4(null);
                }
                return new j4();
            }
            return x8.q(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002ဂ\u0001", new Object[]{"zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }

    public final int w() {
        return this.zzf;
    }

    public final long x() {
        return this.zzg;
    }
}
