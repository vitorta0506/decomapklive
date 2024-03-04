package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class w<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.c f52490b;

    /* loaded from: classes7.dex */
    static final class a<T> extends AtomicReference<th.b> implements io.reactivex.r<T>, io.reactivex.b, th.b {
        private static final long serialVersionUID = -1953724749712440952L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f52491a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.c f52492b;

        /* renamed from: c  reason: collision with root package name */
        boolean f52493c;

        a(io.reactivex.r<? super T> rVar, io.reactivex.c cVar) {
            this.f52491a = rVar;
            this.f52492b = cVar;
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
            if (this.f52493c) {
                this.f52491a.onComplete();
                return;
            }
            this.f52493c = true;
            DisposableHelper.replace(this, null);
            io.reactivex.c cVar = this.f52492b;
            this.f52492b = null;
            cVar.a(this);
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f52491a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            this.f52491a.onNext(t10);
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (!DisposableHelper.setOnce(this, bVar) || this.f52493c) {
                return;
            }
            this.f52491a.onSubscribe(this);
        }
    }

    public w(io.reactivex.k<T> kVar, io.reactivex.c cVar) {
        super(kVar);
        this.f52490b = cVar;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super T> rVar) {
        this.f51403a.subscribe(new a(rVar, this.f52490b));
    }
}
