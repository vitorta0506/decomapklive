package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class b0<T> extends io.reactivex.k<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.n<T> f51443a;

    /* loaded from: classes7.dex */
    static final class a<T> extends AtomicReference<th.b> implements io.reactivex.m<T>, th.b {
        private static final long serialVersionUID = -3434801548987643227L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f51444a;

        a(io.reactivex.r<? super T> rVar) {
            this.f51444a = rVar;
        }

        public void a(Throwable th2) {
            if (b(th2)) {
                return;
            }
            ci.a.s(th2);
        }

        public boolean b(Throwable th2) {
            if (th2 == null) {
                th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            if (isDisposed()) {
                return false;
            }
            try {
                this.f51444a.onError(th2);
                dispose();
                return true;
            } catch (Throwable th3) {
                dispose();
                throw th3;
            }
        }

        @Override // th.b
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.m, th.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.d
        public void onNext(T t10) {
            if (t10 == null) {
                a(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            } else if (isDisposed()) {
            } else {
                this.f51444a.onNext(t10);
            }
        }

        @Override // java.util.concurrent.atomic.AtomicReference
        public String toString() {
            return String.format("%s{%s}", a.class.getSimpleName(), super.toString());
        }
    }

    public b0(io.reactivex.n<T> nVar) {
        this.f51443a = nVar;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super T> rVar) {
        a aVar = new a(rVar);
        rVar.onSubscribe(aVar);
        try {
            this.f51443a.a(aVar);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            aVar.a(th2);
        }
    }
}
