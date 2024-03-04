package com.guochao.faceshow.aaspring.utils;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.os.LocaleList;
import android.view.WindowManager;
import androidx.fragment.app.Fragment;
import com.guochao.faceshow.activity.MainActivity;
import com.guochao.faceshow.utils.BaseConfig;
import java.util.Locale;
/* loaded from: classes3.dex */
public class PackageUtils {
    public static void checkIntent(Context context, Intent intent) {
        if (context instanceof Activity) {
            return;
        }
        intent.addFlags(268435456);
    }

    public static int getScreenWidth(Context context) {
        return ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getWidth();
    }

    private static boolean goMarket(Context context, String str) {
        try {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + str)));
            return true;
        } catch (ActivityNotFoundException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean goToMarket(Context context, String str) {
        if (!BaseConfig.isChinese()) {
            return goMarket(context, str);
        }
        return ChannelHelper.goMarket(context);
    }

    public static void gotoLocationSetting(Context context) {
        try {
            context.startActivity(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"));
        } catch (Exception unused) {
        }
    }

    public static void gotoSetting(Context context) {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", context.getPackageName(), null));
        intent.addFlags(268435456);
        try {
            context.startActivity(intent);
        } catch (Exception unused) {
        }
    }

    public static void gotoSettingForResult(Fragment fragment, int i9) {
        if (fragment.getActivity() == null) {
            LogUtils.i("PackageUtils", "gotoSettingForResult: fragment not attatch to an activity ");
            return;
        }
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", fragment.getActivity().getPackageName(), null));
        intent.addFlags(268435456);
        try {
            fragment.startActivityForResult(intent, i9);
        } catch (Exception unused) {
        }
    }

    public static boolean isAppInstalled(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 0) != null;
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static void redirectToMainActivity(Context context, boolean z10) {
        Intent intent = new Intent(context, MainActivity.class);
        intent.addFlags(603979776);
        if (context instanceof Activity) {
            ((Activity) context).overridePendingTransition(0, 0);
        } else {
            intent.addFlags(268435456);
        }
        context.startActivity(intent);
    }

    public static void updateLocal(Resources resources) {
        Locale m10;
        if (resources == null || (m10 = q7.a.e().m()) == null) {
            return;
        }
        Configuration configuration = resources.getConfiguration();
        configuration.locale = m10;
        configuration.setLocale(m10);
        if (Build.VERSION.SDK_INT >= 24) {
            configuration.setLocales(new LocaleList(m10));
        }
        resources.updateConfiguration(configuration, resources.getDisplayMetrics());
    }

    public static void viewUri(Context context, Uri uri) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(uri);
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        try {
            context.startActivity(intent);
        } catch (Exception e10) {
            LogUtils.e("viewUri", "viewUri: ", e10);
        }
    }
}
