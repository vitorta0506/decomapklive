package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.mipush.sdk.l0;
import com.xiaomi.push.q3;
/* loaded from: classes5.dex */
public class s {
    public static a a(Context context, c cVar) {
        return b(context, cVar);
    }

    private static a b(Context context, c cVar) {
        l0.a b10 = l0.b(cVar);
        if (b10 == null || TextUtils.isEmpty(b10.f36256a) || TextUtils.isEmpty(b10.f36257b)) {
            return null;
        }
        return (a) q3.g(b10.f36256a, b10.f36257b, context);
    }
}
