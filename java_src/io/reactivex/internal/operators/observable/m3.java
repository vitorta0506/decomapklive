package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
/* loaded from: classes7.dex */
public final class m3<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f52027b;

    /* loaded from: classes7.dex */
    static final class a<T> implements io.reactivex.r<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f52028a;

        /* renamed from: b  reason: collision with root package name */
        boolean f52029b;

        /* renamed from: c  reason: collision with root package name */
        th.b f52030c;

        /* renamed from: d  reason: collision with root package name */
        long f52031d;

        a(io.reactivex.r<? super T> rVar, long j10) {
            this.f52028a = rVar;
            this.f52031d = j10;
        }

        @Override // th.b
        public void dispose() {
            this.f52030c.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52030c.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f52029b) {
                return;
            }
            this.f52029b = true;
            this.f52030c.dispose();
            this.f52028a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f52029b) {
                ci.a.s(th2);
                return;
            }
            this.f52029b = true;
            this.f52030c.dispose();
            this.f52028a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f52029b) {
                return;
            }
            long j10 = this.f52031d;
            long j11 = j10 - 1;
            this.f52031d = j11;
            if (j10 > 0) {
                boolean z10 = j11 == 0;
                this.f52028a.onNext(t10);
                if (z10) {
                    onComplete();
                }
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f52030c, bVar)) {
                this.f52030c = bVar;
                if (this.f52031d == 0) {
                    this.f52029b = true;
                    bVar.dispose();
                    EmptyDisposable.complete(this.f52028a);
                    return;
                }
                this.f52028a.onSubscribe(this);
            }
        }
    }

    public m3(io.reactivex.p<T> pVar, long j10) {
        super(pVar);
        this.f52027b = j10;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super T> rVar) {
        this.f51403a.subscribe(new a(rVar, this.f52027b));
    }
}
