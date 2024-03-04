package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes2.dex */
public final class b3 extends x8 implements aa {
    private static final b3 zza;
    private int zze;
    private int zzf;
    private String zzg = "";
    private d9 zzh = x8.n();
    private boolean zzi;
    private i3 zzj;
    private boolean zzk;
    private boolean zzl;
    private boolean zzm;

    static {
        b3 b3Var = new b3();
        zza = b3Var;
        x8.r(b3.class, b3Var);
    }

    private b3() {
    }

    public static /* synthetic */ void E(b3 b3Var, String str) {
        b3Var.zze |= 2;
        b3Var.zzg = str;
    }

    public static /* synthetic */ void F(b3 b3Var, int i9, d3 d3Var) {
        d3Var.getClass();
        d9 d9Var = b3Var.zzh;
        if (!d9Var.E()) {
            b3Var.zzh = x8.o(d9Var);
        }
        b3Var.zzh.set(i9, d3Var);
    }

    public static a3 y() {
        return (a3) zza.s();
    }

    public final d3 A(int i9) {
        return (d3) this.zzh.get(i9);
    }

    public final i3 B() {
        i3 i3Var = this.zzj;
        return i3Var == null ? i3.x() : i3Var;
    }

    public final String C() {
        return this.zzg;
    }

    public final List D() {
        return this.zzh;
    }

    public final boolean G() {
        return this.zzk;
    }

    public final boolean H() {
        return this.zzl;
    }

    public final boolean I() {
        return this.zzm;
    }

    public final boolean J() {
        return (this.zze & 8) != 0;
    }

    public final boolean K() {
        return (this.zze & 1) != 0;
    }

    public final boolean L() {
        return (this.zze & 64) != 0;
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
                    return new a3(null);
                }
                return new b3();
            }
            return x8.q(zza, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0001\u0000\u0001င\u0000\u0002ဈ\u0001\u0003\u001b\u0004ဇ\u0002\u0005ဉ\u0003\u0006ဇ\u0004\u0007ဇ\u0005\bဇ\u0006", new Object[]{"zze", "zzf", "zzg", "zzh", d3.class, "zzi", "zzj", "zzk", "zzl", "zzm"});
        }
        return (byte) 1;
    }

    public final int w() {
        return this.zzh.size();
    }

    public final int x() {
        return this.zzf;
    }
}
