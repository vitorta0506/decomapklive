package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes2.dex */
public final class l4 extends x8 implements aa {
    private static final l4 zza;
    private int zze;
    private d9 zzf = x8.n();
    private String zzg = "";
    private long zzh;
    private long zzi;
    private int zzj;

    static {
        l4 l4Var = new l4();
        zza = l4Var;
        x8.r(l4.class, l4Var);
    }

    private l4() {
    }

    public static k4 A() {
        return (k4) zza.s();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void F(l4 l4Var, int i9, p4 p4Var) {
        p4Var.getClass();
        l4Var.Q();
        l4Var.zzf.set(i9, p4Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void G(l4 l4Var, p4 p4Var) {
        p4Var.getClass();
        l4Var.Q();
        l4Var.zzf.add(p4Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void H(l4 l4Var, Iterable iterable) {
        l4Var.Q();
        i7.h(iterable, l4Var.zzf);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void J(l4 l4Var, int i9) {
        l4Var.Q();
        l4Var.zzf.remove(i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void K(l4 l4Var, String str) {
        str.getClass();
        l4Var.zze |= 1;
        l4Var.zzg = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void L(l4 l4Var, long j10) {
        l4Var.zze |= 2;
        l4Var.zzh = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void M(l4 l4Var, long j10) {
        l4Var.zze |= 4;
        l4Var.zzi = j10;
    }

    private final void Q() {
        d9 d9Var = this.zzf;
        if (d9Var.E()) {
            return;
        }
        this.zzf = x8.o(d9Var);
    }

    public final p4 C(int i9) {
        return (p4) this.zzf.get(i9);
    }

    public final String D() {
        return this.zzg;
    }

    public final List E() {
        return this.zzf;
    }

    public final boolean N() {
        return (this.zze & 8) != 0;
    }

    public final boolean O() {
        return (this.zze & 4) != 0;
    }

    public final boolean P() {
        return (this.zze & 2) != 0;
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
                    return new k4(null);
                }
                return new l4();
            }
            return x8.q(zza, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u001b\u0002ဈ\u0000\u0003ဂ\u0001\u0004ဂ\u0002\u0005င\u0003", new Object[]{"zze", "zzf", p4.class, "zzg", "zzh", "zzi", "zzj"});
        }
        return (byte) 1;
    }

    public final int w() {
        return this.zzj;
    }

    public final int x() {
        return this.zzf.size();
    }

    public final long y() {
        return this.zzi;
    }

    public final long z() {
        return this.zzh;
    }
}
