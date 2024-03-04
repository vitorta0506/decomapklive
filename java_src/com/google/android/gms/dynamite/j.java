package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
/* loaded from: classes2.dex */
final class j implements DynamiteModule.a {
    @Override // com.google.android.gms.dynamite.DynamiteModule.a
    public final DynamiteModule.a.b a(Context context, String str, DynamiteModule.a.InterfaceC0088a interfaceC0088a) throws DynamiteModule.LoadingException {
        int a10;
        DynamiteModule.a.b bVar = new DynamiteModule.a.b();
        int b10 = interfaceC0088a.b(context, str);
        bVar.f7871a = b10;
        int i9 = 0;
        if (b10 != 0) {
            a10 = interfaceC0088a.a(context, str, false);
            bVar.f7872b = a10;
        } else {
            a10 = interfaceC0088a.a(context, str, true);
            bVar.f7872b = a10;
        }
        int i10 = bVar.f7871a;
        if (i10 != 0) {
            i9 = i10;
        } else if (a10 == 0) {
            bVar.f7873c = 0;
            return bVar;
        }
        if (i9 >= a10) {
            bVar.f7873c = -1;
        } else {
            bVar.f7873c = 1;
        }
        return bVar;
    }
}
