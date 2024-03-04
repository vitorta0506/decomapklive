package org.light;

import android.os.RemoteException;
import org.light.utils.LightLogUtil;
/* loaded from: classes7.dex */
public class PerformanceMonitor {
    private static final String TAG = "PerformanceMonitor";
    private static ILightSDKServiceInterface lightSDKServiceInterface;

    public static String getBenchData() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.performanceMonitorGetBenchData();
            } catch (RemoteException e10) {
                e10.printStackTrace();
                return "";
            }
        }
        return nativeGetBenchData();
    }

    public static String getPerformanceData() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.performanceMonitorGetPerformanceData();
            } catch (RemoteException e10) {
                e10.printStackTrace();
                return "";
            }
        }
        return nativeGetPerformanceData();
    }

    private static native String nativeGetBenchData();

    private static native String nativeGetPerformanceData();

    private static native boolean nativeSavePerformanceData();

    private static native void nativeSetBenchConfig(String str);

    private static native void nativeSetBenchConfigWithThreshold(String str, float f10);

    private static native void nativeSetBenchEnable(boolean z10);

    private static native void nativeSetBenchEnableWithThreshold(boolean z10, float f10);

    private static native void nativeSetPerfEnable(boolean z10, boolean z11, boolean z12, String str);

    private static native void nativeSetPerformanceRunMode(int i9);

    public static boolean savePerformanceData() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.performanceMonitorSavePerformanceData();
            } catch (RemoteException e10) {
                e10.printStackTrace();
                return false;
            }
        }
        return nativeSavePerformanceData();
    }

    public static void setBenchConfig(String str) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.performanceMonitorSetBenchConfig(str);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetBenchConfig(str);
    }

    public static void setBenchConfigWithThreshold(String str, float f10) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.performanceMonitorSetBenchConfigWithThreshold(str, f10);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetBenchConfigWithThreshold(str, f10);
    }

    public static void setBenchEnable(boolean z10) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.performanceMonitorSetBenchEnable(z10);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetBenchEnable(z10);
    }

    public static void setBenchEnableWithThreshold(boolean z10, float f10) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.performanceMonitorSetBenchEnableWithThreshold(z10, f10);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetBenchEnableWithThreshold(z10, f10);
    }

    public static void setLightSDKServiceInterface(ILightSDKServiceInterface iLightSDKServiceInterface) {
        lightSDKServiceInterface = iLightSDKServiceInterface;
    }

    public static void setPerfEnable(boolean z10, boolean z11, boolean z12, String str) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.performanceMonitorSetPerfEnable(z10, z11, z12, str);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetPerfEnable(z10, z11, z12, str);
    }

    public static void setPerformanceRunMode(int i9) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.performanceMonitorSetPerformanceRunMode(i9);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetPerformanceRunMode(i9);
    }
}
