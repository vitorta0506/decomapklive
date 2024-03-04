package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes7.dex */
public final class b4<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.s f51465b;

    /* loaded from: classes7.dex */
    static final class a<T> extends AtomicBoolean implements io.reactivex.r<T>, th.b {
        private static final long serialVersionUID = 1015244841293359600L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f51466a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.s f51467b;

        /* renamed from: c  reason: collision with root package name */
        th.b f51468c;

        /* renamed from: io.reactivex.internal.operators.observable.b4$a$a  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        final class RunnableC0510a implements Runnable {
            RunnableC0510a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f51468c.dispose();
            }
        }

        a(io.reactivex.r<? super T> rVar, io.reactivex.s sVar) {
            this.f51466a = rVar;
            this.f51467b = sVar;
        }

        @Override // th.b
        public void dispose() {
            if (compareAndSet(false, true)) {
                this.f51467b.d(new RunnableC0510a());
            }
        }

        @Override // th.b
        public boolean isDisposed() {
            return get();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (get()) {
                return;
            }
            this.f51466a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (get()) {
                ci.a.s(th2);
            } else {
                this.f51466a.onError(th2);
            }
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (get()) {
                return;
            }
            this.f51466a.onNext(t10);
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f51468c, bVar)) {
                this.f51468c = bVar;
                this.f51466a.onSubscribe(this);
            }
        }
    }

    public b4(io.reactivex.p<T> pVar, io.reactivex.s sVar) {
        super(pVar);
        this.f51465b = sVar;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super T> rVar) {
        this.f51403a.subscribe(new a(rVar, this.f51465b));
    }
}
