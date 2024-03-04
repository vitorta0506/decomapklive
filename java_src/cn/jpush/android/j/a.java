package cn.jpush.android.j;

import android.app.Activity;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ContentProvider;
import android.content.Context;
import android.content.pm.ComponentInfo;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.text.TextUtils;
import cn.jpush.android.i.b;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static String f3121a = "";

    /* renamed from: b  reason: collision with root package name */
    private static String f3122b = "";

    /* renamed from: c  reason: collision with root package name */
    private static final String f3123c = "".toLowerCase();

    public static ComponentInfo a(Context context, String str, Class<?> cls) {
        int i9;
        ComponentInfo[] componentInfoArr;
        if (context == null || TextUtils.isEmpty(str)) {
            b.d("AndroidUtils", "Action - hasComponent, invalide param, context:" + context + ",packageName:" + str + ",cls:" + cls);
            return null;
        }
        try {
            int i10 = Service.class.isAssignableFrom(cls) ? 4 : BroadcastReceiver.class.isAssignableFrom(cls) ? 2 : Activity.class.isAssignableFrom(cls) ? 1 : ContentProvider.class.isAssignableFrom(cls) ? 8 : 0;
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, i10);
            componentInfoArr = i10 != 1 ? i10 != 2 ? i10 != 4 ? i10 != 8 ? null : packageInfo.providers : packageInfo.services : packageInfo.receivers : packageInfo.activities;
        } catch (Throwable th2) {
            b.e("AndroidUtils", "hasComponent error:" + th2);
        }
        if (componentInfoArr == null) {
            return null;
        }
        for (ComponentInfo componentInfo : componentInfoArr) {
            if (cls.isAssignableFrom(Class.forName(componentInfo.name))) {
                return componentInfo;
            }
        }
        return null;
    }

    public static boolean a(Context context) {
        String str;
        if (context == null) {
            str = "context was null";
        } else {
            String str2 = null;
            try {
                str2 = Build.MANUFACTURER;
                b.a("AndroidUtils", "MANUFACTURER:" + str2);
            } catch (Throwable th2) {
                b.e("AndroidUtils", "get MANUFACTURER failed - error:" + th2);
            }
            if (!TextUtils.isEmpty(str2)) {
                String str3 = f3123c;
                return TextUtils.isEmpty(str3) || TextUtils.equals(str3, str2.toLowerCase());
            }
            str = "MANUFACTURER was empty";
        }
        b.e("AndroidUtils", str);
        return false;
    }
}
