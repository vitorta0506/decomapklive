package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes2.dex */
public final class r5 extends x8 implements aa {
    private static final r5 zza;
    private int zze;
    private int zzf;
    private d9 zzg = x8.n();
    private String zzh = "";
    private String zzi = "";
    private boolean zzj;
    private double zzk;

    static {
        r5 r5Var = new r5();
        zza = r5Var;
        x8.r(r5.class, r5Var);
    }

    private r5() {
    }

    public final List A() {
        return this.zzg;
    }

    public final boolean B() {
        return this.zzj;
    }

    public final boolean C() {
        return (this.zze & 8) != 0;
    }

    public final boolean D() {
        return (this.zze & 16) != 0;
    }

    public final boolean E() {
        return (this.zze & 4) != 0;
    }

    public final int F() {
        int a10 = q5.a(this.zzf);
        if (a10 == 0) {
            return 1;
        }
        return a10;
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
                    return new n5(null);
                }
                return new r5();
            }
            return x8.q(zza, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001ဌ\u0000\u0002\u001b\u0003ဈ\u0001\u0004ဈ\u0002\u0005ဇ\u0003\u0006က\u0004", new Object[]{"zze", "zzf", p5.f8255a, "zzg", r5.class, "zzh", "zzi", "zzj", "zzk"});
        }
        return (byte) 1;
    }

    public final double w() {
        return this.zzk;
    }

    public final String y() {
        return this.zzh;
    }

    public final String z() {
        return this.zzi;
    }
}
