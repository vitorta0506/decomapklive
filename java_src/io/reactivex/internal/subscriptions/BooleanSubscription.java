package io.reactivex.internal.subscriptions;

import il.c;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes7.dex */
public final class BooleanSubscription extends AtomicBoolean implements c {
    private static final long serialVersionUID = -8127758972444290902L;

    @Override // il.c
    public void cancel() {
        lazySet(true);
    }

    public boolean isCancelled() {
        return get();
    }

    @Override // il.c
    public void request(long j10) {
        SubscriptionHelper.validate(j10);
    }

    @Override // java.util.concurrent.atomic.AtomicBoolean
    public String toString() {
        return "BooleanSubscription(cancelled=" + get() + ")";
    }
}
