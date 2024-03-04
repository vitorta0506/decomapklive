package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.s;
import java.util.concurrent.TimeUnit;
/* loaded from: classes7.dex */
public final class f0<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f51616b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f51617c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.s f51618d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f51619e;

    /* loaded from: classes7.dex */
    static final class a<T> implements io.reactivex.r<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f51620a;

        /* renamed from: b  reason: collision with root package name */
        final long f51621b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f51622c;

        /* renamed from: d  reason: collision with root package name */
        final s.c f51623d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f51624e;

        /* renamed from: f  reason: collision with root package name */
        th.b f51625f;

        /* renamed from: io.reactivex.internal.operators.observable.f0$a$a  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        final class RunnableC0513a implements Runnable {
            RunnableC0513a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    a.this.f51620a.onComplete();
                } finally {
                    a.this.f51623d.dispose();
                }
            }
        }

        /* loaded from: classes7.dex */
        final class b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            private final Throwable f51627a;

            b(Throwable th2) {
                this.f51627a = th2;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    a.this.f51620a.onError(this.f51627a);
                } finally {
                    a.this.f51623d.dispose();
                }
            }
        }

        /* loaded from: classes7.dex */
        final class c implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            private final T f51629a;

            c(T t10) {
                this.f51629a = t10;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f51620a.onNext((T) this.f51629a);
            }
        }

        a(io.reactivex.r<? super T> rVar, long j10, TimeUnit timeUnit, s.c cVar, boolean z10) {
            this.f51620a = rVar;
            this.f51621b = j10;
            this.f51622c = timeUnit;
            this.f51623d = cVar;
            this.f51624e = z10;
        }

        @Override // th.b
        public void dispose() {
            this.f51625f.dispose();
            this.f51623d.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51623d.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f51623d.d(new RunnableC0513a(), this.f51621b, this.f51622c);
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f51623d.d(new b(th2), this.f51624e ? this.f51621b : 0L, this.f51622c);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            this.f51623d.d(new c(t10), this.f51621b, this.f51622c);
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f51625f, bVar)) {
                this.f51625f = bVar;
                this.f51620a.onSubscribe(this);
            }
        }
    }

    public f0(io.reactivex.p<T> pVar, long j10, TimeUnit timeUnit, io.reactivex.s sVar, boolean z10) {
        super(pVar);
        this.f51616b = j10;
        this.f51617c = timeUnit;
        this.f51618d = sVar;
        this.f51619e = z10;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super T> rVar) {
        this.f51403a.subscribe(new a(this.f51619e ? rVar : new io.reactivex.observers.d(rVar), this.f51616b, this.f51617c, this.f51618d.b(), this.f51619e));
    }
}
