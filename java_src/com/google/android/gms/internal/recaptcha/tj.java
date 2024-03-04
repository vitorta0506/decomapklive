package com.google.android.gms.internal.recaptcha;

import java.util.Map;
/* loaded from: classes2.dex */
public final class tj extends dg<tj, rj> implements hh {
    private static final tj zzb;
    private static volatile nh<tj> zze;
    private long zzh;
    private boolean zzl;
    private zj zzo;
    private zzsh<String, String> zzj = zzsh.zza();
    private zzsh<Integer, zzpy> zzm = zzsh.zza();
    private String zzf = "";
    private String zzg = "";
    private String zzi = "";
    private String zzk = "";
    private String zzn = "";

    static {
        tj tjVar = new tj();
        zzb = tjVar;
        dg.l(tj.class, tjVar);
    }

    private tj() {
    }

    public static /* synthetic */ void B(tj tjVar, String str) {
        str.getClass();
        tjVar.zzn = str;
    }

    public static /* synthetic */ void D(tj tjVar, String str) {
        str.getClass();
        tjVar.zzf = str;
    }

    public static /* synthetic */ void t(tj tjVar, String str) {
        str.getClass();
        tjVar.zzg = str;
    }

    public static rj v() {
        return zzb.n();
    }

    public static /* synthetic */ Map x(tj tjVar) {
        if (!tjVar.zzj.zze()) {
            tjVar.zzj = tjVar.zzj.zzb();
        }
        return tjVar.zzj;
    }

    public static /* synthetic */ Map y(tj tjVar) {
        if (!tjVar.zzm.zze()) {
            tjVar.zzm = tjVar.zzm.zzb();
        }
        return tjVar.zzm;
    }

    public static /* synthetic */ void z(tj tjVar, String str) {
        str.getClass();
        tjVar.zzk = str;
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
                            nh<tj> nhVar = zze;
                            if (nhVar == null) {
                                synchronized (tj.class) {
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
                    return new rj(null);
                }
                return new tj();
            }
            return dg.k(zzb, "\u0000\n\u0000\u0000\u0001\n\n\u0002\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\u0002\u0004Ȉ\u00052\u0006Ȉ\u0007\u0007\b2\tȈ\n\t", new Object[]{"zzf", "zzg", "zzh", "zzi", "zzj", qj.f9015a, "zzk", "zzl", "zzm", sj.f9049a, "zzn", "zzo"});
        }
        return (byte) 1;
    }
}
