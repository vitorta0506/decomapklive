package org.light.device;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.view.DisplayCutout;
import android.view.Window;
import android.view.WindowInsets;
import androidx.annotation.RequiresApi;
import java.lang.reflect.InvocationTargetException;
import org.light.utils.LightLogUtil;
/* loaded from: classes7.dex */
public class NotchInScreenUtils {
    public static final int NOTCH_IN_SCREEN_VIVO = 32;
    public static final int ROUNDED_IN_SCREEN_VIVO = 8;

    public static int getNotchHeightHw(Context context) {
        int[] iArr = {0, 0};
        try {
            Class<?> loadClass = context.getClassLoader().loadClass("com.huawei.android.util.HwNotchSizeUtil");
            iArr = (int[]) loadClass.getMethod("getNotchSize", new Class[0]).invoke(loadClass, new Object[0]);
        } catch (ClassNotFoundException e10) {
            LightLogUtil.e(e10);
        } catch (NoSuchMethodException e11) {
            LightLogUtil.e(e11);
        } catch (Exception e12) {
            LightLogUtil.e(e12);
        }
        return iArr[1];
    }

    public static int getStatusBarHeight(Context context) {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static String getSystemProperties(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, str);
        } catch (ClassNotFoundException e10) {
            e10.printStackTrace();
            return "";
        } catch (IllegalAccessException e11) {
            e11.printStackTrace();
            return "";
        } catch (IllegalArgumentException e12) {
            e12.printStackTrace();
            return "";
        } catch (NoSuchMethodException e13) {
            e13.printStackTrace();
            return "";
        } catch (InvocationTargetException e14) {
            e14.printStackTrace();
            return "";
        }
    }

    public static boolean hasNotchInScreen(Context context) {
        boolean z10 = false;
        boolean z11 = hasNotchInScreenHw(context) || hasNotchInScreenAtOppo(context) || hasNotchInScreenAtVivo(context) || hasNotchInScreenAtXM();
        if (Build.VERSION.SDK_INT >= 28) {
            return (z11 || hasNotchInScreenForP(context)) ? true : true;
        }
        return z11;
    }

    public static boolean hasNotchInScreenAtOppo(Context context) {
        return context.getPackageManager().hasSystemFeature("com.oppo.feature.screen.heteromorphism");
    }

    public static boolean hasNotchInScreenAtVivo(Context context) {
        try {
            try {
                try {
                    Class<?> loadClass = context.getClassLoader().loadClass("com.util.FtFeature");
                    return ((Boolean) loadClass.getMethod("isFeatureSupport", Integer.TYPE).invoke(loadClass, 32)).booleanValue();
                } catch (NoSuchMethodException e10) {
                    LightLogUtil.e(e10);
                    return false;
                }
            } catch (ClassNotFoundException e11) {
                LightLogUtil.e(e11);
                return false;
            } catch (Exception e12) {
                LightLogUtil.e(e12);
                return false;
            }
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean hasNotchInScreenAtXM() {
        return "1".equals(getSystemProperties("ro.miui.notch"));
    }

    @RequiresApi(api = 28)
    public static boolean hasNotchInScreenForP(Context context) {
        WindowInsets rootWindowInsets;
        DisplayCutout displayCutout;
        return (!(context instanceof Activity) || (rootWindowInsets = ((Activity) context).getWindow().getDecorView().getRootWindowInsets()) == null || (displayCutout = rootWindowInsets.getDisplayCutout()) == null || displayCutout.getBoundingRects() == null) ? false : true;
    }

    public static boolean hasNotchInScreenHw(Context context) {
        try {
            Class<?> loadClass = context.getClassLoader().loadClass("com.huawei.android.util.HwNotchSizeUtil");
            return ((Boolean) loadClass.getMethod("hasNotchInScreen", new Class[0]).invoke(loadClass, new Object[0])).booleanValue();
        } catch (ClassNotFoundException e10) {
            LightLogUtil.e(e10);
            return false;
        } catch (NoSuchMethodException e11) {
            LightLogUtil.e(e11);
            return false;
        } catch (Exception e12) {
            LightLogUtil.e(e12);
            return false;
        }
    }

    public static void setSystemProperties(String str, String str2) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            cls.getMethod("set", String.class, String.class).invoke(cls, str, str2);
        } catch (ClassNotFoundException e10) {
            e10.printStackTrace();
        } catch (IllegalAccessException e11) {
            e11.printStackTrace();
        } catch (IllegalArgumentException e12) {
            e12.printStackTrace();
        } catch (NoSuchMethodException e13) {
            e13.printStackTrace();
        } catch (InvocationTargetException e14) {
            e14.printStackTrace();
        }
    }

    @RequiresApi(api = 28)
    public int getNotchHeightForP(Window window) {
        DisplayCutout displayCutout;
        WindowInsets rootWindowInsets = window.getDecorView().getRootWindowInsets();
        if (rootWindowInsets == null || (displayCutout = rootWindowInsets.getDisplayCutout()) == null || displayCutout.getBoundingRects() == null) {
            return 0;
        }
        return displayCutout.getSafeInsetTop();
    }
}
