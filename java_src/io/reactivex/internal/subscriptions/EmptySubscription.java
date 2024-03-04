package io.reactivex.internal.subscriptions;

import il.b;
import yh.d;
/* loaded from: classes7.dex */
public enum EmptySubscription implements d<Object> {
    INSTANCE;

    public static void complete(b<?> bVar) {
        bVar.onSubscribe(INSTANCE);
        bVar.onComplete();
    }

    public static void error(Throwable th2, b<?> bVar) {
        bVar.onSubscribe(INSTANCE);
        bVar.onError(th2);
    }

    @Override // il.c
    public void cancel() {
    }

    @Override // yh.g
    public void clear() {
    }

    @Override // yh.g
    public boolean isEmpty() {
        return true;
    }

    @Override // yh.g
    public boolean offer(Object obj) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // yh.g
    public Object poll() {
        return null;
    }

    @Override // il.c
    public void request(long j10) {
        SubscriptionHelper.validate(j10);
    }

    @Override // yh.c
    public int requestFusion(int i9) {
        return i9 & 2;
    }

    @Override // java.lang.Enum
    public String toString() {
        return "EmptySubscription";
    }

    public boolean offer(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
