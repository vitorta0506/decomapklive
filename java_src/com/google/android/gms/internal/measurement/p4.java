package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes2.dex */
public final class p4 extends x8 implements aa {
    private static final p4 zza;
    private int zze;
    private long zzh;
    private float zzi;
    private double zzj;
    private String zzf = "";
    private String zzg = "";
    private d9 zzk = x8.n();

    static {
        p4 p4Var = new p4();
        zza = p4Var;
        x8.r(p4.class, p4Var);
    }

    private p4() {
    }

    public static o4 A() {
        return (o4) zza.s();
    }

    public static /* synthetic */ void F(p4 p4Var, String str) {
        str.getClass();
        p4Var.zze |= 1;
        p4Var.zzf = str;
    }

    public static /* synthetic */ void G(p4 p4Var, String str) {
        str.getClass();
        p4Var.zze |= 2;
        p4Var.zzg = str;
    }

    public static /* synthetic */ void H(p4 p4Var) {
        p4Var.zze &= -3;
        p4Var.zzg = zza.zzg;
    }

    public static /* synthetic */ void I(p4 p4Var, long j10) {
        p4Var.zze |= 4;
        p4Var.zzh = j10;
    }

    public static /* synthetic */ void J(p4 p4Var) {
        p4Var.zze &= -5;
        p4Var.zzh = 0L;
    }

    public static /* synthetic */ void K(p4 p4Var, double d10) {
        p4Var.zze |= 16;
        p4Var.zzj = d10;
    }

    public static /* synthetic */ void L(p4 p4Var) {
        p4Var.zze &= -17;
        p4Var.zzj = 0.0d;
    }

    public static /* synthetic */ void M(p4 p4Var, p4 p4Var2) {
        p4Var2.getClass();
        p4Var.U();
        p4Var.zzk.add(p4Var2);
    }

    public static /* synthetic */ void N(p4 p4Var, Iterable iterable) {
        p4Var.U();
        i7.h(iterable, p4Var.zzk);
    }

    private final void U() {
        d9 d9Var = this.zzk;
        if (d9Var.E()) {
            return;
        }
        this.zzk = x8.o(d9Var);
    }

    public final String C() {
        return this.zzf;
    }

    public final String D() {
        return this.zzg;
    }

    public final List E() {
        return this.zzk;
    }

    public final boolean P() {
        return (this.zze & 16) != 0;
    }

    public final boolean Q() {
        return (this.zze & 8) != 0;
    }

    public final boolean R() {
        return (this.zze & 4) != 0;
    }

    public final boolean S() {
        return (this.zze & 1) != 0;
    }

    public final boolean T() {
        return (this.zze & 2) != 0;
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
                    return new o4(null);
                }
                return new p4();
            }
            return x8.q(zza, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဂ\u0002\u0004ခ\u0003\u0005က\u0004\u0006\u001b", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", p4.class});
        }
        return (byte) 1;
    }

    public final double w() {
        return this.zzj;
    }

    public final float x() {
        return this.zzi;
    }

    public final int y() {
        return this.zzk.size();
    }

    public final long z() {
        return this.zzh;
    }
}
