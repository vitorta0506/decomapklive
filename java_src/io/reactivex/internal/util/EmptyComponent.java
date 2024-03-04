package io.reactivex.internal.util;

import io.reactivex.r;
import io.reactivex.u;
/* loaded from: classes7.dex */
public enum EmptyComponent implements io.reactivex.f<Object>, r<Object>, io.reactivex.h<Object>, u<Object>, io.reactivex.b, il.c, th.b {
    INSTANCE;

    public static <T> r<T> asObserver() {
        return INSTANCE;
    }

    public static <T> il.b<T> asSubscriber() {
        return INSTANCE;
    }

    @Override // il.c
    public void cancel() {
    }

    @Override // th.b
    public void dispose() {
    }

    @Override // th.b
    public boolean isDisposed() {
        return true;
    }

    @Override // il.b
    public void onComplete() {
    }

    @Override // il.b
    public void onError(Throwable th2) {
        ci.a.s(th2);
    }

    @Override // il.b
    public void onNext(Object obj) {
    }

    @Override // io.reactivex.r
    public void onSubscribe(th.b bVar) {
        bVar.dispose();
    }

    @Override // io.reactivex.h
    public void onSuccess(Object obj) {
    }

    @Override // il.c
    public void request(long j10) {
    }

    @Override // il.b
    public void onSubscribe(il.c cVar) {
        cVar.cancel();
    }
}
