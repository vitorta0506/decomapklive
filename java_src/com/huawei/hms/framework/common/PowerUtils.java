package com.huawei.hms.framework.common;

import android.app.usage.UsageStatsManager;
import android.content.Context;
import android.net.ConnectivityManager;
import android.os.Build;
import android.os.PowerManager;
/* loaded from: classes4.dex */
public class PowerUtils {
    private static final String TAG = "PowerUtils";

    /* loaded from: classes4.dex */
    public static final class PowerMode {
        static int POWER_MODE_DEFAULT_RETURN_VALUE = 0;
        static int POWER_SAVER_MODE = 4;
        static String SMART_MODE_STATUS = "SmartModeStatus";
    }

    public static boolean isAppIdleMode(Context context) {
        if (context != null) {
            String packageName = context.getPackageName();
            UsageStatsManager usageStatsManager = null;
            int i9 = Build.VERSION.SDK_INT;
            if (i9 >= 22) {
                Object systemService = context.getSystemService("usagestats");
                if (!(systemService instanceof UsageStatsManager)) {
                    return false;
                }
                usageStatsManager = (UsageStatsManager) systemService;
            }
            if (usageStatsManager == null) {
                Logger.i(TAG, "isAppIdleMode statsManager is null!");
                return false;
            } else if (i9 >= 23) {
                return usageStatsManager.isAppInactive(packageName);
            } else {
                return false;
            }
        }
        Logger.i(TAG, "isAppIdleMode Context is null!");
        return false;
    }

    public static boolean isDozeIdleMode(Context context) {
        if (context != null) {
            Object systemService = ContextCompat.getSystemService(context, "power");
            PowerManager powerManager = systemService instanceof PowerManager ? (PowerManager) systemService : null;
            if (powerManager != null) {
                if (Build.VERSION.SDK_INT >= 23) {
                    try {
                        return powerManager.isDeviceIdleMode();
                    } catch (RuntimeException e10) {
                        Logger.e(TAG, "dealType rethrowFromSystemServer:", e10);
                        return false;
                    }
                }
                Logger.i(TAG, "isDozeIdleMode is version control state!");
                return false;
            }
            Logger.i(TAG, "isDozeIdleMode powerManager is null!");
            return false;
        }
        Logger.i(TAG, "isDozeIdleMode Context is null!");
        return false;
    }

    public static boolean isInteractive(Context context) {
        if (context != null) {
            Object systemService = ContextCompat.getSystemService(context, "power");
            if (systemService instanceof PowerManager) {
                try {
                    return ((PowerManager) systemService).isInteractive();
                } catch (RuntimeException e10) {
                    Logger.i(TAG, "getActiveNetworkInfo failed, exception:" + e10.getClass().getSimpleName() + e10.getMessage());
                }
            }
        }
        return false;
    }

    public static boolean isWhilteList(Context context) {
        if (context != null) {
            Object systemService = ContextCompat.getSystemService(context, "power");
            PowerManager powerManager = systemService instanceof PowerManager ? (PowerManager) systemService : null;
            String packageName = context.getPackageName();
            if (powerManager != null && Build.VERSION.SDK_INT >= 23) {
                try {
                    return powerManager.isIgnoringBatteryOptimizations(packageName);
                } catch (RuntimeException e10) {
                    Logger.e(TAG, "dealType rethrowFromSystemServer:", e10);
                }
            }
        }
        return false;
    }

    public static int readDataSaverMode(Context context) {
        if (context != null) {
            Object systemService = context.getSystemService("connectivity");
            ConnectivityManager connectivityManager = systemService instanceof ConnectivityManager ? (ConnectivityManager) systemService : null;
            if (connectivityManager != null) {
                int i9 = Build.VERSION.SDK_INT;
                if (ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_NETWORK_STATE")) {
                    return 0;
                }
                if (!connectivityManager.isActiveNetworkMetered()) {
                    Logger.v(TAG, "ConnectType is not Mobile Network!");
                    return 0;
                } else if (i9 >= 24) {
                    return connectivityManager.getRestrictBackgroundStatus();
                } else {
                    return 0;
                }
            }
            Logger.i(TAG, "readDataSaverMode Context is null!");
            return 0;
        }
        Logger.i(TAG, "readDataSaverMode manager is null!");
        return 0;
    }

    public static int readPowerSaverMode(Context context) {
        int i9;
        if (context != null) {
            int systemInt = SettingUtil.getSystemInt(context.getContentResolver(), PowerMode.SMART_MODE_STATUS, PowerMode.POWER_MODE_DEFAULT_RETURN_VALUE);
            if (systemInt == PowerMode.POWER_MODE_DEFAULT_RETURN_VALUE) {
                Object systemService = ContextCompat.getSystemService(context, "power");
                PowerManager powerManager = systemService instanceof PowerManager ? (PowerManager) systemService : null;
                if (powerManager != null) {
                    try {
                        if (powerManager.isPowerSaveMode()) {
                            i9 = PowerMode.POWER_SAVER_MODE;
                        } else {
                            i9 = PowerMode.POWER_MODE_DEFAULT_RETURN_VALUE;
                        }
                        return i9;
                    } catch (RuntimeException e10) {
                        Logger.e(TAG, "dealType rethrowFromSystemServer:", e10);
                        return systemInt;
                    }
                }
                return systemInt;
            }
            return systemInt;
        }
        Logger.i(TAG, "readPowerSaverMode Context is null!");
        return 0;
    }
}
