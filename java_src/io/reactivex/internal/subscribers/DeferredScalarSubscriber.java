package io.reactivex.internal.subscribers;

import il.b;
import il.c;
import io.reactivex.f;
import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
/* loaded from: classes7.dex */
public abstract class DeferredScalarSubscriber<T, R> extends DeferredScalarSubscription<R> implements f<T> {
    private static final long serialVersionUID = 2984505488220891551L;
    protected boolean hasValue;
    protected c upstream;

    public DeferredScalarSubscriber(b<? super R> bVar) {
        super(bVar);
    }

    @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, io.reactivex.internal.subscriptions.BasicIntQueueSubscription, il.c
    public void cancel() {
        super.cancel();
        this.upstream.cancel();
    }

    @Override // il.b
    public void onComplete() {
        if (this.hasValue) {
            complete(this.value);
        } else {
            this.downstream.onComplete();
        }
    }

    @Override // il.b
    public void onError(Throwable th2) {
        this.value = null;
        this.downstream.onError(th2);
    }

    @Override // il.b
    public abstract /* synthetic */ void onNext(T t10);

    @Override // il.b
    public void onSubscribe(c cVar) {
        if (SubscriptionHelper.validate(this.upstream, cVar)) {
            this.upstream = cVar;
            this.downstream.onSubscribe(this);
            cVar.request(Long.MAX_VALUE);
        }
    }
}
