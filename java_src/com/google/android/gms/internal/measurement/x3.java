package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes2.dex */
public final class x3 extends x8 implements aa {
    private static final x3 zza;
    private int zze;
    private long zzf;
    private int zzh;
    private boolean zzm;
    private String zzg = "";
    private d9 zzi = x8.n();
    private d9 zzj = x8.n();
    private d9 zzk = x8.n();
    private String zzl = "";
    private d9 zzn = x8.n();
    private d9 zzo = x8.n();
    private String zzp = "";

    static {
        x3 x3Var = new x3();
        zza = x3Var;
        x8.r(x3.class, x3Var);
    }

    private x3() {
    }

    public static w3 A() {
        return (w3) zza.s();
    }

    public static x3 C() {
        return zza;
    }

    public static /* synthetic */ void J(x3 x3Var, int i9, v3 v3Var) {
        v3Var.getClass();
        d9 d9Var = x3Var.zzj;
        if (!d9Var.E()) {
            x3Var.zzj = x8.o(d9Var);
        }
        x3Var.zzj.set(i9, v3Var);
    }

    public final String D() {
        return this.zzg;
    }

    public final String E() {
        return this.zzp;
    }

    public final List F() {
        return this.zzk;
    }

    public final List G() {
        return this.zzo;
    }

    public final List H() {
        return this.zzn;
    }

    public final List I() {
        return this.zzi;
    }

    public final boolean L() {
        return this.zzm;
    }

    public final boolean M() {
        return (this.zze & 2) != 0;
    }

    public final boolean N() {
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
                    return new w3(null);
                }
                return new x3();
            }
            return x8.q(zza, "\u0001\u000b\u0000\u0001\u0001\u000b\u000b\u0000\u0005\u0000\u0001ဂ\u0000\u0002ဈ\u0001\u0003င\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007ဈ\u0003\bဇ\u0004\t\u001b\n\u001b\u000bဈ\u0005", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", b4.class, "zzj", v3.class, "zzk", z2.class, "zzl", "zzm", "zzn", m5.class, "zzo", t3.class, "zzp"});
        }
        return (byte) 1;
    }

    public final int w() {
        return this.zzn.size();
    }

    public final int x() {
        return this.zzj.size();
    }

    public final long y() {
        return this.zzf;
    }

    public final v3 z(int i9) {
        return (v3) this.zzj.get(i9);
    }
}
