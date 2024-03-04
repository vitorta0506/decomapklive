package com.meizu.cloud.pushsdk.c.e;

import com.meizu.cloud.pushsdk.c.c.e;
import com.meizu.cloud.pushsdk.c.c.i;
import com.meizu.cloud.pushsdk.c.c.k;
import java.io.File;
import java.io.IOException;
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static String f28463a;

    public static k a(com.meizu.cloud.pushsdk.c.a.b bVar) throws com.meizu.cloud.pushsdk.c.b.a {
        try {
            i.a a10 = new i.a().a(bVar.e());
            a(a10, bVar);
            int d10 = bVar.d();
            if (d10 == 0) {
                a10 = a10.a();
            } else if (d10 == 1) {
                a10 = a10.a(bVar.m());
            } else if (d10 == 2) {
                a10 = a10.c(bVar.m());
            } else if (d10 == 3) {
                a10 = a10.b(bVar.m());
            } else if (d10 == 4) {
                a10 = a10.b();
            } else if (d10 == 5) {
                a10 = a10.d(bVar.m());
            }
            i c10 = a10.c();
            bVar.a(new e());
            return bVar.l().a(c10);
        } catch (IOException e10) {
            throw new com.meizu.cloud.pushsdk.c.b.a(e10);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0020  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(com.meizu.cloud.pushsdk.c.c.i.a r3, com.meizu.cloud.pushsdk.c.a.b r4) {
        /*
            java.lang.String r0 = r4.h()
            java.lang.String r1 = "User-Agent"
            if (r0 == 0) goto L10
            java.lang.String r0 = r4.h()
        Lc:
            r3.a(r1, r0)
            goto L1a
        L10:
            java.lang.String r0 = com.meizu.cloud.pushsdk.c.e.a.f28463a
            if (r0 == 0) goto L1a
            r4.a(r0)
            java.lang.String r0 = com.meizu.cloud.pushsdk.c.e.a.f28463a
            goto Lc
        L1a:
            com.meizu.cloud.pushsdk.c.c.c r0 = r4.o()
            if (r0 == 0) goto L3a
            r3.a(r0)
            java.lang.String r2 = r4.h()
            if (r2 == 0) goto L3a
            java.util.Set r0 = r0.b()
            boolean r0 = r0.contains(r1)
            if (r0 != 0) goto L3a
            java.lang.String r4 = r4.h()
            r3.a(r1, r4)
        L3a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meizu.cloud.pushsdk.c.e.a.a(com.meizu.cloud.pushsdk.c.c.i$a, com.meizu.cloud.pushsdk.c.a.b):void");
    }

    public static k b(com.meizu.cloud.pushsdk.c.a.b bVar) throws com.meizu.cloud.pushsdk.c.b.a {
        try {
            i.a a10 = new i.a().a(bVar.e());
            a(a10, bVar);
            i c10 = a10.a().c();
            bVar.a(new e());
            k a11 = bVar.l().a(c10);
            com.meizu.cloud.pushsdk.c.h.b.a(a11, bVar.j(), bVar.k());
            return a11;
        } catch (IOException e10) {
            try {
                File file = new File(bVar.j() + File.separator + bVar.k());
                if (file.exists()) {
                    file.delete();
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            throw new com.meizu.cloud.pushsdk.c.b.a(e10);
        }
    }

    public static k c(com.meizu.cloud.pushsdk.c.a.b bVar) throws com.meizu.cloud.pushsdk.c.b.a {
        try {
            i.a a10 = new i.a().a(bVar.e());
            a(a10, bVar);
            i c10 = a10.a(new b(bVar.n(), bVar.i())).c();
            bVar.a(new e());
            return bVar.l().a(c10);
        } catch (IOException e10) {
            throw new com.meizu.cloud.pushsdk.c.b.a(e10);
        }
    }
}
