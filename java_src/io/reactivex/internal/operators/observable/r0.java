package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.NoSuchElementException;
/* loaded from: classes7.dex */
public final class r0<T> extends io.reactivex.t<T> implements yh.a<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.p<T> f52243a;

    /* renamed from: b  reason: collision with root package name */
    final long f52244b;

    /* renamed from: c  reason: collision with root package name */
    final T f52245c;

    /* loaded from: classes7.dex */
    static final class a<T> implements io.reactivex.r<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.u<? super T> f52246a;

        /* renamed from: b  reason: collision with root package name */
        final long f52247b;

        /* renamed from: c  reason: collision with root package name */
        final T f52248c;

        /* renamed from: d  reason: collision with root package name */
        th.b f52249d;

        /* renamed from: e  reason: collision with root package name */
        long f52250e;

        /* renamed from: f  reason: collision with root package name */
        boolean f52251f;

        a(io.reactivex.u<? super T> uVar, long j10, T t10) {
            this.f52246a = uVar;
            this.f52247b = j10;
            this.f52248c = t10;
        }

        @Override // th.b
        public void dispose() {
            this.f52249d.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52249d.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f52251f) {
                return;
            }
            this.f52251f = true;
            T t10 = this.f52248c;
            if (t10 != null) {
                this.f52246a.onSuccess(t10);
            } else {
                this.f52246a.onError(new NoSuchElementException());
            }
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f52251f) {
                ci.a.s(th2);
                return;
            }
            this.f52251f = true;
            this.f52246a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f52251f) {
                return;
            }
            long j10 = this.f52250e;
            if (j10 == this.f52247b) {
                this.f52251f = true;
                this.f52249d.dispose();
                this.f52246a.onSuccess(t10);
                return;
            }
            this.f52250e = j10 + 1;
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f52249d, bVar)) {
                this.f52249d = bVar;
                this.f52246a.onSubscribe(this);
            }
        }
    }

    public r0(io.reactivex.p<T> pVar, long j10, T t10) {
        this.f52243a = pVar;
        this.f52244b = j10;
        this.f52245c = t10;
    }

    @Override // yh.a
    public io.reactivex.k<T> b() {
        return ci.a.o(new p0(this.f52243a, this.f52244b, this.f52245c, true));
    }

    @Override // io.reactivex.t
    public void e(io.reactivex.u<? super T> uVar) {
        this.f52243a.subscribe(new a(uVar, this.f52244b, this.f52245c));
    }
}
