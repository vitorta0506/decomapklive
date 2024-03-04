package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
/* loaded from: classes2.dex */
final class f implements DynamiteModule.a {
    @Override // com.google.android.gms.dynamite.DynamiteModule.a
    public final DynamiteModule.a.b a(Context context, String str, DynamiteModule.a.InterfaceC0088a interfaceC0088a) throws DynamiteModule.LoadingException {
        DynamiteModule.a.b bVar = new DynamiteModule.a.b();
        int a10 = interfaceC0088a.a(context, str, true);
        bVar.f7872b = a10;
        if (a10 != 0) {
            bVar.f7873c = 1;
        } else {
            int b10 = interfaceC0088a.b(context, str);
            bVar.f7871a = b10;
            if (b10 != 0) {
                bVar.f7873c = -1;
            }
        }
        return bVar;
    }
}
