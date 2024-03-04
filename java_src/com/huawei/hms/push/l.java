package com.huawei.hms.push;

import android.app.Notification;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import com.huawei.hms.android.HwBuildEx;
import com.huawei.hms.support.log.HMSLog;
import org.light.utils.FileUtils;
/* loaded from: classes4.dex */
public class l {
    public static int a(Context context) {
        int i9 = context.getApplicationInfo().icon;
        if (i9 == 0) {
            int identifier = context.getResources().getIdentifier("btn_star_big_on", "drawable", "android");
            HMSLog.d("PushSelfShowLog", "icon is btn_star_big_on ");
            if (identifier == 0) {
                HMSLog.d("PushSelfShowLog", "icon is sym_def_app_icon ");
                return 17301651;
            }
            return identifier;
        }
        return i9;
    }

    public static int b(Context context, k kVar) {
        int i9 = 0;
        if (context != null && kVar != null) {
            if (!TextUtils.isEmpty(kVar.m())) {
                String[] split = kVar.m().split(FileUtils.RES_PREFIX_STORAGE);
                if (split.length == 3) {
                    i9 = r.a(context, split[1], split[2]);
                }
            }
            if (i9 == 0) {
                i9 = r.a(context, "com.huawei.messaging.default_notification_icon");
            }
            return i9 != 0 ? i9 : a(context);
        }
        HMSLog.i("PushSelfShowLog", "enter getSmallIconId, context or msg is null");
        return 0;
    }

    public static Bitmap a(Context context, k kVar) {
        if (context == null || kVar == null) {
            return null;
        }
        try {
            if (HwBuildEx.VERSION.EMUI_SDK_INT >= 11) {
                HMSLog.i("PushSelfShowLog", "huawei phone, and emui5.0, need not show large icon.");
                return null;
            } else if ("com.huawei.android.pushagent".equals(kVar.k())) {
                return null;
            } else {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("get left bitmap from ");
                sb2.append(kVar.k());
                HMSLog.i("PushSelfShowLog", sb2.toString());
                return ((BitmapDrawable) context.getPackageManager().getApplicationIcon(kVar.k())).getBitmap();
            }
        } catch (PackageManager.NameNotFoundException unused) {
            HMSLog.e("PushSelfShowLog", "build left icon occur NameNotFoundException.");
            return null;
        } catch (Exception unused2) {
            HMSLog.e("PushSelfShowLog", "build left icon occur Exception.");
            return null;
        }
    }

    public static void a(Context context, Notification.Builder builder, k kVar) {
        if (context != null && builder != null && kVar != null) {
            builder.setSmallIcon(b(context, kVar));
        } else {
            HMSLog.e("PushSelfShowLog", "msg is null");
        }
    }
}
