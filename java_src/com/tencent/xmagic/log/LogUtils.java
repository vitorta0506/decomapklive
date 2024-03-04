package com.tencent.xmagic.log;

import android.content.res.Configuration;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.util.LruCache;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import org.light.utils.IOUtils;
/* loaded from: classes4.dex */
public class LogUtils {
    private static long mInitTime;
    private static long mLastTime;
    private static final Configuration sConfiguration = new Configuration();
    private static ILog sLog = null;
    private static boolean ENABLED = true;
    private static boolean ENABLE_PROFILE = true;
    private static LruCache<String, Long> mTimeStampMap = new LruCache<>(1000);

    public static void d(Object obj, String str) {
        d(getTag(obj), str);
    }

    public static void e(Object obj, String str) {
        e(getTag(obj), str);
    }

    private static String generateLogPrefix(String str) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        if (stackTrace == null) {
            return "";
        }
        for (StackTraceElement stackTraceElement : stackTrace) {
            if (!stackTraceElement.isNativeMethod() && !stackTraceElement.getClassName().equals(Thread.class.getName()) && stackTraceElement.getClassName().endsWith(str)) {
                return "(" + Thread.currentThread().getName() + ")" + stackTraceElement.getClassName() + "(" + stackTraceElement.getLineNumber() + ")[" + stackTraceElement.getMethodName() + "]: ";
            }
        }
        return "";
    }

    private static String getFormatMessage(String str, String str2, Object... objArr) {
        if (objArr != null) {
            try {
                str2 = String.format(sConfiguration.locale, str2, objArr);
            } catch (Exception unused) {
            }
        }
        return generateLogPrefix(str) + str2;
    }

    public static ILog getLog() {
        return sLog;
    }

    private static String getTag(Object obj) {
        if (obj == null) {
            return "filter process";
        }
        if (obj instanceof String) {
            return (String) obj;
        }
        return obj.getClass().getSimpleName();
    }

    public static void i(Object obj, String str) {
        i(getTag(obj), str);
    }

    public static long initTime() {
        long currentThreadTimeMillis = SystemClock.currentThreadTimeMillis();
        mLastTime = currentThreadTimeMillis;
        mInitTime = currentThreadTimeMillis;
        return currentThreadTimeMillis;
    }

    public static boolean isEnableProfile() {
        return ENABLE_PROFILE;
    }

    public static boolean isEnabled() {
        return ENABLED;
    }

    public static void printTime(String str, String str2) {
        long currentTimeMillis;
        if (!ENABLED || !ENABLE_PROFILE || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        if (str2.contains("BEGIN")) {
            mTimeStampMap.put(str, Long.valueOf(System.currentTimeMillis()));
            i("LOG_PERFORMANCE_" + str, str2);
        } else if (str2.contains("END")) {
            Long l10 = mTimeStampMap.get(str);
            if (l10 != null) {
                currentTimeMillis = l10.longValue();
            } else {
                currentTimeMillis = System.currentTimeMillis();
            }
            i("LOG_PERFORMANCE_" + str, str2 + " = " + (System.currentTimeMillis() - currentTimeMillis));
        } else {
            i("LOG_PERFORMANCE_" + str, str2);
        }
    }

    public static void setEnable(boolean z10) {
        ENABLED = z10;
    }

    public static void setEnableProfile(boolean z10) {
        ENABLE_PROFILE = z10;
    }

    public static void setLog(ILog iLog) {
        sLog = iLog;
    }

    public static void v(Object obj, String str) {
        v(getTag(obj), str);
    }

    public static void w(Object obj, String str) {
        w(getTag(obj), str);
    }

    public static int writeLog(Object obj, String str) {
        if (ENABLED && ENABLE_PROFILE) {
            String tag = getTag(obj);
            try {
                long currentTimeMillis = System.currentTimeMillis();
                FileOutputStream fileOutputStream = new FileOutputStream("/mnt/sdcard/log.txt", true);
                fileOutputStream.write((String.valueOf(currentTimeMillis) + "--\t").getBytes());
                fileOutputStream.write(tag.getBytes());
                fileOutputStream.write(new String("\t").getBytes());
                fileOutputStream.write((str + IOUtils.LINE_SEPARATOR_UNIX).getBytes());
                fileOutputStream.flush();
                fileOutputStream.close();
                return 0;
            } catch (FileNotFoundException e10) {
                e10.printStackTrace();
                return 0;
            } catch (IOException e11) {
                e11.printStackTrace();
                return 0;
            }
        }
        return 0;
    }

    public static void d(String str, String str2) {
        if (ENABLED) {
            StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[3];
            String str3 = ("(" + Thread.currentThread().getName() + ")" + stackTraceElement.getClassName() + "(" + stackTraceElement.getLineNumber() + ")[" + stackTraceElement.getMethodName() + "]") + ": " + str2;
            ILog iLog = sLog;
            if (iLog != null) {
                iLog.d(str, str3);
            } else {
                Log.d(str, str3);
            }
        }
    }

    public static void e(Throwable th2) {
        e("", th2.getMessage());
    }

    public static void i(String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        ILog iLog = sLog;
        if (iLog != null) {
            iLog.i(str, str2);
        } else {
            Log.i(str, str2);
        }
    }

    public static void v(String str, String str2) {
        if (ENABLED) {
            StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[3];
            String str3 = ("(" + Thread.currentThread().getName() + ")" + stackTraceElement.getClassName() + "(" + stackTraceElement.getLineNumber() + ")[" + stackTraceElement.getMethodName() + "]") + ": " + str2;
            ILog iLog = sLog;
            if (iLog != null) {
                iLog.v(str, str3);
            } else {
                Log.v(str, str3);
            }
        }
    }

    public static void w(String str, String str2) {
        if (ENABLED) {
            StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[3];
            String str3 = ("(" + Thread.currentThread().getName() + ")" + stackTraceElement.getClassName() + "(" + stackTraceElement.getLineNumber() + ")[" + stackTraceElement.getMethodName() + "]") + ": " + str2;
            ILog iLog = sLog;
            if (iLog != null) {
                iLog.w(str, str3);
            } else {
                Log.w(str, str3);
            }
        }
    }

    public static void e(String str, Throwable th2) {
        if (ENABLED) {
            ILog iLog = sLog;
            if (iLog != null) {
                iLog.e(str, "", th2);
            } else {
                Log.e(str, "", th2);
            }
        }
    }

    public static void i(String str, String str2, Object... objArr) {
        if (ENABLED) {
            String formatMessage = getFormatMessage(str, str2, objArr);
            ILog iLog = sLog;
            if (iLog != null) {
                iLog.i(str, formatMessage);
            } else {
                Log.i(str, formatMessage);
            }
        }
    }

    public static void e(String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        ILog iLog = sLog;
        if (iLog != null) {
            iLog.e(str, str2);
        } else {
            Log.e(str, str2);
        }
    }

    public static void e(String str, String str2, Object... objArr) {
        if (ENABLED) {
            String formatMessage = getFormatMessage(str, str2, objArr);
            ILog iLog = sLog;
            if (iLog != null) {
                iLog.e(str, formatMessage);
            } else {
                Log.e(str, formatMessage);
            }
        }
    }

    public static void i(String str, String str2, Throwable th2, Object... objArr) {
        if (ENABLED) {
            String formatMessage = getFormatMessage(str, str2, objArr);
            ILog iLog = sLog;
            if (iLog != null) {
                iLog.i(str, formatMessage, th2);
            } else {
                Log.i(str, formatMessage, th2);
            }
        }
    }

    public static void d(String str, String str2, Object... objArr) {
        if (ENABLED) {
            String formatMessage = getFormatMessage(str, str2, objArr);
            ILog iLog = sLog;
            if (iLog != null) {
                iLog.d(str, formatMessage);
            } else {
                Log.d(str, formatMessage);
            }
        }
    }

    public static void v(String str, String str2, Object... objArr) {
        if (ENABLED) {
            String formatMessage = getFormatMessage(str, str2, objArr);
            ILog iLog = sLog;
            if (iLog != null) {
                iLog.v(str, formatMessage);
            } else {
                Log.v(str, formatMessage);
            }
        }
    }

    public static void w(String str, String str2, Object... objArr) {
        if (ENABLED) {
            String formatMessage = getFormatMessage(str, str2, objArr);
            ILog iLog = sLog;
            if (iLog != null) {
                iLog.w(str, formatMessage);
            } else {
                Log.w(str, formatMessage);
            }
        }
    }

    public static void e(String str, String str2, Throwable th2, Object... objArr) {
        if (ENABLED) {
            String formatMessage = getFormatMessage(str, str2, objArr);
            ILog iLog = sLog;
            if (iLog != null) {
                iLog.e(str, formatMessage, th2);
            } else {
                Log.e(str, formatMessage, th2);
            }
        }
    }

    public static void d(String str, String str2, Throwable th2, Object... objArr) {
        if (ENABLED) {
            String formatMessage = getFormatMessage(str, str2, objArr);
            ILog iLog = sLog;
            if (iLog != null) {
                iLog.d(str, formatMessage, th2);
            } else {
                Log.d(str, formatMessage, th2);
            }
        }
    }

    public static void v(String str, String str2, Throwable th2, Object... objArr) {
        if (ENABLED) {
            String formatMessage = getFormatMessage(str, str2, objArr);
            ILog iLog = sLog;
            if (iLog != null) {
                iLog.v(str, formatMessage, th2);
            } else {
                Log.v(str, formatMessage, th2);
            }
        }
    }

    public static void w(String str, String str2, Throwable th2, Object... objArr) {
        if (ENABLED) {
            String formatMessage = getFormatMessage(str, str2, objArr);
            ILog iLog = sLog;
            if (iLog != null) {
                iLog.w(str, formatMessage, th2);
            } else {
                Log.w(str, formatMessage, th2);
            }
        }
    }
}
