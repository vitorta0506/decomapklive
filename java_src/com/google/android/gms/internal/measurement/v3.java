package com.google.android.gms.internal.measurement;
/* loaded from: classes2.dex */
public final class v3 extends x8 implements aa {
    private static final v3 zza;
    private int zze;
    private String zzf = "";
    private boolean zzg;
    private boolean zzh;
    private int zzi;

    static {
        v3 v3Var = new v3();
        zza = v3Var;
        x8.r(v3.class, v3Var);
    }

    private v3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void z(v3 v3Var, String str) {
        str.getClass();
        v3Var.zze |= 1;
        v3Var.zzf = str;
    }

    public final boolean A() {
        return this.zzg;
    }

    public final boolean B() {
        return this.zzh;
    }

    public final boolean C() {
        return (this.zze & 2) != 0;
    }

    public final boolean D() {
        return (this.zze & 4) != 0;
    }

    public final boolean E() {
        return (this.zze & 8) != 0;
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
                    return new u3(null);
                }
                return new v3();
            }
            return x8.q(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဇ\u0001\u0003ဇ\u0002\u0004င\u0003", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi"});
        }
        return (byte) 1;
    }

    public final int w() {
        return this.zzi;
    }

    public final String y() {
        return this.zzf;
    }
}
