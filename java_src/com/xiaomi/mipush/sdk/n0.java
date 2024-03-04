package com.xiaomi.mipush.sdk;

import android.content.Context;
import com.xiaomi.push.q3;
/* loaded from: classes5.dex */
public class n0 {

    /* renamed from: a  reason: collision with root package name */
    private static int f36277a = -1;

    public static y a(Context context) {
        return y.OTHER;
    }

    public static boolean b(Context context) {
        return c(context, "com.google.android.gms.common.GoogleApiAvailability") || c(context, "com.google.android.gms.common.GoogleApiAvailabilityLight");
    }

    private static boolean c(Context context, String str) {
        Object e10 = q3.e(q3.g(str, "getInstance", new Object[0]), "isGooglePlayServicesAvailable", context);
        Object f10 = q3.f("com.google.android.gms.common.ConnectionResult", "SUCCESS");
        if (f10 == null || !(f10 instanceof Integer)) {
            tf.c.t("google service is not avaliable");
            f36277a = 0;
            return false;
        }
        int intValue = ((Integer) Integer.class.cast(f10)).intValue();
        if (e10 != null) {
            if (e10 instanceof Integer) {
                f36277a = ((Integer) Integer.class.cast(e10)).intValue() == intValue ? 1 : 0;
            } else {
                f36277a = 0;
                tf.c.t("google service is not avaliable");
            }
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("is google service can be used");
        sb2.append(f36277a > 0);
        tf.c.t(sb2.toString());
        return f36277a > 0;
    }

    public static boolean d(Context context) {
        boolean z10 = false;
        Object g10 = q3.g("com.xiaomi.assemble.control.COSPushManager", "isSupportPush", context);
        if (g10 != null && (g10 instanceof Boolean)) {
            z10 = ((Boolean) Boolean.class.cast(g10)).booleanValue();
        }
        tf.c.t("color os push  is avaliable ? :" + z10);
        return z10;
    }

    public static boolean e(Context context) {
        boolean z10 = false;
        Object g10 = q3.g("com.xiaomi.assemble.control.FTOSPushManager", "isSupportPush", context);
        if (g10 != null && (g10 instanceof Boolean)) {
            z10 = ((Boolean) Boolean.class.cast(g10)).booleanValue();
        }
        tf.c.t("fun touch os push  is avaliable ? :" + z10);
        return z10;
    }
}
