package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.xiaomi.push.dq;
import com.xiaomi.push.f3;
import com.xiaomi.push.q3;
import java.util.HashMap;
/* loaded from: classes5.dex */
public class i0 {

    /* renamed from: a  reason: collision with root package name */
    private static HashMap<String, String> f36238a = new HashMap<>();

    public static int a() {
        Integer num = (Integer) q3.f("com.xiaomi.assemble.control.AssembleConstants", "ASSEMBLE_VERSION_CODE");
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    static String b(Context context, c cVar) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("mipush_extra", 0);
        String d10 = d(cVar);
        if (TextUtils.isEmpty(d10)) {
            return null;
        }
        return sharedPreferences.getString(d10, "");
    }

    protected static synchronized String c(Context context, String str) {
        String str2;
        synchronized (i0.class) {
            str2 = f36238a.get(str);
            if (TextUtils.isEmpty(str2)) {
                str2 = "";
            }
        }
        return str2;
    }

    public static String d(c cVar) {
        int i9 = k0.f36248a[cVar.ordinal()];
        if (i9 != 1) {
            if (i9 != 2) {
                if (i9 != 3) {
                    if (i9 != 4) {
                        return null;
                    }
                    return "ftos_push_token";
                }
                return "cos_push_token";
            }
            return "fcm_push_token_v2";
        }
        return "hms_push_token";
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0058, code lost:
        if (r12 != 0) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.HashMap<java.lang.String, java.lang.String> e(android.content.Context r11, com.xiaomi.mipush.sdk.c r12) {
        /*
            Method dump skipped, instructions count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mipush.sdk.i0.e(android.content.Context, com.xiaomi.mipush.sdk.c):java.util.HashMap");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void f(Context context) {
        boolean z10 = false;
        SharedPreferences sharedPreferences = context.getSharedPreferences("mipush_extra", 0);
        String d10 = d(c.ASSEMBLE_PUSH_HUAWEI);
        String d11 = d(c.ASSEMBLE_PUSH_FCM);
        if (!TextUtils.isEmpty(sharedPreferences.getString(d10, "")) && TextUtils.isEmpty(sharedPreferences.getString(d11, ""))) {
            z10 = true;
        }
        if (z10) {
            w.h(context).p(2, d10);
        }
    }

    public static boolean g(Context context, c cVar) {
        l0.c(cVar);
        return true;
    }

    public static boolean h(c cVar) {
        return cVar == c.ASSEMBLE_PUSH_FTOS || cVar == c.ASSEMBLE_PUSH_FCM;
    }

    public static boolean i(dq dqVar, c cVar) {
        if (dqVar == null || dqVar.m1455a() == null || dqVar.m1455a().m1425a() == null) {
            return false;
        }
        return (cVar == c.ASSEMBLE_PUSH_FCM ? "FCM" : "").equalsIgnoreCase(dqVar.m1455a().m1425a().get("assemble_push_type"));
    }

    public static byte[] j(Context context, dq dqVar, c cVar) {
        if (i(dqVar, cVar)) {
            return com.xiaomi.push.f.c(b(context, cVar));
        }
        return null;
    }

    public static String k(c cVar) {
        return d(cVar) + "_version";
    }

    public static void l(Context context) {
        f0.e(context).b();
    }

    public static void m(Context context, c cVar, String str) {
        f3.b(context).g(new j0(str, context, cVar));
    }

    public static void n(Context context) {
        f0.e(context).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void p(Context context, c cVar, String str) {
        synchronized (i0.class) {
            String d10 = d(cVar);
            if (TextUtils.isEmpty(d10)) {
                tf.c.l("ASSEMBLE_PUSH : can not find the key of token used in sp file");
                return;
            }
            SharedPreferences.Editor edit = context.getSharedPreferences("mipush_extra", 0).edit();
            edit.putString(d10, str).putString("last_check_token", n.c(context).q());
            if (h(cVar)) {
                edit.putInt(k(cVar), a());
            }
            sf.h.a(edit);
            tf.c.l("ASSEMBLE_PUSH : update sp file success!  " + str);
        }
    }
}
