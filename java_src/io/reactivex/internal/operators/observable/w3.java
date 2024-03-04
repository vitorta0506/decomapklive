package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.operators.observable.x3;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class w3<T, U, V> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.p<U> f52515b;

    /* renamed from: c  reason: collision with root package name */
    final vh.o<? super T, ? extends io.reactivex.p<V>> f52516c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.p<? extends T> f52517d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class a extends AtomicReference<th.b> implements io.reactivex.r<Object>, th.b {
        private static final long serialVersionUID = 8708641127342403073L;

        /* renamed from: a  reason: collision with root package name */
        final d f52518a;

        /* renamed from: b  reason: collision with root package name */
        final long f52519b;

        a(long j10, d dVar) {
            this.f52519b = j10;
            this.f52518a = dVar;
        }

        @Override // th.b
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // th.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.r
        public void onComplete() {
            Object obj = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (obj != disposableHelper) {
                lazySet(disposableHelper);
                this.f52518a.b(this.f52519b);
            }
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            Object obj = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (obj != disposableHelper) {
                lazySet(disposableHelper);
                this.f52518a.a(this.f52519b, th2);
                return;
            }
            ci.a.s(th2);
        }

        @Override // io.reactivex.r
        public void onNext(Object obj) {
            th.b bVar = (th.b) get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (bVar != disposableHelper) {
                bVar.dispose();
                lazySet(disposableHelper);
                this.f52518a.b(this.f52519b);
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }
    }

    /* loaded from: classes7.dex */
    static final class b<T> extends AtomicReference<th.b> implements io.reactivex.r<T>, th.b, d {
        private static final long serialVersionUID = -7508389464265974549L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f52520a;

        /* renamed from: b  reason: collision with root package name */
        final vh.o<? super T, ? extends io.reactivex.p<?>> f52521b;

        /* renamed from: c  reason: collision with root package name */
        final SequentialDisposable f52522c = new SequentialDisposable();

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f52523d = new AtomicLong();

        /* renamed from: e  reason: collision with root package name */
        final AtomicReference<th.b> f52524e = new AtomicReference<>();

        /* renamed from: f  reason: collision with root package name */
        io.reactivex.p<? extends T> f52525f;

        b(io.reactivex.r<? super T> rVar, vh.o<? super T, ? extends io.reactivex.p<?>> oVar, io.reactivex.p<? extends T> pVar) {
            this.f52520a = rVar;
            this.f52521b = oVar;
            this.f52525f = pVar;
        }

        @Override // io.reactivex.internal.operators.observable.w3.d
        public void a(long j10, Throwable th2) {
            if (this.f52523d.compareAndSet(j10, Long.MAX_VALUE)) {
                DisposableHelper.dispose(this);
                this.f52520a.onError(th2);
                return;
            }
            ci.a.s(th2);
        }

        @Override // io.reactivex.internal.operators.observable.x3.d
        public void b(long j10) {
            if (this.f52523d.compareAndSet(j10, Long.MAX_VALUE)) {
                DisposableHelper.dispose(this.f52524e);
                io.reactivex.p<? extends T> pVar = this.f52525f;
                this.f52525f = null;
                pVar.subscribe(new x3.a(this.f52520a, this));
            }
        }

        void c(io.reactivex.p<?> pVar) {
            if (pVar != null) {
                a aVar = new a(0L, this);
                if (this.f52522c.replace(aVar)) {
                    pVar.subscribe(aVar);
                }
            }
        }

        @Override // th.b
        public void dispose() {
            DisposableHelper.dispose(this.f52524e);
            DisposableHelper.dispose(this);
            this.f52522c.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f52523d.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f52522c.dispose();
                this.f52520a.onComplete();
                this.f52522c.dispose();
            }
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f52523d.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f52522c.dispose();
                this.f52520a.onError(th2);
                this.f52522c.dispose();
                return;
            }
            ci.a.s(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            long j10 = this.f52523d.get();
            if (j10 != Long.MAX_VALUE) {
                long j11 = 1 + j10;
                if (this.f52523d.compareAndSet(j10, j11)) {
                    th.b bVar = this.f52522c.get();
                    if (bVar != null) {
                        bVar.dispose();
                    }
                    this.f52520a.onNext(t10);
                    try {
                        io.reactivex.p pVar = (io.reactivex.p) xh.b.e(this.f52521b.apply(t10), "The itemTimeoutIndicator returned a null ObservableSource.");
                        a aVar = new a(j11, this);
                        if (this.f52522c.replace(aVar)) {
                            pVar.subscribe(aVar);
                        }
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        this.f52524e.get().dispose();
                        this.f52523d.getAndSet(Long.MAX_VALUE);
                        this.f52520a.onError(th2);
                    }
                }
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            DisposableHelper.setOnce(this.f52524e, bVar);
        }
    }

    /* loaded from: classes7.dex */
    static final class c<T> extends AtomicLong implements io.reactivex.r<T>, th.b, d {
        private static final long serialVersionUID = 3764492702657003550L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f52526a;

        /* renamed from: b  reason: collision with root package name */
        final vh.o<? super T, ? extends io.reactivex.p<?>> f52527b;

        /* renamed from: c  reason: collision with root package name */
        final SequentialDisposable f52528c = new SequentialDisposable();

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<th.b> f52529d = new AtomicReference<>();

        c(io.reactivex.r<? super T> rVar, vh.o<? super T, ? extends io.reactivex.p<?>> oVar) {
            this.f52526a = rVar;
            this.f52527b = oVar;
        }

        @Override // io.reactivex.internal.operators.observable.w3.d
        public void a(long j10, Throwable th2) {
            if (compareAndSet(j10, Long.MAX_VALUE)) {
                DisposableHelper.dispose(this.f52529d);
                this.f52526a.onError(th2);
                return;
            }
            ci.a.s(th2);
        }

        @Override // io.reactivex.internal.operators.observable.x3.d
        public void b(long j10) {
            if (compareAndSet(j10, Long.MAX_VALUE)) {
                DisposableHelper.dispose(this.f52529d);
                this.f52526a.onError(new TimeoutException());
            }
        }

        void c(io.reactivex.p<?> pVar) {
            if (pVar != null) {
                a aVar = new a(0L, this);
                if (this.f52528c.replace(aVar)) {
                    pVar.subscribe(aVar);
                }
            }
        }

        @Override // th.b
        public void dispose() {
            DisposableHelper.dispose(this.f52529d);
            this.f52528c.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f52529d.get());
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f52528c.dispose();
                this.f52526a.onComplete();
            }
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f52528c.dispose();
                this.f52526a.onError(th2);
                return;
            }
            ci.a.s(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            long j10 = get();
            if (j10 != Long.MAX_VALUE) {
                long j11 = 1 + j10;
                if (compareAndSet(j10, j11)) {
                    th.b bVar = this.f52528c.get();
                    if (bVar != null) {
                        bVar.dispose();
                    }
                    this.f52526a.onNext(t10);
                    try {
                        io.reactivex.p pVar = (io.reactivex.p) xh.b.e(this.f52527b.apply(t10), "The itemTimeoutIndicator returned a null ObservableSource.");
                        a aVar = new a(j11, this);
                        if (this.f52528c.replace(aVar)) {
                            pVar.subscribe(aVar);
                        }
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        this.f52529d.get().dispose();
                        getAndSet(Long.MAX_VALUE);
                        this.f52526a.onError(th2);
                    }
                }
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            DisposableHelper.setOnce(this.f52529d, bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public interface d extends x3.d {
        void a(long j10, Throwable th2);
    }

    public w3(io.reactivex.k<T> kVar, io.reactivex.p<U> pVar, vh.o<? super T, ? extends io.reactivex.p<V>> oVar, io.reactivex.p<? extends T> pVar2) {
        super(kVar);
        this.f52515b = pVar;
        this.f52516c = oVar;
        this.f52517d = pVar2;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super T> rVar) {
        if (this.f52517d == null) {
            c cVar = new c(rVar, this.f52516c);
            rVar.onSubscribe(cVar);
            cVar.c(this.f52515b);
            this.f51403a.subscribe(cVar);
            return;
        }
        b bVar = new b(rVar, this.f52516c, this.f52517d);
        rVar.onSubscribe(bVar);
        bVar.c(this.f52515b);
        this.f51403a.subscribe(bVar);
    }
}
