package com.huawei.hms.hatool;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import java.io.File;
/* loaded from: classes4.dex */
public class q0 {
    public static boolean a(Context context) {
        return System.currentTimeMillis() - g0.a(context, "Privacy_MY", "flashKeyTime", -1L) > 43200000;
    }

    public static boolean a(Context context, String str) {
        if (context == null) {
            return true;
        }
        if (Build.VERSION.SDK_INT < 23) {
            if (context.getPackageManager().checkPermission(str, context.getPackageName()) != 0) {
                y.f("hmsSdk", "not have read phone permission!");
                return true;
            }
            return false;
        } else if (context.checkSelfPermission(str) != 0) {
            y.f("hmsSdk", "not have read phone permission!");
            return true;
        } else {
            return false;
        }
    }

    public static boolean a(Context context, String str, int i9) {
        String str2 = g0.c(context, str) + ".xml";
        long length = new File(context.getFilesDir(), "../shared_prefs/" + str2).length();
        if (length > i9) {
            y.c("hmsSdk", String.format("reach local file limited size - file len: %d limitedSize: %d", Long.valueOf(length), Integer.valueOf(i9)));
            return true;
        }
        return false;
    }

    public static boolean a(String str, long j10, long j11) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        try {
            return j10 - Long.parseLong(str) > j11;
        } catch (NumberFormatException unused) {
            y.f("hmsSdk", "isTimeExpired(): Data type conversion error : number format !");
            return true;
        }
    }
}
