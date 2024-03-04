package com.huawei.hms.hatool;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.Map;
/* loaded from: classes4.dex */
public class g0 {
    public static long a(Context context, String str, String str2, long j10) {
        if (context == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            y.f("hmsSdk", "context is null or spName empty or spkey is empty");
            return j10;
        }
        SharedPreferences b10 = b(context, str);
        return b10 != null ? b10.getLong(str2, j10) : j10;
    }

    public static String a(Context context, String str, String str2, String str3) {
        if (context == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            y.f("hmsSdk", "context is null or spName empty or spkey is empty");
            return str3;
        }
        SharedPreferences b10 = b(context, str);
        return b10 != null ? b10.getString(str2, str3) : str3;
    }

    public static Map<String, ?> a(Context context, String str) {
        return b(context, str).getAll();
    }

    public static void a(Context context, String str, String... strArr) {
        String str2;
        if (context == null || TextUtils.isEmpty(str)) {
            str2 = "clearData(): parameter error.context,spname";
        } else if (strArr != null) {
            SharedPreferences b10 = b(context, str);
            if (b10 != null) {
                SharedPreferences.Editor edit = b10.edit();
                if (strArr.length == 0) {
                    edit.clear();
                    edit.commit();
                    return;
                }
                for (String str3 : strArr) {
                    if (b10.contains(str3)) {
                        edit.remove(str3);
                        edit.commit();
                    }
                }
                return;
            }
            return;
        } else {
            str2 = "clearData(): No data need to be deleted,keys is null";
        }
        y.f("hmsSdk", str2);
    }

    public static SharedPreferences b(Context context, String str) {
        return context.getSharedPreferences(c(context, str), 0);
    }

    public static void b(Context context, String str, String str2, long j10) {
        if (context == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            y.f("hmsSdk", "context is null or spName empty or spkey is empty");
            return;
        }
        SharedPreferences b10 = b(context, str);
        if (b10 != null) {
            SharedPreferences.Editor edit = b10.edit();
            edit.putLong(str2, j10);
            edit.commit();
        }
    }

    public static void b(Context context, String str, String str2, String str3) {
        if (context == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            y.e("hmsSdk", "context is null or spName empty or spkey is empty");
            return;
        }
        SharedPreferences b10 = b(context, str);
        if (b10 != null) {
            SharedPreferences.Editor edit = b10.edit();
            edit.putString(str2, str3);
            edit.commit();
        }
    }

    public static String c(Context context, String str) {
        String packageName = context.getPackageName();
        String n9 = c.n("_hms_config_tag", "oper");
        if (TextUtils.isEmpty(n9)) {
            return "hms_" + str + "_" + packageName;
        }
        return "hms_" + str + "_" + packageName + "_" + n9;
    }
}
