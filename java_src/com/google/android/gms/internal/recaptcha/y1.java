package com.google.android.gms.internal.recaptcha;

import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public final class y1 extends dg<y1, x1> implements hh {
    private static final jg<Integer, zzvj> zzb = new w1();
    private static final y1 zze;
    private static volatile nh<y1> zzf;
    private ji zzh;
    private xj zzk;
    private String zzg = "";
    private lg<String> zzi = dg.s();
    private ig zzj = dg.r();

    static {
        y1 y1Var = new y1();
        zze = y1Var;
        dg.l(y1.class, y1Var);
    }

    private y1() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void B(y1 y1Var, Iterable iterable) {
        lg<String> lgVar = y1Var.zzi;
        if (!lgVar.E()) {
            int size = lgVar.size();
            y1Var.zzi = lgVar.j(size == 0 ? 10 : size + size);
        }
        ge.g(iterable, y1Var.zzi);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void C(y1 y1Var, Iterable iterable) {
        ig igVar = y1Var.zzj;
        if (!igVar.E()) {
            int size = igVar.size();
            y1Var.zzj = igVar.r(size == 0 ? 10 : size + size);
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            y1Var.zzj.e(((zzvj) it.next()).zza());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void D(y1 y1Var, xj xjVar) {
        xjVar.getClass();
        y1Var.zzk = xjVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void E(y1 y1Var, String str) {
        str.getClass();
        y1Var.zzg = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void G(y1 y1Var, ji jiVar) {
        jiVar.getClass();
        y1Var.zzh = jiVar;
    }

    public static x1 t() {
        return zze.n();
    }

    public static y1 v() {
        return zze;
    }

    public final List<zzvj> A() {
        return new kg(this.zzj, zzb);
    }

    /* JADX INFO: Access modifiers changed from: protected */
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
                            nh<y1> nhVar = zzf;
                            if (nhVar == null) {
                                synchronized (y1.class) {
                                    nhVar = zzf;
                                    if (nhVar == null) {
                                        nhVar = new ag<>(zze);
                                        zzf = nhVar;
                                    }
                                }
                            }
                            return nhVar;
                        }
                        return zze;
                    }
                    return new x1(null);
                }
                return new y1();
            }
            return dg.k(zze, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0002\u0000\u0001Ȉ\u0002\t\u0003Ț\u0004,\u0005\t", new Object[]{"zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        return (byte) 1;
    }

    public final ji w() {
        ji jiVar = this.zzh;
        return jiVar == null ? ji.x() : jiVar;
    }

    public final xj x() {
        xj xjVar = this.zzk;
        return xjVar == null ? xj.z() : xjVar;
    }

    public final String y() {
        return this.zzg;
    }

    public final List<String> z() {
        return this.zzi;
    }
}
