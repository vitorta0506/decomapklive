package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
/* loaded from: classes2.dex */
final class k implements DynamiteModule.a {
    @Override // com.google.android.gms.dynamite.DynamiteModule.a
    public final DynamiteModule.a.b a(Context context, String str, DynamiteModule.a.InterfaceC0088a interfaceC0088a) throws DynamiteModule.LoadingException {
        DynamiteModule.a.b bVar = new DynamiteModule.a.b();
        bVar.f7871a = interfaceC0088a.b(context, str);
        int a10 = interfaceC0088a.a(context, str, true);
        bVar.f7872b = a10;
        int i9 = bVar.f7871a;
        if (i9 == 0) {
            if (a10 == 0) {
                bVar.f7873c = 0;
                return bVar;
            }
            i9 = 0;
        }
        if (a10 >= i9) {
            bVar.f7873c = 1;
        } else {
            bVar.f7873c = -1;
        }
        return bVar;
    }
}
