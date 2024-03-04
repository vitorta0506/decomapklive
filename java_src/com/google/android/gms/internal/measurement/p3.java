package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes2.dex */
public final class p3 extends x8 implements aa {
    private static final p3 zza;
    private int zze;
    private int zzf;
    private boolean zzh;
    private String zzg = "";
    private d9 zzi = x8.n();

    static {
        p3 p3Var = new p3();
        zza = p3Var;
        x8.r(p3.class, p3Var);
    }

    private p3() {
    }

    public static p3 y() {
        return zza;
    }

    public final List A() {
        return this.zzi;
    }

    public final boolean B() {
        return this.zzh;
    }

    public final boolean C() {
        return (this.zze & 4) != 0;
    }

    public final boolean D() {
        return (this.zze & 2) != 0;
    }

    public final boolean E() {
        return (this.zze & 1) != 0;
    }

    public final int F() {
        int a10 = o3.a(this.zzf);
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
                    return new l3(null);
                }
                return new p3();
            }
            return x8.q(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001ဌ\u0000\u0002ဈ\u0001\u0003ဇ\u0002\u0004\u001a", new Object[]{"zze", "zzf", n3.f8222a, "zzg", "zzh", "zzi"});
        }
        return (byte) 1;
    }

    public final int w() {
        return this.zzi.size();
    }

    public final String z() {
        return this.zzg;
    }
}
