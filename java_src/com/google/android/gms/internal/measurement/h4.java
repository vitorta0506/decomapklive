package com.google.android.gms.internal.measurement;
/* loaded from: classes2.dex */
public final class h4 extends x8 implements aa {
    private static final h4 zza;
    private int zze;
    private int zzf;
    private b5 zzg;
    private b5 zzh;
    private boolean zzi;

    static {
        h4 h4Var = new h4();
        zza = h4Var;
        x8.r(h4.class, h4Var);
    }

    private h4() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void B(h4 h4Var, int i9) {
        h4Var.zze |= 1;
        h4Var.zzf = i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void C(h4 h4Var, b5 b5Var) {
        b5Var.getClass();
        h4Var.zzg = b5Var;
        h4Var.zze |= 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void D(h4 h4Var, b5 b5Var) {
        h4Var.zzh = b5Var;
        h4Var.zze |= 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void E(h4 h4Var, boolean z10) {
        h4Var.zze |= 8;
        h4Var.zzi = z10;
    }

    public static g4 x() {
        return (g4) zza.s();
    }

    public final b5 A() {
        b5 b5Var = this.zzh;
        return b5Var == null ? b5.D() : b5Var;
    }

    public final boolean F() {
        return this.zzi;
    }

    public final boolean G() {
        return (this.zze & 1) != 0;
    }

    public final boolean H() {
        return (this.zze & 8) != 0;
    }

    public final boolean I() {
        return (this.zze & 4) != 0;
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
                    return new g4(null);
                }
                return new h4();
            }
            return x8.q(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001င\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဇ\u0003", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi"});
        }
        return (byte) 1;
    }

    public final int w() {
        return this.zzf;
    }

    public final b5 z() {
        b5 b5Var = this.zzg;
        return b5Var == null ? b5.D() : b5Var;
    }
}
