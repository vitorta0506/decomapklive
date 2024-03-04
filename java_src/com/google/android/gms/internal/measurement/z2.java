package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes2.dex */
public final class z2 extends x8 implements aa {
    private static final z2 zza;
    private int zze;
    private int zzf;
    private d9 zzg = x8.n();
    private d9 zzh = x8.n();
    private boolean zzi;
    private boolean zzj;

    static {
        z2 z2Var = new z2();
        zza = z2Var;
        x8.r(z2.class, z2Var);
    }

    private z2() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void E(z2 z2Var, int i9, k3 k3Var) {
        k3Var.getClass();
        d9 d9Var = z2Var.zzg;
        if (!d9Var.E()) {
            z2Var.zzg = x8.o(d9Var);
        }
        z2Var.zzg.set(i9, k3Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void F(z2 z2Var, int i9, b3 b3Var) {
        b3Var.getClass();
        d9 d9Var = z2Var.zzh;
        if (!d9Var.E()) {
            z2Var.zzh = x8.o(d9Var);
        }
        z2Var.zzh.set(i9, b3Var);
    }

    public final b3 A(int i9) {
        return (b3) this.zzh.get(i9);
    }

    public final k3 B(int i9) {
        return (k3) this.zzg.get(i9);
    }

    public final List C() {
        return this.zzh;
    }

    public final List D() {
        return this.zzg;
    }

    public final boolean G() {
        return (this.zze & 1) != 0;
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
                    return new y2(null);
                }
                return new z2();
            }
            return x8.q(zza, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001င\u0000\u0002\u001b\u0003\u001b\u0004ဇ\u0001\u0005ဇ\u0002", new Object[]{"zze", "zzf", "zzg", k3.class, "zzh", b3.class, "zzi", "zzj"});
        }
        return (byte) 1;
    }

    public final int w() {
        return this.zzf;
    }

    public final int x() {
        return this.zzh.size();
    }

    public final int y() {
        return this.zzg.size();
    }
}
