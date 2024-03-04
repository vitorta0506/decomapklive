package com.google.android.gms.internal.recaptcha;

import java.util.Collections;
import java.util.Map;
/* loaded from: classes2.dex */
public final class v1 extends dg<v1, s1> implements hh {
    private static final v1 zzb;
    private static volatile nh<v1> zze;
    private zzsh<String, y1> zzf = zzsh.zza();
    private zzsh<String, a2> zzg = zzsh.zza();

    static {
        v1 v1Var = new v1();
        zzb = v1Var;
        dg.l(v1.class, v1Var);
    }

    private v1() {
    }

    public static v1 u() {
        return zzb;
    }

    public static /* synthetic */ Map v(v1 v1Var) {
        if (!v1Var.zzf.zze()) {
            v1Var.zzf = v1Var.zzf.zzb();
        }
        return v1Var.zzf;
    }

    public static /* synthetic */ Map w(v1 v1Var) {
        if (!v1Var.zzg.zze()) {
            v1Var.zzg = v1Var.zzg.zzb();
        }
        return v1Var.zzg;
    }

    @Override // com.google.android.gms.internal.recaptcha.dg
    public final Object m(int i9, Object obj, Object obj2) {
        int i10 = i9 - 1;
        if (i10 != 0) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        if (i10 != 5) {
                            if (i10 != 6) {
                                return null;
                            }
                            nh<v1> nhVar = zze;
                            if (nhVar == null) {
                                synchronized (v1.class) {
                                    nhVar = zze;
                                    if (nhVar == null) {
                                        nhVar = new ag<>(zzb);
                                        zze = nhVar;
                                    }
                                }
                            }
                            return nhVar;
                        }
                        return zzb;
                    }
                    return new s1(null);
                }
                return new v1();
            }
            return dg.k(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0002\u0000\u0000\u00012\u00022", new Object[]{"zzf", u1.f9079a, "zzg", t1.f9053a});
        }
        return (byte) 1;
    }

    public final Map<String, a2> x() {
        return Collections.unmodifiableMap(this.zzg);
    }

    public final Map<String, y1> y() {
        return Collections.unmodifiableMap(this.zzf);
    }

    public final boolean z(String str) {
        str.getClass();
        return this.zzf.containsKey(str);
    }
}
