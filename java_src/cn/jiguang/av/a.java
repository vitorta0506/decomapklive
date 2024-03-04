package cn.jiguang.av;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import cn.jiguang.api.JCoreManager;
import cn.jiguang.as.d;
import cn.jiguang.az.c;
import cn.jiguang.az.g;
import cn.jiguang.az.h;
import cn.jiguang.internal.JConstants;
import com.huawei.hms.framework.common.hianalytics.HianalyticsBaseData;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f2129a;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v4, types: [int] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r4v7, types: [java.lang.StringBuilder] */
    private static synchronized void a(Context context) {
        synchronized (a.class) {
            if (f2129a) {
                return;
            }
            if (context == null) {
                return;
            }
            d.c("JCoreActionImpl", "init jcore impl ,version:" + cn.jiguang.a.a.f1808b + ",local version:" + JConstants.SDK_VERSION_INT);
            f2129a = true;
            d.c("JCoreActionImpl", "hb:" + h.a().f() + ",google:true,internal:" + JConstants.INTERNAL_USE);
            ?? r22 = cn.jiguang.a.a.a();
            if (cn.jiguang.a.a.f1809c != JConstants.SDK_VERSION_INT) {
                r22 = 2;
            }
            d.c("JCoreActionImpl", "custom:1,dynamic:" + r22);
            JCoreManager.onEvent(context, JConstants.SDK_TYPE, 72, true, null, null, "core", 1, Integer.valueOf((int) r22), Integer.valueOf(cn.jiguang.a.a.f1809c));
            c.b(context);
            c.a(context);
        }
    }

    public static void a(Context context, String str, Bundle bundle) {
        String string;
        a(context);
        if (TextUtils.isEmpty(str)) {
            d.h("JCoreActionImpl", "handleAction Failed,action is empty");
            return;
        }
        d.c("JCoreActionImpl", "handleAction action:" + str);
        String string2 = bundle != null ? bundle.getString(HianalyticsBaseData.SDK_TYPE) : "";
        if (str.equals("a1")) {
            if (bundle != null) {
                try {
                    string = bundle.getString("report_data");
                } catch (Throwable th2) {
                    d.g("JCoreActionImpl", "report failed:" + th2.getMessage());
                    return;
                }
            } else {
                string = null;
            }
            b.a(context, (Object) string);
        } else if (str.startsWith("tcp_")) {
            h.a().a(context, str, bundle);
        } else if (str.equals("a2")) {
            g.a().a(context, true);
        } else if (str.equals("a3")) {
            cn.jiguang.az.b.a().a(context, string2, bundle);
        } else if (str.equals("a4")) {
            b.a(context, bundle);
        }
    }
}
