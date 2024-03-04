package com.guochao.faceshow.aaspring.utils;

import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.R;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.lib_base.R$color;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.light.device.DeviceInstance;
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0007J\u000e\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\rJ\u0010\u0010\u000e\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0007J\u000e\u0010\u000f\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ\u0012\u0010\u0010\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0007J\u0010\u0010\u0011\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nJ\u0012\u0010\u0012\u001a\u00020\u00132\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0007J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\f\u001a\u00020\rH\u0007J\u000e\u0010\u0016\u001a\u00020\u00152\u0006\u0010\t\u001a\u00020\nJ*\u0010\u0017\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00152\b\b\u0002\u0010\u001b\u001a\u00020\bH\u0007J\u001a\u0010\u001c\u001a\u00020\u00132\b\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u001d\u001a\u00020\u0015H\u0007R\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u001e"}, d2 = {"Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;", "", "()V", "deviceInfo", "", "getDeviceInfo", "()Ljava/lang/String;", "getActionBarHeight", "", "context", "Landroid/content/Context;", "getCurrentNavigationBarHeight", PushConstants.INTENT_ACTIVITY_NAME, "Landroid/app/Activity;", "getNavigationBarHeight", "getNavigationBarHeightIfRoom", "getStatusbarHeight", "getStatusbarHeightByApiLevel", "hideStatusBar", "", "isNavigationBarShown", "", "navigationGestureEnabled", "setLightStatusBar", "window", "Landroid/view/Window;", "light", "statusBarColor", "showStatusBar", "isBlack", "lib_base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class StatusBarHelper {
    @NotNull
    public static final StatusBarHelper INSTANCE = new StatusBarHelper();

    private StatusBarHelper() {
    }

    @JvmStatic
    public static final int getActionBarHeight(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{R.attr.actionBarSize});
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "context.obtainStyledAttr…e\n            )\n        )");
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        obtainStyledAttributes.recycle();
        return dimensionPixelSize;
    }

    @JvmStatic
    public static final int getNavigationBarHeight(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("window");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        try {
            Class.forName("android.view.Display").getMethod("getRealMetrics", DisplayMetrics.class).invoke(defaultDisplay, displayMetrics);
            return displayMetrics.heightPixels - defaultDisplay.getHeight();
        } catch (Exception e10) {
            e10.printStackTrace();
            int identifier = context.getResources().getIdentifier("navigation_bar_height", "dimen", "android");
            if (identifier > 0) {
                return context.getResources().getDimensionPixelSize(identifier);
            }
            return 0;
        }
    }

    @JvmStatic
    public static final int getStatusbarHeight(@Nullable Context context) {
        if (context == null) {
            context = GCApplication.app();
        }
        Intrinsics.checkNotNull(context);
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    @JvmStatic
    public static final void hideStatusBar(@Nullable Activity activity) {
        if (activity == null) {
            return;
        }
        activity.getWindow().getDecorView().setSystemUiVisibility(5380);
    }

    @JvmStatic
    public static final boolean isNavigationBarShown(@NotNull Activity activity) {
        int visibility;
        Intrinsics.checkNotNullParameter(activity, "activity");
        View findViewById = activity.findViewById(16908336);
        return (findViewById == null || (visibility = findViewById.getVisibility()) == 4 || visibility == 8) ? false : true;
    }

    @JvmStatic
    @JvmOverloads
    public static final void setLightStatusBar(@NotNull Context context, @NotNull Window window, boolean z10) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(window, "window");
        setLightStatusBar$default(context, window, z10, 0, 8, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void setLightStatusBar(@NotNull Context context, @NotNull Window window, boolean z10, int i9) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(window, "window");
        if (Build.VERSION.SDK_INT >= 23) {
            if (z10) {
                window.getDecorView().setSystemUiVisibility(window.getDecorView().getSystemUiVisibility() | 8192);
            } else {
                window.getDecorView().setSystemUiVisibility(window.getDecorView().getSystemUiVisibility() & (-8193));
            }
        } else if (z10) {
            window.setStatusBarColor(context.getResources().getColor(R$color.color_app_primary));
        } else {
            window.setStatusBarColor(i9);
        }
    }

    public static /* synthetic */ void setLightStatusBar$default(Context context, Window window, boolean z10, int i9, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            i9 = 0;
        }
        setLightStatusBar(context, window, z10, i9);
    }

    @JvmStatic
    public static final void showStatusBar(@Nullable Activity activity, boolean z10) {
        if (activity == null) {
            return;
        }
        Window window = activity.getWindow();
        if (z10) {
            window.getDecorView().setSystemUiVisibility(Build.VERSION.SDK_INT >= 23 ? 13568 : 5376);
        } else {
            window.getDecorView().setSystemUiVisibility(5376);
        }
    }

    public final int getCurrentNavigationBarHeight(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (isNavigationBarShown(activity)) {
            return getNavigationBarHeight(activity);
        }
        return 0;
    }

    @NotNull
    public final String getDeviceInfo() {
        boolean equals;
        boolean equals2;
        boolean equals3;
        boolean equals4;
        String str = Build.BRAND;
        if (TextUtils.isEmpty(str)) {
            return "navigationbar_is_min";
        }
        equals = StringsKt__StringsJVMKt.equals(str, DeviceInstance.BRAND_HUAWEI, true);
        if (equals) {
            return "navigationbar_is_min";
        }
        equals2 = StringsKt__StringsJVMKt.equals(str, DeviceInstance.BRAND_XIAOMI, true);
        if (equals2) {
            return "force_fsg_nav_bar";
        }
        equals3 = StringsKt__StringsJVMKt.equals(str, DeviceInstance.BRAND_VIVO, true);
        if (!equals3) {
            equals4 = StringsKt__StringsJVMKt.equals(str, DeviceInstance.BRAND_OPPO, true);
            if (!equals4) {
                return "navigationbar_is_min";
            }
        }
        return "navigation_gesture_on";
    }

    public final int getNavigationBarHeightIfRoom(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (navigationGestureEnabled(context)) {
            return 0;
        }
        return getCurrentNavigationBarHeight((Activity) context);
    }

    public final int getStatusbarHeightByApiLevel(@Nullable Context context) {
        return getStatusbarHeight(context);
    }

    public final boolean navigationGestureEnabled(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return Settings.Global.getInt(context.getContentResolver(), getDeviceInfo(), 0) != 0;
    }
}
