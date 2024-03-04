package com.tencent.liteav.base.logger;

import com.tencent.liteav.base.annotations.JNINamespace;
@JNINamespace("liteav")
/* loaded from: classes4.dex */
public class OnlineLoggerAndroid {
    private static final int INVALID_INSTANCE = -1;
    private long mNativeOnlineLoggerAndroid;

    /* loaded from: classes4.dex */
    public enum a {
        kApi(1),
        kInfo(2),
        kWarning(3),
        kError(4);
        
        int level;

        a(int i9) {
            this.level = i9;
        }
    }

    /* loaded from: classes4.dex */
    public enum b {
        kTRTC,
        kLive
    }

    public OnlineLoggerAndroid(b bVar, int i9, String str, String str2) {
        this.mNativeOnlineLoggerAndroid = -1L;
        this.mNativeOnlineLoggerAndroid = nativeCreate(bVar.ordinal(), i9, str, str2);
    }

    private static native long nativeCreate(int i9, int i10, String str, String str2);

    private static native void nativeDestroy(long j10);

    private static native void nativeLog(long j10, int i9, String str);

    public synchronized void destroy() {
        long j10 = this.mNativeOnlineLoggerAndroid;
        if (j10 == -1) {
            return;
        }
        nativeDestroy(j10);
        this.mNativeOnlineLoggerAndroid = -1L;
    }

    protected void finalize() throws Throwable {
        super.finalize();
        destroy();
    }

    public synchronized void log(a aVar, String str) {
        long j10 = this.mNativeOnlineLoggerAndroid;
        if (j10 == -1) {
            return;
        }
        nativeLog(j10, aVar.level, str);
    }
}
