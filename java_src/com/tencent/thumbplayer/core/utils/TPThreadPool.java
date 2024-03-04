package com.tencent.thumbplayer.core.utils;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.text.TextUtils;
import com.tencent.thumbplayer.core.common.TPNativeLog;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes4.dex */
public class TPThreadPool {
    private static final int CORE_POOL_SIZE = 1;
    private static final int MAX_POOL_SIZE = 20;
    private static final String PRE_THREAD_NAME = "TPCoreHdr";
    private static final String SHARE_THREAD_NAME = "TPCore-ShareThread";
    private static final String TAG = "TPCore[TPThreadPool]";
    private static volatile ExecutorService sCustomExecutor;
    private static volatile HandlerThread sHandlerThread;
    private static volatile TPThreadPool sInstance;
    private static volatile Handler sMainThreadHandler;
    private static volatile ScheduledExecutorService sScheduler;
    private static volatile ExecutorService sShareSingleExecutor;
    private static int sShareThreadCount;

    private TPThreadPool() {
    }

    public static TPThreadPool getInstance() {
        if (sInstance == null) {
            synchronized (TPThreadPool.class) {
                if (sInstance == null) {
                    sInstance = new TPThreadPool();
                }
            }
        }
        return sInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0027 A[Catch: all -> 0x003a, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:7:0x0010, B:11:0x001f, B:13:0x0027, B:14:0x0038, B:8:0x0014, B:10:0x001c), top: B:19:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void initHandlerThread() {
        /*
            java.lang.Class<com.tencent.thumbplayer.core.utils.TPThreadPool> r0 = com.tencent.thumbplayer.core.utils.TPThreadPool.class
            monitor-enter(r0)
            android.os.HandlerThread r1 = com.tencent.thumbplayer.core.utils.TPThreadPool.sHandlerThread     // Catch: java.lang.Throwable -> L3a
            if (r1 != 0) goto L14
            android.os.HandlerThread r1 = new android.os.HandlerThread     // Catch: java.lang.Throwable -> L3a
            java.lang.String r2 = "TPCore-ShareThread"
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L3a
            com.tencent.thumbplayer.core.utils.TPThreadPool.sHandlerThread = r1     // Catch: java.lang.Throwable -> L3a
        L10:
            r1.start()     // Catch: java.lang.Throwable -> L3a
            goto L1f
        L14:
            android.os.HandlerThread r1 = com.tencent.thumbplayer.core.utils.TPThreadPool.sHandlerThread     // Catch: java.lang.Throwable -> L3a
            boolean r1 = r1.isAlive()     // Catch: java.lang.Throwable -> L3a
            if (r1 != 0) goto L1f
            android.os.HandlerThread r1 = com.tencent.thumbplayer.core.utils.TPThreadPool.sHandlerThread     // Catch: java.lang.Throwable -> L3a
            goto L10
        L1f:
            android.os.HandlerThread r1 = com.tencent.thumbplayer.core.utils.TPThreadPool.sHandlerThread     // Catch: java.lang.Throwable -> L3a
            android.os.Looper r1 = r1.getLooper()     // Catch: java.lang.Throwable -> L3a
            if (r1 != 0) goto L38
            android.os.HandlerThread r1 = com.tencent.thumbplayer.core.utils.TPThreadPool.sHandlerThread     // Catch: java.lang.Throwable -> L3a
            r1.quit()     // Catch: java.lang.Throwable -> L3a
            android.os.HandlerThread r1 = new android.os.HandlerThread     // Catch: java.lang.Throwable -> L3a
            java.lang.String r2 = "TPCore-ShareThread"
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L3a
            com.tencent.thumbplayer.core.utils.TPThreadPool.sHandlerThread = r1     // Catch: java.lang.Throwable -> L3a
            r1.start()     // Catch: java.lang.Throwable -> L3a
        L38:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L3a
            return
        L3a:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L3a
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.core.utils.TPThreadPool.initHandlerThread():void");
    }

    private static void initMainThreadHandler() {
        if (sMainThreadHandler != null) {
            return;
        }
        synchronized (TPThreadPool.class) {
            if (sMainThreadHandler != null) {
                return;
            }
            Looper mainLooper = Looper.getMainLooper();
            if (mainLooper != null) {
                sMainThreadHandler = new Handler(mainLooper);
            } else {
                sMainThreadHandler = null;
                TPNativeLog.printLog(4, TAG, "cannot get thread looper");
            }
        }
    }

    public HandlerThread obtainHandleThread(String str) {
        return obtainHandleThread(str, 0);
    }

    public HandlerThread obtainHandleThread(String str, int i9) {
        i9 = (i9 >= 19 || i9 <= -19) ? 0 : 0;
        if (TextUtils.isEmpty(str)) {
            str = PRE_THREAD_NAME;
        }
        HandlerThread handlerThread = new HandlerThread(str, i9);
        handlerThread.start();
        return handlerThread;
    }

    public ScheduledExecutorService obtainScheduledExecutorService() {
        if (sScheduler == null) {
            synchronized (TPThreadPool.class) {
                if (sScheduler == null) {
                    sScheduler = Executors.newScheduledThreadPool(1);
                }
            }
        }
        return sScheduler;
    }

    public HandlerThread obtainShareThread() {
        HandlerThread handlerThread;
        initHandlerThread();
        synchronized (TPThreadPool.class) {
            sShareThreadCount++;
            TPNativeLog.printLog(2, TAG, "handlerThread obtainShareThread mShareThreadCount:" + sShareThreadCount);
            handlerThread = sHandlerThread;
        }
        return handlerThread;
    }

    public ExecutorService obtainSingleThreadExecutor() {
        if (sShareSingleExecutor == null) {
            synchronized (TPThreadPool.class) {
                if (sShareSingleExecutor == null) {
                    sShareSingleExecutor = Executors.newSingleThreadExecutor();
                }
            }
        }
        return sShareSingleExecutor;
    }

    public ExecutorService obtainThreadExecutor() {
        if (sCustomExecutor == null) {
            synchronized (TPThreadPool.class) {
                if (sCustomExecutor == null) {
                    sCustomExecutor = TPThreadPoolExecutor.newCustomThreadExecutor(1, 20);
                }
            }
        }
        return sCustomExecutor;
    }

    public void postDelayRunnableOnMainThread(Runnable runnable, long j10) {
        initMainThreadHandler();
        if (sMainThreadHandler != null) {
            sMainThreadHandler.postDelayed(runnable, j10);
        }
    }

    public void postRunnableOnMainThread(Runnable runnable) {
        initMainThreadHandler();
        if (sMainThreadHandler != null) {
            sMainThreadHandler.post(runnable);
        }
    }

    public void postRunnableOnMainThreadFront(Runnable runnable) {
        initMainThreadHandler();
        if (sMainThreadHandler != null) {
            sMainThreadHandler.postAtFrontOfQueue(runnable);
        }
    }

    public void recycle(HandlerThread handlerThread, Handler handler) {
        if (handlerThread == null) {
            return;
        }
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        if (!handlerThread.equals(sHandlerThread)) {
            handlerThread.quit();
            return;
        }
        synchronized (TPThreadPool.class) {
            sShareThreadCount--;
            TPNativeLog.printLog(2, TAG, "handlerThread recycle mShareThreadCount:" + sShareThreadCount);
        }
    }
}
