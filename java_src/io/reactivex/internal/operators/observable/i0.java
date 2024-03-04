package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.EmptyComponent;
/* loaded from: classes7.dex */
public final class i0<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* loaded from: classes7.dex */
    static final class a<T> implements io.reactivex.r<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        io.reactivex.r<? super T> f51799a;

        /* renamed from: b  reason: collision with root package name */
        th.b f51800b;

        a(io.reactivex.r<? super T> rVar) {
            this.f51799a = rVar;
        }

        @Override // th.b
        public void dispose() {
            th.b bVar = this.f51800b;
            this.f51800b = EmptyComponent.INSTANCE;
            this.f51799a = EmptyComponent.asObserver();
            bVar.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51800b.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            io.reactivex.r<? super T> rVar = this.f51799a;
            this.f51800b = EmptyComponent.INSTANCE;
            this.f51799a = EmptyComponent.asObserver();
            rVar.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            io.reactivex.r<? super T> rVar = this.f51799a;
            this.f51800b = EmptyComponent.INSTANCE;
            this.f51799a = EmptyComponent.asObserver();
            rVar.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            this.f51799a.onNext(t10);
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f51800b, bVar)) {
                this.f51800b = bVar;
                this.f51799a.onSubscribe(this);
            }
        }
    }

    public i0(io.reactivex.p<T> pVar) {
        super(pVar);
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super T> rVar) {
        this.f51403a.subscribe(new a(rVar));
    }
}
