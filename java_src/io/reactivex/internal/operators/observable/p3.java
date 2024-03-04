package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes7.dex */
public final class p3<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f52177b;

    /* renamed from: c  reason: collision with root package name */
    final long f52178c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f52179d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.s f52180e;

    /* renamed from: f  reason: collision with root package name */
    final int f52181f;

    /* renamed from: g  reason: collision with root package name */
    final boolean f52182g;

    /* loaded from: classes7.dex */
    static final class a<T> extends AtomicBoolean implements io.reactivex.r<T>, th.b {
        private static final long serialVersionUID = -5677354903406201275L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f52183a;

        /* renamed from: b  reason: collision with root package name */
        final long f52184b;

        /* renamed from: c  reason: collision with root package name */
        final long f52185c;

        /* renamed from: d  reason: collision with root package name */
        final TimeUnit f52186d;

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.s f52187e;

        /* renamed from: f  reason: collision with root package name */
        final io.reactivex.internal.queue.b<Object> f52188f;

        /* renamed from: g  reason: collision with root package name */
        final boolean f52189g;

        /* renamed from: h  reason: collision with root package name */
        th.b f52190h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f52191i;

        /* renamed from: j  reason: collision with root package name */
        Throwable f52192j;

        a(io.reactivex.r<? super T> rVar, long j10, long j11, TimeUnit timeUnit, io.reactivex.s sVar, int i9, boolean z10) {
            this.f52183a = rVar;
            this.f52184b = j10;
            this.f52185c = j11;
            this.f52186d = timeUnit;
            this.f52187e = sVar;
            this.f52188f = new io.reactivex.internal.queue.b<>(i9);
            this.f52189g = z10;
        }

        void a() {
            Throwable th2;
            if (compareAndSet(false, true)) {
                io.reactivex.r<? super T> rVar = this.f52183a;
                io.reactivex.internal.queue.b<Object> bVar = this.f52188f;
                boolean z10 = this.f52189g;
                long c10 = this.f52187e.c(this.f52186d) - this.f52185c;
                while (!this.f52191i) {
                    if (!z10 && (th2 = this.f52192j) != null) {
                        bVar.clear();
                        rVar.onError(th2);
                        return;
                    }
                    Object poll = bVar.poll();
                    if (poll == null) {
                        Throwable th3 = this.f52192j;
                        if (th3 != null) {
                            rVar.onError(th3);
                            return;
                        } else {
                            rVar.onComplete();
                            return;
                        }
                    }
                    Object poll2 = bVar.poll();
                    if (((Long) poll).longValue() >= c10) {
                        rVar.onNext(poll2);
                    }
                }
                bVar.clear();
            }
        }

        @Override // th.b
        public void dispose() {
            if (this.f52191i) {
                return;
            }
            this.f52191i = true;
            this.f52190h.dispose();
            if (compareAndSet(false, true)) {
                this.f52188f.clear();
            }
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52191i;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            a();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f52192j = th2;
            a();
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            io.reactivex.internal.queue.b<Object> bVar = this.f52188f;
            long c10 = this.f52187e.c(this.f52186d);
            long j10 = this.f52185c;
            long j11 = this.f52184b;
            boolean z10 = j11 == Long.MAX_VALUE;
            bVar.l(Long.valueOf(c10), t10);
            while (!bVar.isEmpty()) {
                if (((Long) bVar.m()).longValue() > c10 - j10 && (z10 || (bVar.o() >> 1) <= j11)) {
                    return;
                }
                bVar.poll();
                bVar.poll();
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f52190h, bVar)) {
                this.f52190h = bVar;
                this.f52183a.onSubscribe(this);
            }
        }
    }

    public p3(io.reactivex.p<T> pVar, long j10, long j11, TimeUnit timeUnit, io.reactivex.s sVar, int i9, boolean z10) {
        super(pVar);
        this.f52177b = j10;
        this.f52178c = j11;
        this.f52179d = timeUnit;
        this.f52180e = sVar;
        this.f52181f = i9;
        this.f52182g = z10;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super T> rVar) {
        this.f51403a.subscribe(new a(rVar, this.f52177b, this.f52178c, this.f52179d, this.f52180e, this.f52181f, this.f52182g));
    }
}
