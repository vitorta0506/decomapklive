package com.guochao.faceshow.utils;

import android.content.Context;
import android.content.res.Resources;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import androidx.annotation.NonNull;
/* loaded from: classes4.dex */
public class NavigationBarUtils {
    public static boolean checkNavigationBarShow(@NonNull Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("config_showNavigationBar", "bool", "android");
        boolean z10 = false;
        boolean z11 = identifier > 0 ? resources.getBoolean(identifier) : false;
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            String str = (String) cls.getMethod("get", String.class).invoke(cls, "qemu.hw.mainkeys");
            int i9 = Settings.Global.getInt(context.getContentResolver(), "navigationbar_is_min", 0);
            if (!"1".equals(str) && 1 != i9) {
                z10 = "0".equals(str) ? true : z11;
            }
            return z10;
        } catch (Exception unused) {
            return z11;
        }
    }

    public static int getBottomStatusHeight(Context context) {
        if (checkNavigationBarShow(context)) {
            return getDpi(context) - getScreenHeight(context);
        }
        return 0;
    }

    public static int getDpi(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        try {
            Class.forName("android.view.Display").getMethod("getRealMetrics", DisplayMetrics.class).invoke(defaultDisplay, displayMetrics);
            return displayMetrics.heightPixels;
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public static int getScreenHeight(Context context) {
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    public static boolean isPad(Context context) {
        return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
    }
}
