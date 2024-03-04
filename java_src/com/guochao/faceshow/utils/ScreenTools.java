package com.guochao.faceshow.utils;

import android.app.Activity;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import androidx.annotation.NonNull;
import com.guochao.faceshow.context.GCApplication;
/* loaded from: classes4.dex */
public class ScreenTools {
    public static int dip2px(float f10) {
        return (int) TypedValue.applyDimension(1, f10, GCApplication.app().getResources().getDisplayMetrics());
    }

    public static int get375STValue(float f10) {
        return getSTValue(f10, 375.0f);
    }

    public static int getSTValue(float f10, float f11) {
        return (int) (((getScreenWidth() * f10) / f11) + 0.5d);
    }

    public static int getScreenHeight() {
        return GCApplication.app().getResources().getDisplayMetrics().heightPixels;
    }

    public static int getScreenRealHeight(@NonNull Activity activity) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        int i9 = displayMetrics.heightPixels;
        int height = activity.findViewById(16908290).getHeight();
        return i9 != height ? height : i9;
    }

    public static int getScreenWidth() {
        return GCApplication.app().getResources().getDisplayMetrics().widthPixels;
    }

    public static int px2dip(int i9) {
        return Math.round(i9 / GCApplication.app().getResources().getDisplayMetrics().density);
    }
}
