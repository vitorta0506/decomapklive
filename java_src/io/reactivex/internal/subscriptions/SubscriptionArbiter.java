package io.reactivex.internal.subscriptions;

import il.c;
import io.reactivex.internal.util.b;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public class SubscriptionArbiter extends AtomicInteger implements c {
    private static final long serialVersionUID = -2189523197179400958L;
    c actual;
    final boolean cancelOnReplace;
    volatile boolean cancelled;
    long requested;
    protected boolean unbounded;
    final AtomicReference<c> missedSubscription = new AtomicReference<>();
    final AtomicLong missedRequested = new AtomicLong();
    final AtomicLong missedProduced = new AtomicLong();

    public SubscriptionArbiter(boolean z10) {
        this.cancelOnReplace = z10;
    }

    @Override // il.c
    public void cancel() {
        if (this.cancelled) {
            return;
        }
        this.cancelled = true;
        drain();
    }

    final void drain() {
        if (getAndIncrement() != 0) {
            return;
        }
        drainLoop();
    }

    final void drainLoop() {
        int i9 = 1;
        c cVar = null;
        long j10 = 0;
        do {
            c cVar2 = this.missedSubscription.get();
            if (cVar2 != null) {
                cVar2 = this.missedSubscription.getAndSet(null);
            }
            long j11 = this.missedRequested.get();
            if (j11 != 0) {
                j11 = this.missedRequested.getAndSet(0L);
            }
            long j12 = this.missedProduced.get();
            if (j12 != 0) {
                j12 = this.missedProduced.getAndSet(0L);
            }
            c cVar3 = this.actual;
            if (this.cancelled) {
                if (cVar3 != null) {
                    cVar3.cancel();
                    this.actual = null;
                }
                if (cVar2 != null) {
                    cVar2.cancel();
                }
            } else {
                long j13 = this.requested;
                if (j13 != Long.MAX_VALUE) {
                    j13 = b.b(j13, j11);
                    if (j13 != Long.MAX_VALUE) {
                        j13 -= j12;
                        if (j13 < 0) {
                            SubscriptionHelper.reportMoreProduced(j13);
                            j13 = 0;
                        }
                    }
                    this.requested = j13;
                }
                if (cVar2 != null) {
                    if (cVar3 != null && this.cancelOnReplace) {
                        cVar3.cancel();
                    }
                    this.actual = cVar2;
                    if (j13 != 0) {
                        j10 = b.b(j10, j13);
                        cVar = cVar2;
                    }
                } else if (cVar3 != null && j11 != 0) {
                    j10 = b.b(j10, j11);
                    cVar = cVar3;
                }
            }
            i9 = addAndGet(-i9);
        } while (i9 != 0);
        if (j10 != 0) {
            cVar.request(j10);
        }
    }

    public final boolean isCancelled() {
        return this.cancelled;
    }

    public final boolean isUnbounded() {
        return this.unbounded;
    }

    public final void produced(long j10) {
        if (this.unbounded) {
            return;
        }
        if (get() == 0 && compareAndSet(0, 1)) {
            long j11 = this.requested;
            if (j11 != Long.MAX_VALUE) {
                long j12 = j11 - j10;
                if (j12 < 0) {
                    SubscriptionHelper.reportMoreProduced(j12);
                    j12 = 0;
                }
                this.requested = j12;
            }
            if (decrementAndGet() == 0) {
                return;
            }
            drainLoop();
            return;
        }
        b.a(this.missedProduced, j10);
        drain();
    }

    @Override // il.c
    public final void request(long j10) {
        if (!SubscriptionHelper.validate(j10) || this.unbounded) {
            return;
        }
        if (get() == 0 && compareAndSet(0, 1)) {
            long j11 = this.requested;
            if (j11 != Long.MAX_VALUE) {
                long b10 = b.b(j11, j10);
                this.requested = b10;
                if (b10 == Long.MAX_VALUE) {
                    this.unbounded = true;
                }
            }
            c cVar = this.actual;
            if (decrementAndGet() != 0) {
                drainLoop();
            }
            if (cVar != null) {
                cVar.request(j10);
                return;
            }
            return;
        }
        b.a(this.missedRequested, j10);
        drain();
    }

    public final void setSubscription(c cVar) {
        if (this.cancelled) {
            cVar.cancel();
            return;
        }
        xh.b.e(cVar, "s is null");
        if (get() == 0 && compareAndSet(0, 1)) {
            c cVar2 = this.actual;
            if (cVar2 != null && this.cancelOnReplace) {
                cVar2.cancel();
            }
            this.actual = cVar;
            long j10 = this.requested;
            if (decrementAndGet() != 0) {
                drainLoop();
            }
            if (j10 != 0) {
                cVar.request(j10);
                return;
            }
            return;
        }
        c andSet = this.missedSubscription.getAndSet(cVar);
        if (andSet != null && this.cancelOnReplace) {
            andSet.cancel();
        }
        drain();
    }
}
