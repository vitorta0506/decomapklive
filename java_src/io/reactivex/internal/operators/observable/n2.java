package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class n2<T> extends io.reactivex.k<T> {

    /* renamed from: a  reason: collision with root package name */
    final bi.a<T> f52058a;

    /* renamed from: b  reason: collision with root package name */
    final int f52059b;

    /* renamed from: c  reason: collision with root package name */
    final long f52060c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f52061d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.s f52062e;

    /* renamed from: f  reason: collision with root package name */
    a f52063f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class a extends AtomicReference<th.b> implements Runnable, vh.g<th.b> {
        private static final long serialVersionUID = -4552101107598366241L;

        /* renamed from: a  reason: collision with root package name */
        final n2<?> f52064a;

        /* renamed from: b  reason: collision with root package name */
        th.b f52065b;

        /* renamed from: c  reason: collision with root package name */
        long f52066c;

        /* renamed from: d  reason: collision with root package name */
        boolean f52067d;

        /* renamed from: e  reason: collision with root package name */
        boolean f52068e;

        a(n2<?> n2Var) {
            this.f52064a = n2Var;
        }

        @Override // vh.g
        /* renamed from: b */
        public void accept(th.b bVar) throws Exception {
            DisposableHelper.replace(this, bVar);
            synchronized (this.f52064a) {
                if (this.f52068e) {
                    ((wh.c) this.f52064a.f52058a).b(bVar);
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f52064a.g(this);
        }
    }

    /* loaded from: classes7.dex */
    static final class b<T> extends AtomicBoolean implements io.reactivex.r<T>, th.b {
        private static final long serialVersionUID = -7419642935409022375L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f52069a;

        /* renamed from: b  reason: collision with root package name */
        final n2<T> f52070b;

        /* renamed from: c  reason: collision with root package name */
        final a f52071c;

        /* renamed from: d  reason: collision with root package name */
        th.b f52072d;

        b(io.reactivex.r<? super T> rVar, n2<T> n2Var, a aVar) {
            this.f52069a = rVar;
            this.f52070b = n2Var;
            this.f52071c = aVar;
        }

        @Override // th.b
        public void dispose() {
            this.f52072d.dispose();
            if (compareAndSet(false, true)) {
                this.f52070b.c(this.f52071c);
            }
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52072d.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (compareAndSet(false, true)) {
                this.f52070b.f(this.f52071c);
                this.f52069a.onComplete();
            }
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (compareAndSet(false, true)) {
                this.f52070b.f(this.f52071c);
                this.f52069a.onError(th2);
                return;
            }
            ci.a.s(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            this.f52069a.onNext(t10);
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f52072d, bVar)) {
                this.f52072d = bVar;
                this.f52069a.onSubscribe(this);
            }
        }
    }

    public n2(bi.a<T> aVar) {
        this(aVar, 1, 0L, TimeUnit.NANOSECONDS, null);
    }

    void c(a aVar) {
        synchronized (this) {
            a aVar2 = this.f52063f;
            if (aVar2 != null && aVar2 == aVar) {
                long j10 = aVar.f52066c - 1;
                aVar.f52066c = j10;
                if (j10 == 0 && aVar.f52067d) {
                    if (this.f52060c == 0) {
                        g(aVar);
                        return;
                    }
                    SequentialDisposable sequentialDisposable = new SequentialDisposable();
                    aVar.f52065b = sequentialDisposable;
                    sequentialDisposable.replace(this.f52062e.e(aVar, this.f52060c, this.f52061d));
                }
            }
        }
    }

    void d(a aVar) {
        th.b bVar = aVar.f52065b;
        if (bVar != null) {
            bVar.dispose();
            aVar.f52065b = null;
        }
    }

    void e(a aVar) {
        bi.a<T> aVar2 = this.f52058a;
        if (aVar2 instanceof th.b) {
            ((th.b) aVar2).dispose();
        } else if (aVar2 instanceof wh.c) {
            ((wh.c) aVar2).b(aVar.get());
        }
    }

    void f(a aVar) {
        synchronized (this) {
            if (this.f52058a instanceof g2) {
                a aVar2 = this.f52063f;
                if (aVar2 != null && aVar2 == aVar) {
                    this.f52063f = null;
                    d(aVar);
                }
                long j10 = aVar.f52066c - 1;
                aVar.f52066c = j10;
                if (j10 == 0) {
                    e(aVar);
                }
            } else {
                a aVar3 = this.f52063f;
                if (aVar3 != null && aVar3 == aVar) {
                    d(aVar);
                    long j11 = aVar.f52066c - 1;
                    aVar.f52066c = j11;
                    if (j11 == 0) {
                        this.f52063f = null;
                        e(aVar);
                    }
                }
            }
        }
    }

    void g(a aVar) {
        synchronized (this) {
            if (aVar.f52066c == 0 && aVar == this.f52063f) {
                this.f52063f = null;
                th.b bVar = aVar.get();
                DisposableHelper.dispose(aVar);
                bi.a<T> aVar2 = this.f52058a;
                if (aVar2 instanceof th.b) {
                    ((th.b) aVar2).dispose();
                } else if (aVar2 instanceof wh.c) {
                    if (bVar == null) {
                        aVar.f52068e = true;
                    } else {
                        ((wh.c) aVar2).b(bVar);
                    }
                }
            }
        }
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super T> rVar) {
        a aVar;
        boolean z10;
        th.b bVar;
        synchronized (this) {
            aVar = this.f52063f;
            if (aVar == null) {
                aVar = new a(this);
                this.f52063f = aVar;
            }
            long j10 = aVar.f52066c;
            if (j10 == 0 && (bVar = aVar.f52065b) != null) {
                bVar.dispose();
            }
            long j11 = j10 + 1;
            aVar.f52066c = j11;
            z10 = true;
            if (aVar.f52067d || j11 != this.f52059b) {
                z10 = false;
            } else {
                aVar.f52067d = true;
            }
        }
        this.f52058a.subscribe(new b(rVar, this, aVar));
        if (z10) {
            this.f52058a.c(aVar);
        }
    }

    public n2(bi.a<T> aVar, int i9, long j10, TimeUnit timeUnit, io.reactivex.s sVar) {
        this.f52058a = aVar;
        this.f52059b = i9;
        this.f52060c = j10;
        this.f52061d = timeUnit;
        this.f52062e = sVar;
    }
}
