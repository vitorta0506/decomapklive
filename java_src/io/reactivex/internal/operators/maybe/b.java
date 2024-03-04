package io.reactivex.internal.operators.maybe;

import io.reactivex.h;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.observers.DeferredScalarDisposable;
import io.reactivex.k;
import io.reactivex.r;
/* loaded from: classes7.dex */
public final class b<T> extends k<T> {

    /* loaded from: classes7.dex */
    static final class a<T> extends DeferredScalarDisposable<T> implements h<T> {
        private static final long serialVersionUID = 7603343402964826922L;

        /* renamed from: a  reason: collision with root package name */
        th.b f51386a;

        a(r<? super T> rVar) {
            super(rVar);
        }

        @Override // io.reactivex.internal.observers.DeferredScalarDisposable, io.reactivex.internal.observers.BasicIntQueueDisposable, th.b
        public void dispose() {
            super.dispose();
            this.f51386a.dispose();
        }

        @Override // io.reactivex.h
        public void onComplete() {
            complete();
        }

        @Override // io.reactivex.h
        public void onError(Throwable th2) {
            error(th2);
        }

        @Override // io.reactivex.h
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f51386a, bVar)) {
                this.f51386a = bVar;
                this.downstream.onSubscribe(this);
            }
        }

        @Override // io.reactivex.h
        public void onSuccess(T t10) {
            complete(t10);
        }
    }

    public static <T> h<T> c(r<? super T> rVar) {
        return new a(rVar);
    }
}
