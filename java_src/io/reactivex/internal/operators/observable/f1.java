package io.reactivex.internal.operators.observable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
/* loaded from: classes7.dex */
public final class f1<T> extends io.reactivex.k<T> {

    /* renamed from: a  reason: collision with root package name */
    final il.a<? extends T> f51631a;

    /* loaded from: classes7.dex */
    static final class a<T> implements io.reactivex.f<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f51632a;

        /* renamed from: b  reason: collision with root package name */
        il.c f51633b;

        a(io.reactivex.r<? super T> rVar) {
            this.f51632a = rVar;
        }

        @Override // th.b
        public void dispose() {
            this.f51633b.cancel();
            this.f51633b = SubscriptionHelper.CANCELLED;
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51633b == SubscriptionHelper.CANCELLED;
        }

        @Override // il.b
        public void onComplete() {
            this.f51632a.onComplete();
        }

        @Override // il.b
        public void onError(Throwable th2) {
            this.f51632a.onError(th2);
        }

        @Override // il.b
        public void onNext(T t10) {
            this.f51632a.onNext(t10);
        }

        @Override // il.b
        public void onSubscribe(il.c cVar) {
            if (SubscriptionHelper.validate(this.f51633b, cVar)) {
                this.f51633b = cVar;
                this.f51632a.onSubscribe(this);
                cVar.request(Long.MAX_VALUE);
            }
        }
    }

    public f1(il.a<? extends T> aVar) {
        this.f51631a = aVar;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super T> rVar) {
        this.f51631a.a(new a(rVar));
    }
}
