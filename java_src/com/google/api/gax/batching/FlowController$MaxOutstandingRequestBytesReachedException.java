package com.google.api.gax.batching;
/* loaded from: classes2.dex */
public final class FlowController$MaxOutstandingRequestBytesReachedException extends FlowController$FlowControlException {
    private final long currentMaxBytes;

    public FlowController$MaxOutstandingRequestBytesReachedException(long j10) {
        super();
        this.currentMaxBytes = j10;
    }

    public long getCurrentMaxBatchBytes() {
        return this.currentMaxBytes;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return String.format("The maximum number of batch bytes: %d have been reached.", Long.valueOf(this.currentMaxBytes));
    }
}
