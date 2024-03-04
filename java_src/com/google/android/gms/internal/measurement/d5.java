package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes2.dex */
public final class d5 extends x8 implements aa {
    private static final d5 zza;
    private int zze;
    private int zzf;
    private c9 zzg = x8.l();

    static {
        d5 d5Var = new d5();
        zza = d5Var;
        x8.r(d5.class, d5Var);
    }

    private d5() {
    }

    public static /* synthetic */ void C(d5 d5Var, int i9) {
        d5Var.zze |= 1;
        d5Var.zzf = i9;
    }

    public static /* synthetic */ void D(d5 d5Var, Iterable iterable) {
        c9 c9Var = d5Var.zzg;
        if (!c9Var.E()) {
            d5Var.zzg = x8.m(c9Var);
        }
        i7.h(iterable, d5Var.zzg);
    }

    public static c5 z() {
        return (c5) zza.s();
    }

    public final List B() {
        return this.zzg;
    }

    public final boolean E() {
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
                    return new c5(null);
                }
                return new d5();
            }
            return x8.q(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001င\u0000\u0002\u0014", new Object[]{"zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }

    public final int w() {
        return this.zzg.size();
    }

    public final int x() {
        return this.zzf;
    }

    public final long y(int i9) {
        return this.zzg.h(i9);
    }
}
