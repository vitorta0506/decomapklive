package com.tencent.imsdk.base;

import com.tencent.imsdk.base.annotations.CalledByNative;
import com.tencent.imsdk.base.annotations.JNINamespace;
import com.tencent.imsdk.base.annotations.MainDex;
import java.lang.Thread;
@JNINamespace("base::android")
@MainDex
/* loaded from: classes4.dex */
public class JavaExceptionReporter implements Thread.UncaughtExceptionHandler {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final boolean mCrashAfterReport;
    private boolean mHandlingException;
    private final Thread.UncaughtExceptionHandler mParent;

    /* loaded from: classes4.dex */
    interface Natives {
        void reportJavaException(boolean z10, Throwable th2);

        void reportJavaStackTrace(String str);
    }

    private JavaExceptionReporter(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, boolean z10) {
        this.mParent = uncaughtExceptionHandler;
        this.mCrashAfterReport = z10;
    }

    @CalledByNative
    private static void installHandler(boolean z10) {
        Thread.setDefaultUncaughtExceptionHandler(new JavaExceptionReporter(Thread.getDefaultUncaughtExceptionHandler(), z10));
    }

    public static void reportStackTrace(String str) {
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th2) {
        if (!this.mHandlingException) {
            this.mHandlingException = true;
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.mParent;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th2);
        }
    }
}
