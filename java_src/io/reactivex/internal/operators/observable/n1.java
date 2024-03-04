package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.s;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class n1 extends io.reactivex.k<Long> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.s f52052a;

    /* renamed from: b  reason: collision with root package name */
    final long f52053b;

    /* renamed from: c  reason: collision with root package name */
    final long f52054c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f52055d;

    /* loaded from: classes7.dex */
    static final class a extends AtomicReference<th.b> implements th.b, Runnable {
        private static final long serialVersionUID = 346773832286157679L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super Long> f52056a;

        /* renamed from: b  reason: collision with root package name */
        long f52057b;

        a(io.reactivex.r<? super Long> rVar) {
            this.f52056a = rVar;
        }

        public void b(th.b bVar) {
            DisposableHelper.setOnce(this, bVar);
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
            if (get() != DisposableHelper.DISPOSED) {
                io.reactivex.r<? super Long> rVar = this.f52056a;
                long j10 = this.f52057b;
                this.f52057b = 1 + j10;
                rVar.onNext(Long.valueOf(j10));
            }
        }
    }

    public n1(long j10, long j11, TimeUnit timeUnit, io.reactivex.s sVar) {
        this.f52053b = j10;
        this.f52054c = j11;
        this.f52055d = timeUnit;
        this.f52052a = sVar;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super Long> rVar) {
        a aVar = new a(rVar);
        rVar.onSubscribe(aVar);
        io.reactivex.s sVar = this.f52052a;
        if (sVar instanceof io.reactivex.internal.schedulers.j) {
            s.c b10 = sVar.b();
            aVar.b(b10);
            b10.f(aVar, this.f52053b, this.f52054c, this.f52055d);
            return;
        }
        aVar.b(sVar.f(aVar, this.f52053b, this.f52054c, this.f52055d));
    }
}
