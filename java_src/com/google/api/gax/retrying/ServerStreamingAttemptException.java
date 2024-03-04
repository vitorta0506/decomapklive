package com.google.api.gax.retrying;
/* loaded from: classes2.dex */
public class ServerStreamingAttemptException extends RuntimeException {
    private final boolean canResume;
    private final boolean seenResponses;

    public ServerStreamingAttemptException(Throwable th2, boolean z10, boolean z11) {
        super(th2.getMessage(), th2);
        this.canResume = z10;
        this.seenResponses = z11;
    }

    public boolean canResume() {
        return this.canResume;
    }

    public boolean hasSeenResponses() {
        return this.seenResponses;
    }
}
