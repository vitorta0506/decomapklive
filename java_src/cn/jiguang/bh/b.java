package cn.jiguang.bh;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import cn.jiguang.f.g;
import cn.jiguang.internal.JConstants;
import java.io.File;
import java.util.UUID;
import org.light.utils.IOUtils;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static int f2507a = 1;

    public static String a(Context context) {
        String str = (String) cn.jiguang.g.b.a(context, cn.jiguang.g.a.a());
        if (g.h(str)) {
            f2507a = 3;
            return str;
        }
        String b10 = b(context, str);
        if (g.h(b10)) {
            f2507a = 1;
            d(context, b10);
            cn.jiguang.g.b.a(context, cn.jiguang.g.a.a().a((cn.jiguang.g.a<String>) b10));
            return b10;
        }
        String b11 = b(context);
        if (g.h(b11)) {
            f2507a = 2;
            c(context, b11);
            cn.jiguang.g.b.a(context, cn.jiguang.g.a.a().a((cn.jiguang.g.a<String>) b11));
            return b11;
        }
        String e10 = Build.VERSION.SDK_INT < 23 ? cn.jiguang.f.a.e(context, b11) : "";
        String i9 = cn.jiguang.f.a.i(context);
        String g10 = cn.jiguang.f.a.g(context, "");
        String uuid = UUID.randomUUID().toString();
        String d10 = g.d(e10 + i9 + g10 + uuid);
        if (!TextUtils.isEmpty(d10)) {
            uuid = d10;
        }
        cn.jiguang.g.b.a(context, cn.jiguang.g.a.a().a((cn.jiguang.g.a<String>) uuid));
        f2507a = 0;
        c(context, uuid);
        d(context, uuid);
        return uuid;
    }

    public static void a(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        c(context, str);
        d(context, str);
        cn.jiguang.g.b.a(context, cn.jiguang.g.a.a().a((cn.jiguang.g.a<String>) str));
    }

    private static String b(Context context) {
        if (!JConstants.isAndroidQ(context, true, "do not get deviceId from SD") && cn.jiguang.f.a.c(context, "android.permission.READ_EXTERNAL_STORAGE")) {
            String b10 = cn.jiguang.f.a.b();
            if (TextUtils.isEmpty(b10)) {
                cn.jiguang.as.d.i("DeviceIdUtils", "can't get sdcard data path");
            } else {
                String d10 = cn.jiguang.f.c.d(new File(b10 + ".push_deviceid"));
                if (d10 != null) {
                    int indexOf = d10.indexOf(IOUtils.LINE_SEPARATOR_UNIX);
                    return indexOf < 0 ? d10.trim() : d10.substring(0, indexOf).trim();
                }
            }
        }
        return null;
    }

    private static String b(Context context, String str) {
        return str;
    }

    private static String c(Context context, String str) {
        return null;
    }

    private static String d(Context context, String str) {
        if (JConstants.isAndroidQ(context, true, "not write deviceId to SD")) {
            return str;
        }
        if (cn.jiguang.f.a.c(context, "android.permission.WRITE_EXTERNAL_STORAGE")) {
            try {
                String b10 = cn.jiguang.f.a.b();
                if (TextUtils.isEmpty(b10)) {
                    cn.jiguang.as.d.i("DeviceIdUtils", "can't get sdcard data path");
                    return null;
                }
                cn.jiguang.f.c.b(new File(b10 + ".push_deviceid"), str);
                return str;
            } catch (Throwable unused) {
                return null;
            }
        }
        return null;
    }
}
