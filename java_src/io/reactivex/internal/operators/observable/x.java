package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class x<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.i<? extends T> f52530b;

    /* loaded from: classes7.dex */
    static final class a<T> extends AtomicReference<th.b> implements io.reactivex.r<T>, io.reactivex.h<T>, th.b {
        private static final long serialVersionUID = -1953724749712440952L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f52531a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.i<? extends T> f52532b;

        /* renamed from: c  reason: collision with root package name */
        boolean f52533c;

        a(io.reactivex.r<? super T> rVar, io.reactivex.i<? extends T> iVar) {
            this.f52531a = rVar;
            this.f52532b = iVar;
        }

        @Override // th.b
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // th.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f52533c) {
                this.f52531a.onComplete();
                return;
            }
            this.f52533c = true;
            DisposableHelper.replace(this, null);
            io.reactivex.i<? extends T> iVar = this.f52532b;
            this.f52532b = null;
            iVar.a(this);
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f52531a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            this.f52531a.onNext(t10);
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (!DisposableHelper.setOnce(this, bVar) || this.f52533c) {
                return;
            }
            this.f52531a.onSubscribe(this);
        }

        @Override // io.reactivex.h
        public void onSuccess(T t10) {
            this.f52531a.onNext(t10);
            this.f52531a.onComplete();
        }
    }

    public x(io.reactivex.k<T> kVar, io.reactivex.i<? extends T> iVar) {
        super(kVar);
        this.f52530b = iVar;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super T> rVar) {
        this.f51403a.subscribe(new a(rVar, this.f52530b));
    }
}
