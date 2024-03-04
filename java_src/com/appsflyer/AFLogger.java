package com.appsflyer;

import android.app.Application;
import android.content.SharedPreferences;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.appsflyer.internal.AFa1aSDK;
import com.appsflyer.internal.AFb1iSDK;
import com.appsflyer.internal.AFb1pSDK;
/* loaded from: classes.dex */
public class AFLogger {
    private static final long valueOf = System.currentTimeMillis();

    /* loaded from: classes.dex */
    public enum LogLevel {
        NONE(0),
        ERROR(1),
        WARNING(2),
        INFO(3),
        DEBUG(4),
        VERBOSE(5);
        
        private int AFInAppEventParameterName;

        LogLevel(int i9) {
            this.AFInAppEventParameterName = i9;
        }

        public final int getLevel() {
            return this.AFInAppEventParameterName;
        }
    }

    private static boolean AFInAppEventParameterName(LogLevel logLevel) {
        return logLevel.getLevel() <= AppsFlyerProperties.getInstance().getInt("logLevel", LogLevel.NONE.getLevel());
    }

    @NonNull
    private static String AFKeystoreWrapper(String str, boolean z10) {
        if (str == null) {
            str = "null";
        }
        if (z10 || LogLevel.VERBOSE.getLevel() <= AppsFlyerProperties.getInstance().getInt("logLevel", LogLevel.NONE.getLevel())) {
            StringBuilder sb2 = new StringBuilder("(");
            sb2.append(System.currentTimeMillis() - valueOf);
            sb2.append(") [");
            sb2.append(Thread.currentThread().getName());
            sb2.append("] ");
            sb2.append(str);
            return sb2.toString();
        }
        return str;
    }

    public static void afDebugLog(String str) {
        if (AFInAppEventParameterName(LogLevel.DEBUG)) {
            Log.d("AppsFlyer_6.9.0", AFKeystoreWrapper(str, false));
        }
        AFb1pSDK.AFKeystoreWrapper().valueOf("D", AFKeystoreWrapper(str, true));
    }

    public static void afErrorLog(String str, Throwable th2) {
        values(str, th2, true, false);
    }

    public static void afInfoLog(String str, boolean z10) {
        if (AFInAppEventParameterName(LogLevel.INFO)) {
            Log.i("AppsFlyer_6.9.0", AFKeystoreWrapper(str, false));
        }
        if (z10) {
            AFb1pSDK.AFKeystoreWrapper().valueOf("I", AFKeystoreWrapper(str, true));
        }
    }

    public static void afRDLog(String str) {
        if (AFInAppEventParameterName(LogLevel.VERBOSE)) {
            Log.v("AppsFlyer_6.9.0", AFKeystoreWrapper(str, false));
        }
        AFb1pSDK.AFKeystoreWrapper().valueOf(ExifInterface.GPS_MEASUREMENT_INTERRUPTED, AFKeystoreWrapper(str, true));
    }

    public static void afWarnLog(String str) {
        valueOf(str);
    }

    public static void valueOf(String str) {
        if (AFInAppEventParameterName(LogLevel.WARNING)) {
            Log.w("AppsFlyer_6.9.0", AFKeystoreWrapper(str, false));
        }
        AFb1pSDK.AFKeystoreWrapper().valueOf(ExifInterface.LONGITUDE_WEST, AFKeystoreWrapper(str, true));
    }

    private static void values(String str, Throwable th2, boolean z10, boolean z11) {
        if (AFInAppEventParameterName(LogLevel.ERROR)) {
            if (str == null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(th2.getClass().getSimpleName());
                sb2.append(" at ");
                sb2.append(th2.getStackTrace()[0].toString());
                str = sb2.toString();
            }
            String AFKeystoreWrapper = AFKeystoreWrapper(str, false);
            if (z11) {
                Log.e("AppsFlyer_6.9.0", AFKeystoreWrapper, th2);
            } else if (z10) {
                Log.d("AppsFlyer_6.9.0", AFKeystoreWrapper);
            }
        }
        AFb1pSDK.AFKeystoreWrapper().AFInAppEventType(th2);
        Application application = AFb1iSDK.values;
        if (application != null) {
            SharedPreferences.Editor edit = AFa1aSDK.AFKeystoreWrapper(application).edit();
            Application application2 = AFb1iSDK.values;
            edit.putLong("exception_number", (application2 == null ? -1L : AFa1aSDK.AFKeystoreWrapper(application2).getLong("exception_number", 0L)) + 1).apply();
        }
    }

    public static void afErrorLog(String str, Throwable th2, boolean z10) {
        values(str, th2, true, z10);
    }

    public static void AFInAppEventParameterName(String str) {
        if (!valueOf()) {
            Log.d("AppsFlyer_6.9.0", AFKeystoreWrapper(str, false));
        }
        AFb1pSDK.AFKeystoreWrapper().valueOf("F", str);
    }

    public static void afErrorLog(Throwable th2) {
        values(null, th2, false, false);
    }

    public static void afInfoLog(String str) {
        afInfoLog(str, true);
    }

    private static boolean valueOf() {
        return AppsFlyerProperties.getInstance().isLogsDisabledCompletely();
    }
}
