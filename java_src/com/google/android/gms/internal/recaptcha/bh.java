package com.google.android.gms.internal.recaptcha;

import java.util.Map;
/* loaded from: classes2.dex */
final class bh {
    public static final int a(int i9, Object obj, Object obj2) {
        zzsh zzshVar = (zzsh) obj;
        ah ahVar = (ah) obj2;
        int i10 = 0;
        if (!zzshVar.isEmpty()) {
            for (Map.Entry entry : zzshVar.entrySet()) {
                i10 += ahVar.a(i9, entry.getKey(), entry.getValue());
            }
        }
        return i10;
    }

    public static final Object b(Object obj, Object obj2) {
        zzsh zzshVar = (zzsh) obj;
        zzsh zzshVar2 = (zzsh) obj2;
        if (!zzshVar2.isEmpty()) {
            if (!zzshVar.zze()) {
                zzshVar = zzshVar.zzb();
            }
            zzshVar.zzd(zzshVar2);
        }
        return zzshVar;
    }
}
