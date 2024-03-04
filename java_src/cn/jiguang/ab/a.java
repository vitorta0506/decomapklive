package cn.jiguang.ab;

import android.content.ContentProviderClient;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import cn.jiguang.o.d;
/* loaded from: classes.dex */
public class a {
    public static String a(Context context, Uri uri) {
        try {
            String g10 = d.g("Oi3ZFT8+schQHSyFZbsdUg==");
            if (TextUtils.isEmpty(g10)) {
                return "";
            }
            int i9 = Build.VERSION.SDK_INT;
            ContentProviderClient acquireUnstableContentProviderClient = context.getContentResolver().acquireUnstableContentProviderClient(uri);
            Bundle call = acquireUnstableContentProviderClient.call(g10, null, null);
            if (i9 >= 24) {
                acquireUnstableContentProviderClient.close();
            } else {
                acquireUnstableContentProviderClient.release();
            }
            if (call.getInt("code", -1) == 0) {
                String string = call.getString("id");
                cn.jiguang.al.a.a("NubiaIdManager", "succeed:" + string);
                return string;
            }
            return call.getString("message");
        } catch (Exception e10) {
            cn.jiguang.al.a.d("NubiaIdManager", "get ids-o err:" + e10.getMessage());
            return null;
        }
    }

    public static String a(Context context, String str, Uri uri) {
        try {
            String g10 = d.g("cBEuCuv+AtdlTcgTe9OgSQ==");
            if (TextUtils.isEmpty(g10)) {
                return "";
            }
            int i9 = Build.VERSION.SDK_INT;
            ContentProviderClient acquireUnstableContentProviderClient = context.getContentResolver().acquireUnstableContentProviderClient(uri);
            Bundle call = acquireUnstableContentProviderClient.call(g10, str, null);
            if (i9 >= 24) {
                acquireUnstableContentProviderClient.close();
            } else {
                acquireUnstableContentProviderClient.release();
            }
            if (call.getInt("code", -1) == 0) {
                String string = call.getString("id");
                cn.jiguang.al.a.a("NubiaIdManager", "succeed:" + string);
                return string;
            }
            return call.getString("message");
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("NubiaIdManager", "get ids-aa err:" + th2.getMessage());
            return null;
        }
    }

    public static String b(Context context, String str, Uri uri) {
        try {
            String g10 = d.g("fIdCW1auJ/CZh7w78TbJVQ==");
            if (TextUtils.isEmpty(g10)) {
                return "";
            }
            int i9 = Build.VERSION.SDK_INT;
            ContentProviderClient acquireUnstableContentProviderClient = context.getContentResolver().acquireUnstableContentProviderClient(uri);
            Bundle call = acquireUnstableContentProviderClient.call(g10, str, null);
            if (i9 >= 24) {
                acquireUnstableContentProviderClient.close();
            } else {
                acquireUnstableContentProviderClient.release();
            }
            if (call.getInt("code", -1) == 0) {
                String string = call.getString("id");
                cn.jiguang.al.a.a("NubiaIdManager", "succeed:" + string);
                return string;
            }
            return call.getString("message");
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("NubiaIdManager", "get ids-va err:" + th2.getMessage());
            return null;
        }
    }
}
