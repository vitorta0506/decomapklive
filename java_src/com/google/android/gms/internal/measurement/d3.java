package com.google.android.gms.internal.measurement;
/* loaded from: classes2.dex */
public final class d3 extends x8 implements aa {
    private static final d3 zza;
    private int zze;
    private p3 zzf;
    private i3 zzg;
    private boolean zzh;
    private String zzi = "";

    static {
        d3 d3Var = new d3();
        zza = d3Var;
        x8.r(d3.class, d3Var);
    }

    private d3() {
    }

    public static /* synthetic */ void B(d3 d3Var, String str) {
        d3Var.zze |= 8;
        d3Var.zzi = str;
    }

    public static d3 x() {
        return zza;
    }

    public final String A() {
        return this.zzi;
    }

    public final boolean C() {
        return this.zzh;
    }

    public final boolean D() {
        return (this.zze & 4) != 0;
    }

    public final boolean E() {
        return (this.zze & 2) != 0;
    }

    public final boolean F() {
        return (this.zze & 8) != 0;
    }

    public final boolean G() {
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
                    return new c3(null);
                }
                return new d3();
            }
            return x8.q(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဇ\u0002\u0004ဈ\u0003", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi"});
        }
        return (byte) 1;
    }

    public final i3 y() {
        i3 i3Var = this.zzg;
        return i3Var == null ? i3.x() : i3Var;
    }

    public final p3 z() {
        p3 p3Var = this.zzf;
        return p3Var == null ? p3.y() : p3Var;
    }
}
