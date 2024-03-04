package com.xiaomi.push.service;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Base64;
import com.xiaomi.push.dq;
import com.xiaomi.push.dv;
import com.xiaomi.push.ej;
/* loaded from: classes5.dex */
public class v1 {
    public static dv a(dq dqVar) {
        byte[] m1461a = dqVar.m1461a();
        dv dvVar = new dv();
        try {
            com.xiaomi.push.h2.c(dvVar, m1461a);
            return dvVar;
        } catch (ej unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        String stringExtra = intent.getStringExtra("ext_fcm_container_buffer");
        String stringExtra2 = intent.getStringExtra("mipush_app_package");
        if (TextUtils.isEmpty(stringExtra) || TextUtils.isEmpty(stringExtra2)) {
            return;
        }
        try {
            byte[] d10 = d(Base64.decode(stringExtra, 2), context.getSharedPreferences("mipush_apps_scrt", 0).getString(stringExtra2, null));
            if (d10 != null) {
                i.r(context, e2.d(d10), d10);
            } else {
                tf.c.l("notify fcm notification error ：dencrypt failed");
            }
        } catch (Throwable th2) {
            tf.c.n("notify fcm notification error ", th2);
        }
    }

    public static void c(Context context, String str, String str2) {
        if (context == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        context.getSharedPreferences("mipush_apps_scrt", 0).edit().putString(str, str2).apply();
    }

    public static byte[] d(byte[] bArr, String str) {
        if (TextUtils.isEmpty(str)) {
            tf.c.l("secret is empty, return null");
            return null;
        }
        try {
            return sf.a.b(com.xiaomi.push.b.b(str), bArr);
        } catch (Exception e10) {
            tf.c.n("dencryption error. ", e10);
            return null;
        }
    }
}
