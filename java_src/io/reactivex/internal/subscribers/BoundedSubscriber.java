package io.reactivex.internal.subscribers;

import il.c;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.f;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;
import th.b;
import vh.g;
/* loaded from: classes7.dex */
public final class BoundedSubscriber<T> extends AtomicReference<c> implements f<T>, c, b {
    private static final long serialVersionUID = -7251123623727029452L;
    final int bufferSize;
    int consumed;
    final int limit;
    final vh.a onComplete;
    final g<? super Throwable> onError;
    final g<? super T> onNext;
    final g<? super c> onSubscribe;

    public BoundedSubscriber(g<? super T> gVar, g<? super Throwable> gVar2, vh.a aVar, g<? super c> gVar3, int i9) {
        this.onNext = gVar;
        this.onError = gVar2;
        this.onComplete = aVar;
        this.onSubscribe = gVar3;
        this.bufferSize = i9;
        this.limit = i9 - (i9 >> 2);
    }

    @Override // il.c
    public void cancel() {
        SubscriptionHelper.cancel(this);
    }

    @Override // th.b
    public void dispose() {
        cancel();
    }

    public boolean hasCustomOnError() {
        return this.onError != xh.a.f59915f;
    }

    @Override // th.b
    public boolean isDisposed() {
        return get() == SubscriptionHelper.CANCELLED;
    }

    @Override // il.b
    public void onComplete() {
        c cVar = get();
        SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
        if (cVar != subscriptionHelper) {
            lazySet(subscriptionHelper);
            try {
                this.onComplete.run();
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                ci.a.s(th2);
            }
        }
    }

    @Override // il.b
    public void onError(Throwable th2) {
        c cVar = get();
        SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
        if (cVar != subscriptionHelper) {
            lazySet(subscriptionHelper);
            try {
                this.onError.accept(th2);
                return;
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                ci.a.s(new CompositeException(th2, th3));
                return;
            }
        }
        ci.a.s(th2);
    }

    @Override // il.b
    public void onNext(T t10) {
        if (isDisposed()) {
            return;
        }
        try {
            this.onNext.accept(t10);
            int i9 = this.consumed + 1;
            if (i9 == this.limit) {
                this.consumed = 0;
                get().request(this.limit);
            } else {
                this.consumed = i9;
            }
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            get().cancel();
            onError(th2);
        }
    }

    @Override // il.b
    public void onSubscribe(c cVar) {
        if (SubscriptionHelper.setOnce(this, cVar)) {
            try {
                this.onSubscribe.accept(this);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                cVar.cancel();
                onError(th2);
            }
        }
    }

    @Override // il.c
    public void request(long j10) {
        get().request(j10);
    }
}
