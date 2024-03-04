package com.google.android.gms.internal.measurement;
/* loaded from: classes2.dex */
public final class i3 extends x8 implements aa {
    private static final i3 zza;
    private int zze;
    private int zzf;
    private boolean zzg;
    private String zzh = "";
    private String zzi = "";
    private String zzj = "";

    static {
        i3 i3Var = new i3();
        zza = i3Var;
        x8.r(i3.class, i3Var);
    }

    private i3() {
    }

    public static i3 x() {
        return zza;
    }

    public final String A() {
        return this.zzi;
    }

    public final boolean B() {
        return this.zzg;
    }

    public final boolean C() {
        return (this.zze & 1) != 0;
    }

    public final boolean D() {
        return (this.zze & 4) != 0;
    }

    public final boolean E() {
        return (this.zze & 2) != 0;
    }

    public final boolean F() {
        return (this.zze & 16) != 0;
    }

    public final boolean G() {
        return (this.zze & 8) != 0;
    }

    public final int H() {
        int a10 = h3.a(this.zzf);
        if (a10 == 0) {
            return 1;
        }
        return a10;
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
                    return new e3(null);
                }
                return new i3();
            }
            return x8.q(zza, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဇ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004", new Object[]{"zze", "zzf", g3.f8094a, "zzg", "zzh", "zzi", "zzj"});
        }
        return (byte) 1;
    }

    public final String y() {
        return this.zzh;
    }

    public final String z() {
        return this.zzj;
    }
}
