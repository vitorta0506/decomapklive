package io.reactivex.parallel;

import vh.c;
/* loaded from: classes7.dex */
public enum ParallelFailureHandling implements c<Long, Throwable, ParallelFailureHandling> {
    STOP,
    ERROR,
    SKIP,
    RETRY;

    @Override // vh.c
    public ParallelFailureHandling apply(Long l10, Throwable th2) {
        return this;
    }
}
