package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes2.dex */
public final class b5 extends x8 implements aa {
    private static final b5 zza;
    private c9 zze = x8.l();
    private c9 zzf = x8.l();
    private d9 zzg = x8.n();
    private d9 zzh = x8.n();

    static {
        b5 b5Var = new b5();
        zza = b5Var;
        x8.r(b5.class, b5Var);
    }

    private b5() {
    }

    public static a5 B() {
        return (a5) zza.s();
    }

    public static b5 D() {
        return zza;
    }

    public static /* synthetic */ void J(b5 b5Var, Iterable iterable) {
        c9 c9Var = b5Var.zze;
        if (!c9Var.E()) {
            b5Var.zze = x8.m(c9Var);
        }
        i7.h(iterable, b5Var.zze);
    }

    public static /* synthetic */ void L(b5 b5Var, Iterable iterable) {
        c9 c9Var = b5Var.zzf;
        if (!c9Var.E()) {
            b5Var.zzf = x8.m(c9Var);
        }
        i7.h(iterable, b5Var.zzf);
    }

    public static /* synthetic */ void N(b5 b5Var, Iterable iterable) {
        b5Var.T();
        i7.h(iterable, b5Var.zzg);
    }

    public static /* synthetic */ void P(b5 b5Var, int i9) {
        b5Var.T();
        b5Var.zzg.remove(i9);
    }

    public static /* synthetic */ void Q(b5 b5Var, Iterable iterable) {
        b5Var.U();
        i7.h(iterable, b5Var.zzh);
    }

    public static /* synthetic */ void S(b5 b5Var, int i9) {
        b5Var.U();
        b5Var.zzh.remove(i9);
    }

    private final void T() {
        d9 d9Var = this.zzg;
        if (d9Var.E()) {
            return;
        }
        this.zzg = x8.o(d9Var);
    }

    private final void U() {
        d9 d9Var = this.zzh;
        if (d9Var.E()) {
            return;
        }
        this.zzh = x8.o(d9Var);
    }

    public final j4 A(int i9) {
        return (j4) this.zzg.get(i9);
    }

    public final d5 E(int i9) {
        return (d5) this.zzh.get(i9);
    }

    public final List F() {
        return this.zzg;
    }

    public final List G() {
        return this.zzf;
    }

    public final List H() {
        return this.zzh;
    }

    public final List I() {
        return this.zze;
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
                    return new a5(null);
                }
                return new b5();
            }
            return x8.q(zza, "\u0001\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b", new Object[]{"zze", "zzf", "zzg", j4.class, "zzh", d5.class});
        }
        return (byte) 1;
    }

    public final int w() {
        return this.zzg.size();
    }

    public final int x() {
        return this.zzf.size();
    }

    public final int y() {
        return this.zzh.size();
    }

    public final int z() {
        return this.zze.size();
    }
}
