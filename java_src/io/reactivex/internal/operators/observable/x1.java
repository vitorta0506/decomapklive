package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class x1<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.c f52545b;

    /* loaded from: classes7.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.r<T>, th.b {
        private static final long serialVersionUID = -4592979584110982903L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f52546a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<th.b> f52547b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        final C0523a f52548c = new C0523a(this);

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f52549d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f52550e;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f52551f;

        /* renamed from: io.reactivex.internal.operators.observable.x1$a$a  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        static final class C0523a extends AtomicReference<th.b> implements io.reactivex.b {
            private static final long serialVersionUID = -2935427570954647017L;

            /* renamed from: a  reason: collision with root package name */
            final a<?> f52552a;

            C0523a(a<?> aVar) {
                this.f52552a = aVar;
            }

            @Override // io.reactivex.b
            public void onComplete() {
                this.f52552a.a();
            }

            @Override // io.reactivex.b
            public void onError(Throwable th2) {
                this.f52552a.b(th2);
            }

            @Override // io.reactivex.b
            public void onSubscribe(th.b bVar) {
                DisposableHelper.setOnce(this, bVar);
            }
        }

        a(io.reactivex.r<? super T> rVar) {
            this.f52546a = rVar;
        }

        void a() {
            this.f52551f = true;
            if (this.f52550e) {
                io.reactivex.internal.util.g.b(this.f52546a, this, this.f52549d);
            }
        }

        void b(Throwable th2) {
            DisposableHelper.dispose(this.f52547b);
            io.reactivex.internal.util.g.d(this.f52546a, th2, this, this.f52549d);
        }

        @Override // th.b
        public void dispose() {
            DisposableHelper.dispose(this.f52547b);
            DisposableHelper.dispose(this.f52548c);
        }

        @Override // th.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f52547b.get());
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f52550e = true;
            if (this.f52551f) {
                io.reactivex.internal.util.g.b(this.f52546a, this, this.f52549d);
            }
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            DisposableHelper.dispose(this.f52548c);
            io.reactivex.internal.util.g.d(this.f52546a, th2, this, this.f52549d);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            io.reactivex.internal.util.g.f(this.f52546a, t10, this, this.f52549d);
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            DisposableHelper.setOnce(this.f52547b, bVar);
        }
    }

    public x1(io.reactivex.k<T> kVar, io.reactivex.c cVar) {
        super(kVar);
        this.f52545b = cVar;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super T> rVar) {
        a aVar = new a(rVar);
        rVar.onSubscribe(aVar);
        this.f51403a.subscribe(aVar);
        this.f52545b.a(aVar.f52548c);
    }
}
