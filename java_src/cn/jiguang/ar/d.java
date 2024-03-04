package cn.jiguang.ar;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ComponentInfo;
import android.os.Bundle;
import android.text.TextUtils;
import cn.jiguang.internal.JConstants;
import cn.jpush.android.service.JCommonService;
import java.util.List;
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f2071a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static volatile d f2072b;

    /* renamed from: c  reason: collision with root package name */
    private static String f2073c;

    /* renamed from: d  reason: collision with root package name */
    private static String f2074d;

    public static d a() {
        if (f2072b == null) {
            synchronized (f2071a) {
                if (f2072b == null) {
                    f2072b = new d();
                }
            }
        }
        return f2072b;
    }

    public static String a(Context context) {
        String str = f2074d;
        if (str != null) {
            return str;
        }
        String b10 = b(context);
        if (TextUtils.isEmpty(b10)) {
            f2074d = "";
            return "";
        }
        f2074d = cn.jiguang.f.a.a(context, b10);
        cn.jiguang.as.d.c("JCommonServiceHelper", "user serviceProcess is:" + f2074d);
        return f2074d;
    }

    public static String b(Context context) {
        ComponentInfo a10;
        String str;
        try {
            str = f2073c;
        } catch (Throwable th2) {
            cn.jiguang.as.d.c("JCommonServiceHelper", "getUserServiceClass failed:" + th2);
        }
        if (str != null) {
            return str;
        }
        Intent intent = new Intent();
        intent.setAction(JConstants.USER_SERVICE_ACTION);
        intent.setPackage(context.getPackageName());
        List<String> a11 = cn.jiguang.f.a.a(context, intent, "");
        if (a11 != null && a11.size() >= 1 && JCommonService.class.isAssignableFrom(Class.forName(a11.get(0)))) {
            f2073c = a11.get(0);
            cn.jiguang.as.d.f("JCommonServiceHelper", "found userServiceClass :" + f2073c + " by getCommonServiceNames");
        }
        if (TextUtils.isEmpty(f2073c) && (a10 = cn.jiguang.f.a.a(context, context.getPackageName(), JCommonService.class)) != null) {
            f2073c = a10.name;
            cn.jiguang.as.d.f("JCommonServiceHelper", "found userServiceClass :" + f2073c + " by getComponentInfo");
        }
        if (TextUtils.isEmpty(f2073c)) {
            f2073c = "";
        }
        return f2073c;
    }

    public void a(Context context, String str, Bundle bundle) {
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onAction action:");
            sb2.append(str);
            sb2.append(" bundle:");
            sb2.append(bundle == null ? "null" : bundle.toString());
            cn.jiguang.as.d.c("JCommonServiceHelper", sb2.toString());
            String b10 = b(context);
            if (TextUtils.isEmpty(b10)) {
                cn.jiguang.a.a.b(context, str, bundle);
            } else {
                e.a().a(context, b10, str, bundle);
            }
        } catch (Throwable th2) {
            cn.jiguang.as.d.e("JCommonServiceHelper", "onAction failed", th2);
        }
    }

    public void b(Context context, String str, Bundle bundle) {
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("callAction action:");
            sb2.append(str);
            sb2.append(" bundle:");
            sb2.append(bundle == null ? "null" : bundle.toString());
            cn.jiguang.as.d.e("JCommonServiceHelper", sb2.toString());
            cn.jiguang.av.a.a(JConstants.getAppContext(context), str, bundle);
        } catch (Throwable th2) {
            cn.jiguang.as.d.e("JCommonServiceHelper", "callAction failed", th2);
        }
    }
}
