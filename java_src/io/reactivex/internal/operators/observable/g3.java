package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes7.dex */
public final class g3<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f51679b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f51680c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.s f51681d;

    /* renamed from: e  reason: collision with root package name */
    final int f51682e;

    /* renamed from: f  reason: collision with root package name */
    final boolean f51683f;

    /* loaded from: classes7.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.r<T>, th.b {
        private static final long serialVersionUID = -5677354903406201275L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f51684a;

        /* renamed from: b  reason: collision with root package name */
        final long f51685b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f51686c;

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.s f51687d;

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.internal.queue.b<Object> f51688e;

        /* renamed from: f  reason: collision with root package name */
        final boolean f51689f;

        /* renamed from: g  reason: collision with root package name */
        th.b f51690g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f51691h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f51692i;

        /* renamed from: j  reason: collision with root package name */
        Throwable f51693j;

        a(io.reactivex.r<? super T> rVar, long j10, TimeUnit timeUnit, io.reactivex.s sVar, int i9, boolean z10) {
            this.f51684a = rVar;
            this.f51685b = j10;
            this.f51686c = timeUnit;
            this.f51687d = sVar;
            this.f51688e = new io.reactivex.internal.queue.b<>(i9);
            this.f51689f = z10;
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.r<? super T> rVar = this.f51684a;
            io.reactivex.internal.queue.b<Object> bVar = this.f51688e;
            boolean z10 = this.f51689f;
            TimeUnit timeUnit = this.f51686c;
            io.reactivex.s sVar = this.f51687d;
            long j10 = this.f51685b;
            int i9 = 1;
            while (!this.f51691h) {
                boolean z11 = this.f51692i;
                Long l10 = (Long) bVar.m();
                boolean z12 = l10 == null;
                long c10 = sVar.c(timeUnit);
                if (!z12 && l10.longValue() > c10 - j10) {
                    z12 = true;
                }
                if (z11) {
                    if (!z10) {
                        Throwable th2 = this.f51693j;
                        if (th2 != null) {
                            this.f51688e.clear();
                            rVar.onError(th2);
                            return;
                        } else if (z12) {
                            rVar.onComplete();
                            return;
                        }
                    } else if (z12) {
                        Throwable th3 = this.f51693j;
                        if (th3 != null) {
                            rVar.onError(th3);
                            return;
                        } else {
                            rVar.onComplete();
                            return;
                        }
                    }
                }
                if (z12) {
                    i9 = addAndGet(-i9);
                    if (i9 == 0) {
                        return;
                    }
                } else {
                    bVar.poll();
                    rVar.onNext(bVar.poll());
                }
            }
            this.f51688e.clear();
        }

        @Override // th.b
        public void dispose() {
            if (this.f51691h) {
                return;
            }
            this.f51691h = true;
            this.f51690g.dispose();
            if (getAndIncrement() == 0) {
                this.f51688e.clear();
            }
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51691h;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f51692i = true;
            a();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f51693j = th2;
            this.f51692i = true;
            a();
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            this.f51688e.l(Long.valueOf(this.f51687d.c(this.f51686c)), t10);
            a();
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f51690g, bVar)) {
                this.f51690g = bVar;
                this.f51684a.onSubscribe(this);
            }
        }
    }

    public g3(io.reactivex.p<T> pVar, long j10, TimeUnit timeUnit, io.reactivex.s sVar, int i9, boolean z10) {
        super(pVar);
        this.f51679b = j10;
        this.f51680c = timeUnit;
        this.f51681d = sVar;
        this.f51682e = i9;
        this.f51683f = z10;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super T> rVar) {
        this.f51403a.subscribe(new a(rVar, this.f51679b, this.f51680c, this.f51681d, this.f51682e, this.f51683f));
    }
}
