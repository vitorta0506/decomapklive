package com.tencent.liteav.base;

import com.facebook.internal.security.CertificateUtil;
import com.tencent.liteav.base.annotations.RemovableInRelease;
import java.util.Locale;
/* loaded from: classes4.dex */
public class Log {
    public static final int ASSERT = 7;
    public static final int DEBUG = 3;
    public static final int ERROR = 6;
    public static final int INFO = 4;
    public static final int VERBOSE = 2;
    public static final int WARN = 5;
    private static final String sDeprecatedTagPrefix = "cr.";
    private static final String sTagPrefix = "cr_";
    private static final boolean useChromiumLog = true;

    private Log() {
    }

    @RemovableInRelease
    public static void d(String str, String str2, Object... objArr) {
        nativeWriteLogToNative(3, str, formatLogWithStack(str2, getThrowableToLog(objArr), objArr));
    }

    public static void e(String str, String str2, Object... objArr) {
        nativeWriteLogToNative(6, str, formatLog(str2, getThrowableToLog(objArr), objArr));
    }

    private static String formatLog(String str, Throwable th2, Object... objArr) {
        return objArr != null ? ((th2 != null || objArr.length <= 0) && objArr.length <= 1) ? str : String.format(Locale.US, str, objArr) : str;
    }

    private static String formatLogWithStack(String str, Throwable th2, Object... objArr) {
        return "[" + getCallOrigin() + "] " + formatLog(str, th2, objArr);
    }

    @RemovableInRelease
    private static String getCallOrigin() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        String name = Log.class.getName();
        int i9 = 0;
        while (true) {
            if (i9 >= stackTrace.length) {
                break;
            } else if (stackTrace[i9].getClassName().equals(name)) {
                i9 += 3;
                break;
            } else {
                i9++;
            }
        }
        return stackTrace[i9].getFileName() + CertificateUtil.DELIMITER + stackTrace[i9].getLineNumber();
    }

    public static String getStackTraceString(Throwable th2) {
        return android.util.Log.getStackTraceString(th2);
    }

    private static Throwable getThrowableToLog(Object[] objArr) {
        if (objArr == null || objArr.length == 0) {
            return null;
        }
        Object obj = objArr[objArr.length - 1];
        if (obj instanceof Throwable) {
            return (Throwable) obj;
        }
        return null;
    }

    public static void i(String str, String str2, Object... objArr) {
        nativeWriteLogToNative(4, str, formatLog(str2, getThrowableToLog(objArr), objArr));
    }

    @RemovableInRelease
    private static boolean isDebug() {
        return true;
    }

    public static boolean isLoggable(String str, int i9) {
        if (isDebug() || i9 > 4) {
            return android.util.Log.isLoggable(str, i9);
        }
        return false;
    }

    private static native void nativeWriteLogToNative(int i9, String str, String str2);

    public static String normalizeTag(String str) {
        if (str.startsWith(sTagPrefix)) {
            return str;
        }
        int i9 = str.startsWith(sDeprecatedTagPrefix) ? 3 : 0;
        return sTagPrefix + str.substring(i9, str.length());
    }

    @RemovableInRelease
    public static void v(String str, String str2, Object... objArr) {
        nativeWriteLogToNative(2, str, formatLogWithStack(str2, getThrowableToLog(objArr), objArr));
    }

    public static void w(String str, String str2, Object... objArr) {
        nativeWriteLogToNative(5, str, formatLog(str2, getThrowableToLog(objArr), objArr));
    }

    public static void wtf(String str, String str2, Object... objArr) {
        nativeWriteLogToNative(7, str, formatLog(str2, getThrowableToLog(objArr), objArr));
    }
}
