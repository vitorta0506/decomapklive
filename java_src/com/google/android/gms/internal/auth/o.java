package com.google.android.gms.internal.auth;

import java.util.Comparator;
import kotlin.UByte;
/* loaded from: classes2.dex */
final class o implements Comparator {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        zzee zzeeVar = (zzee) obj;
        zzee zzeeVar2 = (zzee) obj2;
        n nVar = new n(zzeeVar);
        n nVar2 = new n(zzeeVar2);
        while (nVar.hasNext() && nVar2.hasNext()) {
            int compareTo = Integer.valueOf(nVar.zza() & UByte.MAX_VALUE).compareTo(Integer.valueOf(nVar2.zza() & UByte.MAX_VALUE));
            if (compareTo != 0) {
                return compareTo;
            }
        }
        return Integer.valueOf(zzeeVar.zzd()).compareTo(Integer.valueOf(zzeeVar2.zzd()));
    }
}
