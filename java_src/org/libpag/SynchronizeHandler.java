package org.libpag;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
/* loaded from: classes7.dex */
class SynchronizeHandler extends Handler {

    /* loaded from: classes7.dex */
    private static final class BlockingRunnable implements Runnable {
        private boolean isTimeout = false;
        private boolean mDone;
        private final TimeoutRunnable mTask;

        public BlockingRunnable(TimeoutRunnable timeoutRunnable) {
            this.mTask = timeoutRunnable;
        }

        public boolean postAndWait(Handler handler, long j10) {
            if (handler.post(this)) {
                synchronized (this) {
                    if (j10 > 0) {
                        long uptimeMillis = SystemClock.uptimeMillis() + j10;
                        while (!this.mDone) {
                            long uptimeMillis2 = uptimeMillis - SystemClock.uptimeMillis();
                            if (uptimeMillis2 <= 0) {
                                this.isTimeout = true;
                                return false;
                            }
                            try {
                                wait(uptimeMillis2);
                            } catch (InterruptedException unused) {
                            }
                        }
                    } else {
                        while (!this.mDone) {
                            try {
                                wait();
                            } catch (InterruptedException unused2) {
                            }
                        }
                    }
                    return true;
                }
            }
            return false;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.mTask.run();
                synchronized (this) {
                    this.mDone = true;
                    notifyAll();
                    this.mTask.afterRun(this.isTimeout);
                }
            } catch (Throwable th2) {
                synchronized (this) {
                    this.mDone = true;
                    notifyAll();
                    this.mTask.afterRun(this.isTimeout);
                    throw th2;
                }
            }
        }
    }

    /* loaded from: classes7.dex */
    interface TimeoutRunnable extends Runnable {
        void afterRun(boolean z10);
    }

    public SynchronizeHandler(Looper looper) {
        super(looper);
    }

    public final boolean runSync(TimeoutRunnable timeoutRunnable, long j10) {
        if (timeoutRunnable != null) {
            if (j10 >= 0) {
                if (Looper.myLooper() == getLooper()) {
                    timeoutRunnable.run();
                    return true;
                }
                return new BlockingRunnable(timeoutRunnable).postAndWait(this, j10);
            }
            throw new IllegalArgumentException("timeout must be non-negative");
        }
        throw new IllegalArgumentException("runnable must not be null");
    }
}
