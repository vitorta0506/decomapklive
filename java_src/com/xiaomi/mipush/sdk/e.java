package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.text.TextUtils;
/* loaded from: classes5.dex */
public class e {
    public static void a(Context context) {
        context.getSharedPreferences("mipush_extra", 0).edit().putBoolean("is_xmsf_sup_decrypt", ((long) sf.e.k(context)) >= 50002000).apply();
    }

    public static void b(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        context.getSharedPreferences("mipush_extra", 0).edit().putString("fcm_sender_id", str).apply();
    }
}
