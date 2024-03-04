package cn.jiguang.be;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import cn.jiguang.f.g;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static List<String> f2475a;

    static {
        ArrayList arrayList = new ArrayList();
        f2475a = arrayList;
        arrayList.add("358673013795895");
        f2475a.add("004999010640000");
        f2475a.add("00000000000000");
        f2475a.add("000000000000000");
    }

    private static String a() {
        String b10 = cn.jiguang.f.a.b();
        if (b10 == null) {
            return null;
        }
        return b10 + ".push_udid";
    }

    public static String a(Context context) {
        String str = (String) cn.jiguang.g.b.a(context, cn.jiguang.g.a.D());
        if (!TextUtils.isEmpty(str)) {
            str = new String(Base64.decode(str, 2));
        }
        if (a(str)) {
            return str;
        }
        String b10 = b(context);
        if (!TextUtils.isEmpty(b10)) {
            cn.jiguang.g.b.a(context, cn.jiguang.g.a.D().a((cn.jiguang.g.a<String>) Base64.encodeToString(b10.getBytes(), 2)));
        }
        return b10;
    }

    private static boolean a(String str) {
        if (g.h(str) && str.length() >= 10) {
            for (String str2 : f2475a) {
                if (str.startsWith(str2)) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    private static String b(Context context) {
        try {
            String str = a.a(context).f2466p;
            if (a(str)) {
                return str;
            }
            String str2 = a.a(context).f2459i;
            if (!a(str2) || "9774d56d682e549c".equals(str2.toLowerCase(Locale.getDefault()))) {
                String c10 = c(context);
                return a(c10) ? c10 : "";
            }
            return str2;
        } catch (Exception e10) {
            cn.jiguang.as.d.c("UDIDUtils", "", e10);
            String d10 = d(context);
            return a(d10) ? d10 : "";
        }
    }

    private static String c(Context context) {
        String j10 = cn.jiguang.d.a.l(context) ? cn.jiguang.f.a.j(context) : "";
        if (a(j10)) {
            return j10;
        }
        String d10 = d(context);
        return d10 == null ? " " : d10;
    }

    private static String d(Context context) {
        cn.jiguang.as.d.c("UDIDUtils", "Action:getSavedUuid");
        String str = (String) cn.jiguang.g.b.b(context, cn.jiguang.g.a.S());
        if (g.a(str)) {
            if (cn.jiguang.f.a.a()) {
                String str2 = (String) cn.jiguang.g.b.a(context, cn.jiguang.g.a.E());
                return TextUtils.isEmpty(str2) ? (Build.VERSION.SDK_INT >= 23 && !(cn.jiguang.f.a.c(context, "android.permission.WRITE_EXTERNAL_STORAGE") && cn.jiguang.f.a.c(context, "android.permission.READ_EXTERNAL_STORAGE"))) ? f(context) : e(context) : str2;
            }
            return f(context);
        }
        return str;
    }

    private static String e(Context context) {
        String a10 = a();
        File file = !g.a(a10) ? new File(a10) : null;
        String d10 = cn.jiguang.f.c.d(file);
        if (!TextUtils.isEmpty(d10)) {
            cn.jiguang.g.b.a(context, cn.jiguang.g.a.E().a((cn.jiguang.g.a<String>) d10));
            cn.jiguang.as.d.e("UDIDUtils", "Got sdcard file saved udid - " + d10);
            return d10;
        }
        String j10 = g.j(UUID.nameUUIDFromBytes((System.currentTimeMillis() + "").getBytes()).toString());
        cn.jiguang.g.b.a(context, cn.jiguang.g.a.E().a((cn.jiguang.g.a<String>) j10));
        cn.jiguang.f.c.b(file, j10);
        return j10;
    }

    private static String f(Context context) {
        cn.jiguang.g.a<String> S = cn.jiguang.g.a.S();
        String str = (String) cn.jiguang.g.b.b(context, S);
        if (str == null) {
            String uuid = UUID.randomUUID().toString();
            cn.jiguang.g.b.a(context, S.a((cn.jiguang.g.a<String>) uuid));
            return uuid;
        }
        return str;
    }
}
