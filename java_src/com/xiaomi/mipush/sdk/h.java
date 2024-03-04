package com.xiaomi.mipush.sdk;

import android.content.Context;
/* loaded from: classes5.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f36231a = false;

    /* renamed from: b  reason: collision with root package name */
    private static tf.a f36232b;

    /* JADX INFO: Access modifiers changed from: protected */
    public static tf.a a() {
        return f36232b;
    }

    private static boolean b(Context context) {
        try {
            String[] strArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions;
            if (strArr != null) {
                for (String str : strArr) {
                    if ("android.permission.WRITE_EXTERNAL_STORAGE".equals(str)) {
                        return true;
                    }
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static void c(Context context, tf.a aVar) {
        f36232b = aVar;
        d(context);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0013, code lost:
        if (b(r4) != false) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void d(android.content.Context r4) {
        /*
            tf.a r0 = com.xiaomi.mipush.sdk.h.f36232b
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L8
            r0 = 1
            goto L9
        L8:
            r0 = 0
        L9:
            boolean r3 = com.xiaomi.mipush.sdk.h.f36231a
            if (r3 == 0) goto Le
            goto L16
        Le:
            boolean r3 = b(r4)
            r2 = r0
            if (r3 == 0) goto L16
            goto L17
        L16:
            r1 = 0
        L17:
            com.xiaomi.push.s r0 = new com.xiaomi.push.s
            r3 = 0
            if (r2 == 0) goto L1f
            tf.a r2 = com.xiaomi.mipush.sdk.h.f36232b
            goto L20
        L1f:
            r2 = r3
        L20:
            if (r1 == 0) goto L26
            com.xiaomi.push.t r3 = com.xiaomi.push.t.b(r4)
        L26:
            r0.<init>(r2, r3)
            tf.c.p(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mipush.sdk.h.d(android.content.Context):void");
    }
}
