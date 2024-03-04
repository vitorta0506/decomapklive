package com.guochao.faceshow.aaspring.utils;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import androidx.core.content.ContextCompat;
/* loaded from: classes3.dex */
public class PerMissionsUtils {
    public static void checkPermission(Context context) {
        String str = Build.BRAND;
        if (!TextUtils.equals(str.toLowerCase(), "redmi") && !TextUtils.equals(str.toLowerCase(), "xiaomi")) {
            if (TextUtils.equals(str.toLowerCase(), "meizu")) {
                gotoMeizuPermission(context);
                return;
            } else if (!TextUtils.equals(str.toLowerCase(), "huawei") && !TextUtils.equals(str.toLowerCase(), "honor")) {
                context.startActivity(getAppDetailSettingIntent(context));
                return;
            } else {
                gotoHuaweiPermission(context);
                return;
            }
        }
        gotoMiuiPermission(context);
    }

    private static Intent getAppDetailSettingIntent(Context context) {
        Intent intent = new Intent();
        intent.addFlags(268435456);
        intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", context.getPackageName(), null));
        return intent;
    }

    public static void goSetting(Context context) {
        try {
            Intent intent = new Intent();
            intent.setAction("android.settings.APP_NOTIFICATION_SETTINGS");
            intent.putExtra("app_package", context.getPackageName());
            intent.putExtra("app_uid", context.getApplicationInfo().uid);
            context.startActivity(intent);
        } catch (Exception e10) {
            e10.printStackTrace();
            Intent intent2 = new Intent();
            intent2.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent2.setData(Uri.fromParts("package", context.getPackageName(), null));
            context.startActivity(intent2);
        }
    }

    private static void gotoHuaweiPermission(Context context) {
        try {
            Intent intent = new Intent();
            intent.setFlags(268435456);
            intent.setComponent(new ComponentName("com.huawei.systemmanager", "com.huawei.permissionmanager.ui.MainActivity"));
            context.startActivity(intent);
        } catch (Exception e10) {
            e10.printStackTrace();
            context.startActivity(getAppDetailSettingIntent(context));
        }
    }

    private static void gotoMeizuPermission(Context context) {
        try {
            Intent intent = new Intent("com.meizu.safe.security.SHOW_APPSEC");
            intent.addCategory("android.intent.category.DEFAULT");
            intent.putExtra("packageName", "com.guochao.faceshow");
            context.startActivity(intent);
        } catch (Exception e10) {
            e10.printStackTrace();
            context.startActivity(getAppDetailSettingIntent(context));
        }
    }

    private static void gotoMiuiPermission(Context context) {
        try {
            try {
                Intent intent = new Intent("miui.intent.action.APP_PERM_EDITOR");
                intent.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.PermissionsEditorActivity");
                intent.putExtra("extra_pkgname", context.getPackageName());
                context.startActivity(intent);
            } catch (Exception unused) {
                context.startActivity(getAppDetailSettingIntent(context));
            }
        } catch (Exception unused2) {
            Intent intent2 = new Intent("miui.intent.action.APP_PERM_EDITOR");
            intent2.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.AppPermissionsEditorActivity");
            intent2.putExtra("extra_pkgname", context.getPackageName());
            context.startActivity(intent2);
        }
    }

    private static boolean lacksPermission(Context context, String str) {
        return ContextCompat.checkSelfPermission(context, str) == -1;
    }

    public static boolean lacksPermissions(Context context, String... strArr) {
        for (String str : strArr) {
            if (lacksPermission(context, str)) {
                return true;
            }
        }
        return false;
    }
}
