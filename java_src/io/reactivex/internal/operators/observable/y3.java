package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class y3 extends io.reactivex.k<Long> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.s f52615a;

    /* renamed from: b  reason: collision with root package name */
    final long f52616b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f52617c;

    /* loaded from: classes7.dex */
    static final class a extends AtomicReference<th.b> implements th.b, Runnable {
        private static final long serialVersionUID = -2809475196591179431L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super Long> f52618a;

        a(io.reactivex.r<? super Long> rVar) {
            this.f52618a = rVar;
        }

        public void b(th.b bVar) {
            DisposableHelper.trySet(this, bVar);
        }

        @Override // th.b
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // th.b
        public boolean isDisposed() {
            return get() == DisposableHelper.DISPOSED;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (isDisposed()) {
                return;
            }
            this.f52618a.onNext(0L);
            lazySet(EmptyDisposable.INSTANCE);
            this.f52618a.onComplete();
        }
    }

    public y3(long j10, TimeUnit timeUnit, io.reactivex.s sVar) {
        this.f52616b = j10;
        this.f52617c = timeUnit;
        this.f52615a = sVar;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super Long> rVar) {
        a aVar = new a(rVar);
        rVar.onSubscribe(aVar);
        aVar.b(this.f52615a.e(aVar, this.f52616b, this.f52617c));
    }
}
