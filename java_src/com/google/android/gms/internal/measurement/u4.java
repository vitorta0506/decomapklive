package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes2.dex */
public final class u4 extends x8 implements aa {
    private static final u4 zza;
    private d9 zze = x8.n();

    static {
        u4 u4Var = new u4();
        zza = u4Var;
        x8.r(u4.class, u4Var);
    }

    private u4() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void A(u4 u4Var, w4 w4Var) {
        w4Var.getClass();
        d9 d9Var = u4Var.zze;
        if (!d9Var.E()) {
            u4Var.zze = x8.o(d9Var);
        }
        u4Var.zze.add(w4Var);
    }

    public static s4 w() {
        return (s4) zza.s();
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
                    return new s4(null);
                }
                return new u4();
            }
            return x8.q(zza, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zze", w4.class});
        }
        return (byte) 1;
    }

    public final w4 y(int i9) {
        return (w4) this.zze.get(0);
    }

    public final List z() {
        return this.zze;
    }
}
