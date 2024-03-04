package io.reactivex.internal.util;

import java.util.concurrent.CountDownLatch;
/* loaded from: classes7.dex */
public final class c {
    public static void a(CountDownLatch countDownLatch, th.b bVar) {
        if (countDownLatch.getCount() == 0) {
            return;
        }
        try {
            b();
            countDownLatch.await();
        } catch (InterruptedException e10) {
            bVar.dispose();
            Thread.currentThread().interrupt();
            throw new IllegalStateException("Interrupted while waiting for subscription to complete.", e10);
        }
    }

    public static void b() {
        if (ci.a.j()) {
            if ((Thread.currentThread() instanceof io.reactivex.internal.schedulers.g) || ci.a.q()) {
                throw new IllegalStateException("Attempt to block on a Scheduler " + Thread.currentThread().getName() + " that doesn't support blocking operators as they may lead to deadlock");
            }
        }
    }
}
