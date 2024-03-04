package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.s;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class o1 extends io.reactivex.k<Long> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.s f52088a;

    /* renamed from: b  reason: collision with root package name */
    final long f52089b;

    /* renamed from: c  reason: collision with root package name */
    final long f52090c;

    /* renamed from: d  reason: collision with root package name */
    final long f52091d;

    /* renamed from: e  reason: collision with root package name */
    final long f52092e;

    /* renamed from: f  reason: collision with root package name */
    final TimeUnit f52093f;

    /* loaded from: classes7.dex */
    static final class a extends AtomicReference<th.b> implements th.b, Runnable {
        private static final long serialVersionUID = 1891866368734007884L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super Long> f52094a;

        /* renamed from: b  reason: collision with root package name */
        final long f52095b;

        /* renamed from: c  reason: collision with root package name */
        long f52096c;

        a(io.reactivex.r<? super Long> rVar, long j10, long j11) {
            this.f52094a = rVar;
            this.f52096c = j10;
            this.f52095b = j11;
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
            if (isDisposed()) {
                return;
            }
            long j10 = this.f52096c;
            this.f52094a.onNext(Long.valueOf(j10));
            if (j10 == this.f52095b) {
                DisposableHelper.dispose(this);
                this.f52094a.onComplete();
                return;
            }
            this.f52096c = j10 + 1;
        }
    }

    public o1(long j10, long j11, long j12, long j13, TimeUnit timeUnit, io.reactivex.s sVar) {
        this.f52091d = j12;
        this.f52092e = j13;
        this.f52093f = timeUnit;
        this.f52088a = sVar;
        this.f52089b = j10;
        this.f52090c = j11;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super Long> rVar) {
        a aVar = new a(rVar, this.f52089b, this.f52090c);
        rVar.onSubscribe(aVar);
        io.reactivex.s sVar = this.f52088a;
        if (sVar instanceof io.reactivex.internal.schedulers.j) {
            s.c b10 = sVar.b();
            aVar.b(b10);
            b10.f(aVar, this.f52091d, this.f52092e, this.f52093f);
            return;
        }
        aVar.b(sVar.f(aVar, this.f52091d, this.f52092e, this.f52093f));
    }
}
