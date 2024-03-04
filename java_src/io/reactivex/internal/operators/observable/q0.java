package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes7.dex */
public final class q0<T> extends io.reactivex.g<T> implements yh.a<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.p<T> f52212a;

    /* renamed from: b  reason: collision with root package name */
    final long f52213b;

    /* loaded from: classes7.dex */
    static final class a<T> implements io.reactivex.r<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.h<? super T> f52214a;

        /* renamed from: b  reason: collision with root package name */
        final long f52215b;

        /* renamed from: c  reason: collision with root package name */
        th.b f52216c;

        /* renamed from: d  reason: collision with root package name */
        long f52217d;

        /* renamed from: e  reason: collision with root package name */
        boolean f52218e;

        a(io.reactivex.h<? super T> hVar, long j10) {
            this.f52214a = hVar;
            this.f52215b = j10;
        }

        @Override // th.b
        public void dispose() {
            this.f52216c.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52216c.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f52218e) {
                return;
            }
            this.f52218e = true;
            this.f52214a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f52218e) {
                ci.a.s(th2);
                return;
            }
            this.f52218e = true;
            this.f52214a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f52218e) {
                return;
            }
            long j10 = this.f52217d;
            if (j10 == this.f52215b) {
                this.f52218e = true;
                this.f52216c.dispose();
                this.f52214a.onSuccess(t10);
                return;
            }
            this.f52217d = j10 + 1;
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f52216c, bVar)) {
                this.f52216c = bVar;
                this.f52214a.onSubscribe(this);
            }
        }
    }

    public q0(io.reactivex.p<T> pVar, long j10) {
        this.f52212a = pVar;
        this.f52213b = j10;
    }

    @Override // yh.a
    public io.reactivex.k<T> b() {
        return ci.a.o(new p0(this.f52212a, this.f52213b, null, false));
    }

    @Override // io.reactivex.g
    public void d(io.reactivex.h<? super T> hVar) {
        this.f52212a.subscribe(new a(hVar, this.f52213b));
    }
}
