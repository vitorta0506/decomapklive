package com.tencent.liteav.base.util;

import com.tencent.liteav.base.Log;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import org.light.utils.IOUtils;
@JNINamespace("liteav")
/* loaded from: classes4.dex */
public class LiteavLog {
    private static a sCallback = null;
    private static final boolean useChromiumBaseLog = true;

    /* loaded from: classes4.dex */
    public interface a {
        void a(b bVar, String str, String str2);
    }

    /* loaded from: classes4.dex */
    public enum b {
        kAll(0),
        kInfo(1),
        kWarning(2),
        kError(3),
        kFatal(4),
        kNone(5);
        
        public int mNativeValue;

        b(int i9) {
            this.mNativeValue = i9;
        }

        public static final b a(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            if (i9 != 4) {
                                return kNone;
                            }
                            return kFatal;
                        }
                        return kError;
                    }
                    return kWarning;
                }
                return kInfo;
            }
            return kAll;
        }
    }

    static {
        r.a();
    }

    public static void d(com.tencent.liteav.base.b.a aVar, String str, String str2, Object... objArr) {
        if (aVar == null || !aVar.a()) {
            return;
        }
        d(str, str2, objArr);
    }

    public static void e(com.tencent.liteav.base.b.a aVar, String str, String str2, Object... objArr) {
        if (aVar == null || !aVar.a()) {
            return;
        }
        e(str, str2, objArr);
    }

    public static int getLogLevel() {
        return nativeGetLogLevel();
    }

    public static void i(com.tencent.liteav.base.b.a aVar, String str, String str2, Object... objArr) {
        if (aVar == null || !aVar.a()) {
            return;
        }
        i(str, str2, objArr);
    }

    public static native int nativeGetLogLevel();

    public static native void nativeSetConsoleLogEnabled(boolean z10);

    public static native void nativeSetLogCallbackEnabled(boolean z10);

    public static native void nativeSetLogCompressEnabled(boolean z10);

    public static native void nativeSetLogFilePath(String str);

    public static native void nativeSetLogLevel(int i9);

    public static native void nativeSetLogToFileEnabled(boolean z10);

    @CalledByNative
    public static void onLog(int i9, String str) {
        a aVar = sCallback;
        if (aVar != null) {
            aVar.a(b.a(i9), "TXLiteAVSDK", str);
        }
    }

    public static void setCallback(a aVar) {
        sCallback = aVar;
    }

    public static void v(com.tencent.liteav.base.b.a aVar, String str, String str2, Object... objArr) {
        if (aVar == null || !aVar.a()) {
            return;
        }
        v(str, str2, objArr);
    }

    public static void w(com.tencent.liteav.base.b.a aVar, String str, String str2, Object... objArr) {
        if (aVar == null || !aVar.a()) {
            return;
        }
        w(str, str2, objArr);
    }

    public static void d(String str, String str2, Object... objArr) {
        d(str, String.format(str2, objArr));
    }

    public static void e(String str, String str2, Object... objArr) {
        e(str, String.format(str2, objArr));
    }

    public static void i(String str, String str2, Object... objArr) {
        i(str, String.format(str2, objArr));
    }

    public static void v(String str, String str2, Object... objArr) {
        v(str, String.format(str2, objArr));
    }

    public static void w(String str, String str2, Object... objArr) {
        w(str, String.format(str2, objArr));
    }

    public static void d(String str, String str2) {
        Log.d(str, str2, new Object[0]);
    }

    public static void e(String str, String str2) {
        Log.e(str, str2, new Object[0]);
    }

    public static void i(String str, String str2) {
        Log.i(str, str2, new Object[0]);
    }

    public static void v(String str, String str2) {
        Log.v(str, str2, new Object[0]);
    }

    public static void w(String str, String str2) {
        Log.w(str, str2, new Object[0]);
    }

    public static void e(String str, String str2, Throwable th2) {
        e(str, str2 + IOUtils.LINE_SEPARATOR_UNIX + android.util.Log.getStackTraceString(th2));
    }
}
