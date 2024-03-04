package com.google.android.gms.internal.measurement;
/* loaded from: classes2.dex */
public final class k3 extends x8 implements aa {
    private static final k3 zza;
    private int zze;
    private int zzf;
    private String zzg = "";
    private d3 zzh;
    private boolean zzi;
    private boolean zzj;
    private boolean zzk;

    static {
        k3 k3Var = new k3();
        zza = k3Var;
        x8.r(k3.class, k3Var);
    }

    private k3() {
    }

    public static /* synthetic */ void B(k3 k3Var, String str) {
        k3Var.zze |= 2;
        k3Var.zzg = str;
    }

    public static j3 y() {
        return (j3) zza.s();
    }

    public final String A() {
        return this.zzg;
    }

    public final boolean C() {
        return this.zzi;
    }

    public final boolean D() {
        return this.zzj;
    }

    public final boolean E() {
        return this.zzk;
    }

    public final boolean F() {
        return (this.zze & 1) != 0;
    }

    public final boolean G() {
        return (this.zze & 32) != 0;
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
                    return new j3(null);
                }
                return new k3();
            }
            return x8.q(zza, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001င\u0000\u0002ဈ\u0001\u0003ဉ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ဇ\u0005", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        return (byte) 1;
    }

    public final int w() {
        return this.zzf;
    }

    public final d3 x() {
        d3 d3Var = this.zzh;
        return d3Var == null ? d3.x() : d3Var;
    }
}
