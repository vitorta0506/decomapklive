package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.s;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class t3<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f52350b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f52351c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.s f52352d;

    /* loaded from: classes7.dex */
    static final class a<T> extends AtomicReference<th.b> implements io.reactivex.r<T>, th.b, Runnable {
        private static final long serialVersionUID = 786994795061867455L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f52353a;

        /* renamed from: b  reason: collision with root package name */
        final long f52354b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f52355c;

        /* renamed from: d  reason: collision with root package name */
        final s.c f52356d;

        /* renamed from: e  reason: collision with root package name */
        th.b f52357e;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f52358f;

        /* renamed from: g  reason: collision with root package name */
        boolean f52359g;

        a(io.reactivex.r<? super T> rVar, long j10, TimeUnit timeUnit, s.c cVar) {
            this.f52353a = rVar;
            this.f52354b = j10;
            this.f52355c = timeUnit;
            this.f52356d = cVar;
        }

        @Override // th.b
        public void dispose() {
            this.f52357e.dispose();
            this.f52356d.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52356d.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f52359g) {
                return;
            }
            this.f52359g = true;
            this.f52353a.onComplete();
            this.f52356d.dispose();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f52359g) {
                ci.a.s(th2);
                return;
            }
            this.f52359g = true;
            this.f52353a.onError(th2);
            this.f52356d.dispose();
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f52358f || this.f52359g) {
                return;
            }
            this.f52358f = true;
            this.f52353a.onNext(t10);
            th.b bVar = get();
            if (bVar != null) {
                bVar.dispose();
            }
            DisposableHelper.replace(this, this.f52356d.d(this, this.f52354b, this.f52355c));
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f52357e, bVar)) {
                this.f52357e = bVar;
                this.f52353a.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f52358f = false;
        }
    }

    public t3(io.reactivex.p<T> pVar, long j10, TimeUnit timeUnit, io.reactivex.s sVar) {
        super(pVar);
        this.f52350b = j10;
        this.f52351c = timeUnit;
        this.f52352d = sVar;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super T> rVar) {
        this.f51403a.subscribe(new a(new io.reactivex.observers.d(rVar), this.f52350b, this.f52351c, this.f52352d.b()));
    }
}
