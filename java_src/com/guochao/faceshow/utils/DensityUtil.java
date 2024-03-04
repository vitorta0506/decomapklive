package com.guochao.faceshow.utils;

import android.content.Context;
import android.os.Build;
import com.guochao.faceshow.context.GCApplication;
/* loaded from: classes4.dex */
public class DensityUtil {
    private static float scale;

    public static int dp2px(Context context, float f10) {
        return (int) ((f10 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int fillDp2px(Context context, float f10) {
        if (scale == 0.0f) {
            scale = context.getResources().getDisplayMetrics().density;
        }
        return (int) ((f10 * scale) + 0.5f);
    }

    public static float getDensity() {
        return GCApplication.app().getResources().getDisplayMetrics().density;
    }

    public static int getNotificationFlag() {
        int i9 = Build.VERSION.SDK_INT;
        return (i9 < 31 && i9 < 23) ? 134217728 : 201326592;
    }

    public static int getWidth() {
        return GCApplication.app().getResources().getDisplayMetrics().widthPixels;
    }

    public static int px2dip(float f10) {
        return (int) ((f10 / getDensity()) + 0.5f);
    }

    public static int sp2px(Context context, float f10) {
        return (int) ((f10 * context.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public static int dp2px(float f10) {
        return (int) ((f10 * GCApplication.app().getResources().getDisplayMetrics().density) + 0.5f);
    }
}
