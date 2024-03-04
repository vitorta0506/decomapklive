package com.guochao.faceshow.aaspring.utils;

import android.content.Context;
/* loaded from: classes3.dex */
public class AppSettings {
    private static Context sContext;

    private static boolean getBoolean(String str, boolean z10) {
        return SpUtils.getBool(sContext, str, z10);
    }

    public static boolean getSetting(String str) {
        return getSetting(str, false);
    }

    public static void init(Context context) {
        sContext = context.getApplicationContext();
    }

    public static boolean isFirstUse(String str) {
        boolean z10 = getBoolean("first_" + str, true);
        Context context = sContext;
        SpUtils.setBool(context, "first_" + str, false);
        return z10;
    }

    public static void setSetting(String str, boolean z10) {
        SpUtils.setBool(sContext, str, z10);
    }

    public static boolean getSetting(String str, boolean z10) {
        return SpUtils.getBool(sContext, str, z10);
    }

    public static boolean isFirstUse(String str, int i9) {
        String str2 = "first_" + str + "_" + i9;
        boolean bool = SpUtils.getBool(sContext, str2, true);
        SpUtils.setBool(sContext, str2, false);
        return bool;
    }

    public static boolean isFirstUse(String str, boolean z10) {
        String str2 = "first_" + str + "_" + Constants.VERSION_CODE;
        if (z10) {
            boolean z11 = getBoolean(str2, true);
            SpUtils.setBool(sContext, str2, false);
            return z11;
        }
        return isFirstUse(str);
    }
}
