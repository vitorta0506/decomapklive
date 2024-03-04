package com.huawei.hms.utils;

import android.content.Context;
import android.graphics.drawable.Drawable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.internal.AnalyticsEvents;
/* loaded from: classes4.dex */
public abstract class ResourceLoaderUtil {

    /* renamed from: a  reason: collision with root package name */
    public static Context f27892a;

    /* renamed from: b  reason: collision with root package name */
    public static String f27893b;

    public static int getAnimId(String str) {
        return f27892a.getResources().getIdentifier(str, "anim", f27893b);
    }

    public static int getColorId(String str) {
        return f27892a.getResources().getIdentifier(str, "color", f27893b);
    }

    public static Drawable getDrawable(String str) {
        return f27892a.getResources().getDrawable(getDrawableId(str));
    }

    public static int getDrawableId(String str) {
        return f27892a.getResources().getIdentifier(str, "drawable", f27893b);
    }

    public static int getIdId(String str) {
        return f27892a.getResources().getIdentifier(str, "id", f27893b);
    }

    public static int getLayoutId(String str) {
        return f27892a.getResources().getIdentifier(str, "layout", f27893b);
    }

    public static String getString(String str) {
        return f27892a.getResources().getString(getStringId(str));
    }

    public static int getStringId(String str) {
        return f27892a.getResources().getIdentifier(str, TypedValues.Custom.S_STRING, f27893b);
    }

    public static int getStyleId(String str) {
        return f27892a.getResources().getIdentifier(str, AnalyticsEvents.PARAMETER_LIKE_VIEW_STYLE, f27893b);
    }

    public static Context getmContext() {
        return f27892a;
    }

    public static void setmContext(Context context) {
        f27892a = context;
        f27893b = context.getPackageName();
    }

    public static String getString(String str, Object... objArr) {
        return f27892a.getResources().getString(getStringId(str), objArr);
    }
}
