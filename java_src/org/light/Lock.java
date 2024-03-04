package org.light;

import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes7.dex */
public class Lock {
    public static boolean FORCE_USE_COMMON_LOCK = false;
    private AtomicInteger count;
    private Semaphore lock;
    private boolean useCAS;

    public Lock(int i9) {
        this(i9, true);
    }

    public void acquire() {
        if (this.useCAS) {
            acquire("");
            return;
        }
        try {
            this.lock.acquire();
        } catch (InterruptedException e10) {
            e10.printStackTrace();
        }
    }

    public void release() {
        if (this.useCAS) {
            this.count.addAndGet(1);
        } else {
            this.lock.release();
        }
    }

    public Lock(int i9, boolean z10) {
        this.useCAS = z10;
        if (FORCE_USE_COMMON_LOCK) {
            this.useCAS = false;
        }
        if (this.useCAS) {
            this.count = new AtomicInteger(i9);
        } else {
            this.lock = new Semaphore(i9);
        }
    }

    public void acquire(String str) {
        if (this.useCAS) {
            do {
                Thread.yield();
            } while (this.count.get() == 0);
            this.count.decrementAndGet();
            return;
        }
        try {
            this.lock.acquire();
        } catch (InterruptedException e10) {
            e10.printStackTrace();
        }
    }
}
