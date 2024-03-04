package io.reactivex.internal.subscribers;

import il.c;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.f;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;
import th.b;
import vh.g;
import vh.q;
/* loaded from: classes7.dex */
public final class ForEachWhileSubscriber<T> extends AtomicReference<c> implements f<T>, b {
    private static final long serialVersionUID = -4403180040475402120L;
    boolean done;
    final vh.a onComplete;
    final g<? super Throwable> onError;
    final q<? super T> onNext;

    public ForEachWhileSubscriber(q<? super T> qVar, g<? super Throwable> gVar, vh.a aVar) {
        this.onNext = qVar;
        this.onError = gVar;
        this.onComplete = aVar;
    }

    @Override // th.b
    public void dispose() {
        SubscriptionHelper.cancel(this);
    }

    @Override // th.b
    public boolean isDisposed() {
        return get() == SubscriptionHelper.CANCELLED;
    }

    @Override // il.b
    public void onComplete() {
        if (this.done) {
            return;
        }
        this.done = true;
        try {
            this.onComplete.run();
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            ci.a.s(th2);
        }
    }

    @Override // il.b
    public void onError(Throwable th2) {
        if (this.done) {
            ci.a.s(th2);
            return;
        }
        this.done = true;
        try {
            this.onError.accept(th2);
        } catch (Throwable th3) {
            io.reactivex.exceptions.a.b(th3);
            ci.a.s(new CompositeException(th2, th3));
        }
    }

    @Override // il.b
    public void onNext(T t10) {
        if (this.done) {
            return;
        }
        try {
            if (this.onNext.test(t10)) {
                return;
            }
            dispose();
            onComplete();
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            dispose();
            onError(th2);
        }
    }

    @Override // il.b
    public void onSubscribe(c cVar) {
        SubscriptionHelper.setOnce(this, cVar, Long.MAX_VALUE);
    }
}
