package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
/* loaded from: classes7.dex */
public final class v3<T> extends io.reactivex.internal.operators.observable.a<T, di.b<T>> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.s f52483b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f52484c;

    /* loaded from: classes7.dex */
    static final class a<T> implements io.reactivex.r<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super di.b<T>> f52485a;

        /* renamed from: b  reason: collision with root package name */
        final TimeUnit f52486b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.s f52487c;

        /* renamed from: d  reason: collision with root package name */
        long f52488d;

        /* renamed from: e  reason: collision with root package name */
        th.b f52489e;

        a(io.reactivex.r<? super di.b<T>> rVar, TimeUnit timeUnit, io.reactivex.s sVar) {
            this.f52485a = rVar;
            this.f52487c = sVar;
            this.f52486b = timeUnit;
        }

        @Override // th.b
        public void dispose() {
            this.f52489e.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52489e.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f52485a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f52485a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            long c10 = this.f52487c.c(this.f52486b);
            long j10 = this.f52488d;
            this.f52488d = c10;
            this.f52485a.onNext(new di.b(t10, c10 - j10, this.f52486b));
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f52489e, bVar)) {
                this.f52489e = bVar;
                this.f52488d = this.f52487c.c(this.f52486b);
                this.f52485a.onSubscribe(this);
            }
        }
    }

    public v3(io.reactivex.p<T> pVar, TimeUnit timeUnit, io.reactivex.s sVar) {
        super(pVar);
        this.f52483b = sVar;
        this.f52484c = timeUnit;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super di.b<T>> rVar) {
        this.f51403a.subscribe(new a(rVar, this.f52484c, this.f52483b));
    }
}
