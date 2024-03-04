package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.ArrayDeque;
/* loaded from: classes7.dex */
public final class f3<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final int f51643b;

    /* loaded from: classes7.dex */
    static final class a<T> extends ArrayDeque<T> implements io.reactivex.r<T>, th.b {
        private static final long serialVersionUID = -3807491841935125653L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f51644a;

        /* renamed from: b  reason: collision with root package name */
        final int f51645b;

        /* renamed from: c  reason: collision with root package name */
        th.b f51646c;

        a(io.reactivex.r<? super T> rVar, int i9) {
            super(i9);
            this.f51644a = rVar;
            this.f51645b = i9;
        }

        @Override // th.b
        public void dispose() {
            this.f51646c.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51646c.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f51644a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f51644a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f51645b == size()) {
                this.f51644a.onNext((T) poll());
            }
            offer(t10);
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f51646c, bVar)) {
                this.f51646c = bVar;
                this.f51644a.onSubscribe(this);
            }
        }
    }

    public f3(io.reactivex.p<T> pVar, int i9) {
        super(pVar);
        this.f51643b = i9;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super T> rVar) {
        this.f51403a.subscribe(new a(rVar, this.f51643b));
    }
}
