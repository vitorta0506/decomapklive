package com.google.android.gms.internal.measurement;

import java.util.Comparator;
import kotlin.UByte;
/* loaded from: classes2.dex */
final class q7 implements Comparator {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        zzjd zzjdVar = (zzjd) obj;
        zzjd zzjdVar2 = (zzjd) obj2;
        p7 p7Var = new p7(zzjdVar);
        p7 p7Var2 = new p7(zzjdVar2);
        while (p7Var.hasNext() && p7Var2.hasNext()) {
            int compareTo = Integer.valueOf(p7Var.zza() & UByte.MAX_VALUE).compareTo(Integer.valueOf(p7Var2.zza() & UByte.MAX_VALUE));
            if (compareTo != 0) {
                return compareTo;
            }
        }
        return Integer.valueOf(zzjdVar.zzd()).compareTo(Integer.valueOf(zzjdVar2.zzd()));
    }
}
