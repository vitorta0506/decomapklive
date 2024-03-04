package com.google.android.gms.internal.recaptcha;

import java.util.Comparator;
import kotlin.UByte;
/* loaded from: classes2.dex */
final class pe implements Comparator<zzpy> {
    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(zzpy zzpyVar, zzpy zzpyVar2) {
        zzpy zzpyVar3 = zzpyVar;
        zzpy zzpyVar4 = zzpyVar2;
        ne neVar = new ne(zzpyVar3);
        ne neVar2 = new ne(zzpyVar4);
        while (neVar.hasNext() && neVar2.hasNext()) {
            int a10 = oe.a(neVar.zza() & UByte.MAX_VALUE, neVar2.zza() & UByte.MAX_VALUE);
            if (a10 != 0) {
                return a10;
            }
        }
        return oe.a(zzpyVar3.zzd(), zzpyVar4.zzd());
    }
}
