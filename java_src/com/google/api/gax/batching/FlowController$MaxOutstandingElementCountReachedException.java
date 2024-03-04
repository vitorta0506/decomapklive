package com.google.api.gax.batching;
/* loaded from: classes2.dex */
public final class FlowController$MaxOutstandingElementCountReachedException extends FlowController$FlowControlException {
    private final long currentMaxElementCount;

    public FlowController$MaxOutstandingElementCountReachedException(long j10) {
        super();
        this.currentMaxElementCount = j10;
    }

    public long getCurrentMaxBatchElementCount() {
        return this.currentMaxElementCount;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return String.format("The maximum number of batch elements: %d have been reached.", Long.valueOf(this.currentMaxElementCount));
    }
}
