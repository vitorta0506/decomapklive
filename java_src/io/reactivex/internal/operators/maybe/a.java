package io.reactivex.internal.operators.maybe;

import io.reactivex.e;
import io.reactivex.h;
import io.reactivex.i;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
/* loaded from: classes7.dex */
public final class a<T> extends e<T> {

    /* renamed from: b  reason: collision with root package name */
    final i<T> f51384b;

    /* renamed from: io.reactivex.internal.operators.maybe.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    static final class C0509a<T> extends DeferredScalarSubscription<T> implements h<T> {
        private static final long serialVersionUID = 7603343402964826922L;

        /* renamed from: a  reason: collision with root package name */
        th.b f51385a;

        C0509a(il.b<? super T> bVar) {
            super(bVar);
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, io.reactivex.internal.subscriptions.BasicIntQueueSubscription, il.c
        public void cancel() {
            super.cancel();
            this.f51385a.dispose();
        }

        @Override // io.reactivex.h
        public void onComplete() {
            this.downstream.onComplete();
        }

        @Override // io.reactivex.h
        public void onError(Throwable th2) {
            this.downstream.onError(th2);
        }

        @Override // io.reactivex.h
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f51385a, bVar)) {
                this.f51385a = bVar;
                this.downstream.onSubscribe(this);
            }
        }

        @Override // io.reactivex.h
        public void onSuccess(T t10) {
            complete(t10);
        }
    }

    public a(i<T> iVar) {
        this.f51384b = iVar;
    }

    @Override // io.reactivex.e
    protected void h(il.b<? super T> bVar) {
        this.f51384b.a(new C0509a(bVar));
    }
}
