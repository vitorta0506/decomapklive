package com.google.android.gms.internal.measurement;
/* loaded from: classes2.dex */
public final class f5 extends x8 implements aa {
    private static final f5 zza;
    private int zze;
    private long zzf;
    private String zzg = "";
    private String zzh = "";
    private long zzi;
    private float zzj;
    private double zzk;

    static {
        f5 f5Var = new f5();
        zza = f5Var;
        x8.r(f5.class, f5Var);
    }

    private f5() {
    }

    public static /* synthetic */ void D(f5 f5Var, long j10) {
        f5Var.zze |= 1;
        f5Var.zzf = j10;
    }

    public static /* synthetic */ void E(f5 f5Var, String str) {
        str.getClass();
        f5Var.zze |= 2;
        f5Var.zzg = str;
    }

    public static /* synthetic */ void F(f5 f5Var, String str) {
        str.getClass();
        f5Var.zze |= 4;
        f5Var.zzh = str;
    }

    public static /* synthetic */ void G(f5 f5Var) {
        f5Var.zze &= -5;
        f5Var.zzh = zza.zzh;
    }

    public static /* synthetic */ void H(f5 f5Var, long j10) {
        f5Var.zze |= 8;
        f5Var.zzi = j10;
    }

    public static /* synthetic */ void I(f5 f5Var) {
        f5Var.zze &= -9;
        f5Var.zzi = 0L;
    }

    public static /* synthetic */ void J(f5 f5Var, double d10) {
        f5Var.zze |= 32;
        f5Var.zzk = d10;
    }

    public static /* synthetic */ void K(f5 f5Var) {
        f5Var.zze &= -33;
        f5Var.zzk = 0.0d;
    }

    public static e5 z() {
        return (e5) zza.s();
    }

    public final String B() {
        return this.zzg;
    }

    public final String C() {
        return this.zzh;
    }

    public final boolean L() {
        return (this.zze & 32) != 0;
    }

    public final boolean M() {
        return (this.zze & 8) != 0;
    }

    public final boolean N() {
        return (this.zze & 1) != 0;
    }

    public final boolean O() {
        return (this.zze & 4) != 0;
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
                    return new e5(null);
                }
                return new f5();
            }
            return x8.q(zza, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဂ\u0003\u0005ခ\u0004\u0006က\u0005", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        return (byte) 1;
    }

    public final double w() {
        return this.zzk;
    }

    public final long x() {
        return this.zzi;
    }

    public final long y() {
        return this.zzf;
    }
}
