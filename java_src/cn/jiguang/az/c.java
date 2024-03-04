package cn.jiguang.az;

import android.content.Context;
import android.text.TextUtils;
/* loaded from: classes.dex */
public class c {
    public static boolean a(Context context) {
        String str = (String) cn.jiguang.g.b.a(context, cn.jiguang.g.a.C());
        String e10 = cn.jiguang.d.a.e(context);
        cn.jiguang.as.d.c("InitHelper", "appkey=" + e10 + " last=" + str);
        if (cn.jiguang.f.g.a(str) || "null".equals(str) || !str.equalsIgnoreCase(e10)) {
            cn.jiguang.g.b.a(context, cn.jiguang.g.a.C().a((cn.jiguang.g.a<String>) e10));
            cn.jiguang.as.d.d("InitHelper", "We found the appKey is changed or register appkey is empty. Will re-register.");
            cn.jiguang.av.b.a(context);
            return true;
        }
        return false;
    }

    public static void b(Context context) {
        String str = (String) cn.jiguang.g.b.a(context, cn.jiguang.g.a.w());
        if (TextUtils.isEmpty(str) || str.startsWith("1.")) {
            cn.jiguang.av.b.d(context);
        }
        if (TextUtils.isEmpty(str) || !"2.9.0".equals(str)) {
            cn.jiguang.g.b.a(context, cn.jiguang.g.a.w().a((cn.jiguang.g.a<String>) "2.9.0"));
        }
    }
}
