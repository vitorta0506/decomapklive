package io.reactivex.internal.operators.observable;

import io.reactivex.internal.observers.BasicIntQueueDisposable;
/* loaded from: classes7.dex */
public final class j2 extends io.reactivex.k<Long> {

    /* renamed from: a  reason: collision with root package name */
    private final long f51858a;

    /* renamed from: b  reason: collision with root package name */
    private final long f51859b;

    /* loaded from: classes7.dex */
    static final class a extends BasicIntQueueDisposable<Long> {
        private static final long serialVersionUID = 396518478098735504L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super Long> f51860a;

        /* renamed from: b  reason: collision with root package name */
        final long f51861b;

        /* renamed from: c  reason: collision with root package name */
        long f51862c;

        /* renamed from: d  reason: collision with root package name */
        boolean f51863d;

        a(io.reactivex.r<? super Long> rVar, long j10, long j11) {
            this.f51860a = rVar;
            this.f51862c = j10;
            this.f51861b = j11;
        }

        @Override // io.reactivex.internal.observers.BasicIntQueueDisposable, yh.g
        /* renamed from: b */
        public Long poll() throws Exception {
            long j10 = this.f51862c;
            if (j10 != this.f51861b) {
                this.f51862c = 1 + j10;
                return Long.valueOf(j10);
            }
            lazySet(1);
            return null;
        }

        @Override // io.reactivex.internal.observers.BasicIntQueueDisposable, yh.g
        public void clear() {
            this.f51862c = this.f51861b;
            lazySet(1);
        }

        @Override // io.reactivex.internal.observers.BasicIntQueueDisposable, th.b
        public void dispose() {
            set(1);
        }

        @Override // io.reactivex.internal.observers.BasicIntQueueDisposable, th.b
        public boolean isDisposed() {
            return get() != 0;
        }

        @Override // io.reactivex.internal.observers.BasicIntQueueDisposable, yh.g
        public boolean isEmpty() {
            return this.f51862c == this.f51861b;
        }

        @Override // io.reactivex.internal.observers.BasicIntQueueDisposable, yh.c
        public int requestFusion(int i9) {
            if ((i9 & 1) != 0) {
                this.f51863d = true;
                return 1;
            }
            return 0;
        }

        void run() {
            if (this.f51863d) {
                return;
            }
            io.reactivex.r<? super Long> rVar = this.f51860a;
            long j10 = this.f51861b;
            for (long j11 = this.f51862c; j11 != j10 && get() == 0; j11++) {
                rVar.onNext(Long.valueOf(j11));
            }
            if (get() == 0) {
                lazySet(1);
                rVar.onComplete();
            }
        }
    }

    public j2(long j10, long j11) {
        this.f51858a = j10;
        this.f51859b = j11;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super Long> rVar) {
        long j10 = this.f51858a;
        a aVar = new a(rVar, j10, j10 + this.f51859b);
        rVar.onSubscribe(aVar);
        aVar.run();
    }
}
