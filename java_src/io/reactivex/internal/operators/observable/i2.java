package io.reactivex.internal.operators.observable;

import io.reactivex.internal.observers.BasicIntQueueDisposable;
/* loaded from: classes7.dex */
public final class i2 extends io.reactivex.k<Integer> {

    /* renamed from: a  reason: collision with root package name */
    private final int f51827a;

    /* renamed from: b  reason: collision with root package name */
    private final long f51828b;

    /* loaded from: classes7.dex */
    static final class a extends BasicIntQueueDisposable<Integer> {
        private static final long serialVersionUID = 396518478098735504L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super Integer> f51829a;

        /* renamed from: b  reason: collision with root package name */
        final long f51830b;

        /* renamed from: c  reason: collision with root package name */
        long f51831c;

        /* renamed from: d  reason: collision with root package name */
        boolean f51832d;

        a(io.reactivex.r<? super Integer> rVar, long j10, long j11) {
            this.f51829a = rVar;
            this.f51831c = j10;
            this.f51830b = j11;
        }

        @Override // io.reactivex.internal.observers.BasicIntQueueDisposable, yh.g
        /* renamed from: b */
        public Integer poll() throws Exception {
            long j10 = this.f51831c;
            if (j10 != this.f51830b) {
                this.f51831c = 1 + j10;
                return Integer.valueOf((int) j10);
            }
            lazySet(1);
            return null;
        }

        @Override // io.reactivex.internal.observers.BasicIntQueueDisposable, yh.g
        public void clear() {
            this.f51831c = this.f51830b;
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
            return this.f51831c == this.f51830b;
        }

        @Override // io.reactivex.internal.observers.BasicIntQueueDisposable, yh.c
        public int requestFusion(int i9) {
            if ((i9 & 1) != 0) {
                this.f51832d = true;
                return 1;
            }
            return 0;
        }

        void run() {
            if (this.f51832d) {
                return;
            }
            io.reactivex.r<? super Integer> rVar = this.f51829a;
            long j10 = this.f51830b;
            for (long j11 = this.f51831c; j11 != j10 && get() == 0; j11++) {
                rVar.onNext(Integer.valueOf((int) j11));
            }
            if (get() == 0) {
                lazySet(1);
                rVar.onComplete();
            }
        }
    }

    public i2(int i9, int i10) {
        this.f51827a = i9;
        this.f51828b = i9 + i10;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super Integer> rVar) {
        a aVar = new a(rVar, this.f51827a, this.f51828b);
        rVar.onSubscribe(aVar);
        aVar.run();
    }
}
