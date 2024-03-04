package org.light.utils;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes7.dex */
public final class HandlerUtil {
    public static void waitDone(Handler handler) {
        if (handler == null) {
            return;
        }
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        Runnable runnable = new Runnable() { // from class: org.light.utils.HandlerUtil.1
            @Override // java.lang.Runnable
            public final void run() {
                countDownLatch.countDown();
            }
        };
        if (Looper.myLooper() == handler.getLooper()) {
            runnable.run();
        } else {
            handler.post(runnable);
        }
        try {
            countDownLatch.await();
        } catch (InterruptedException e10) {
            e10.printStackTrace();
        }
    }

    public static void waitDone(Handler handler, int i9) {
        if (handler == null) {
            return;
        }
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        Runnable runnable = new Runnable() { // from class: org.light.utils.HandlerUtil.2
            @Override // java.lang.Runnable
            public final void run() {
                countDownLatch.countDown();
            }
        };
        if (Looper.myLooper() == handler.getLooper()) {
            runnable.run();
        } else {
            handler.post(runnable);
        }
        try {
            countDownLatch.await(i9, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e10) {
            e10.printStackTrace();
        }
    }
}
