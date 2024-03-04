package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.s;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class p<T, U extends Collection<? super T>> extends io.reactivex.internal.operators.observable.a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final long f52105b;

    /* renamed from: c  reason: collision with root package name */
    final long f52106c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f52107d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.s f52108e;

    /* renamed from: f  reason: collision with root package name */
    final Callable<U> f52109f;

    /* renamed from: g  reason: collision with root package name */
    final int f52110g;

    /* renamed from: h  reason: collision with root package name */
    final boolean f52111h;

    /* loaded from: classes7.dex */
    static final class a<T, U extends Collection<? super T>> extends io.reactivex.internal.observers.j<T, U, U> implements Runnable, th.b {

        /* renamed from: g  reason: collision with root package name */
        final Callable<U> f52112g;

        /* renamed from: h  reason: collision with root package name */
        final long f52113h;

        /* renamed from: i  reason: collision with root package name */
        final TimeUnit f52114i;

        /* renamed from: j  reason: collision with root package name */
        final int f52115j;

        /* renamed from: k  reason: collision with root package name */
        final boolean f52116k;

        /* renamed from: l  reason: collision with root package name */
        final s.c f52117l;

        /* renamed from: m  reason: collision with root package name */
        U f52118m;

        /* renamed from: n  reason: collision with root package name */
        th.b f52119n;

        /* renamed from: o  reason: collision with root package name */
        th.b f52120o;

        /* renamed from: p  reason: collision with root package name */
        long f52121p;

        /* renamed from: q  reason: collision with root package name */
        long f52122q;

        a(io.reactivex.r<? super U> rVar, Callable<U> callable, long j10, TimeUnit timeUnit, int i9, boolean z10, s.c cVar) {
            super(rVar, new io.reactivex.internal.queue.a());
            this.f52112g = callable;
            this.f52113h = j10;
            this.f52114i = timeUnit;
            this.f52115j = i9;
            this.f52116k = z10;
            this.f52117l = cVar;
        }

        @Override // th.b
        public void dispose() {
            if (this.f51334d) {
                return;
            }
            this.f51334d = true;
            this.f52120o.dispose();
            this.f52117l.dispose();
            synchronized (this) {
                this.f52118m = null;
            }
        }

        @Override // io.reactivex.internal.observers.j, io.reactivex.internal.util.h
        /* renamed from: g */
        public void v(io.reactivex.r<? super U> rVar, U u10) {
            rVar.onNext(u10);
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51334d;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            U u10;
            this.f52117l.dispose();
            synchronized (this) {
                u10 = this.f52118m;
                this.f52118m = null;
            }
            if (u10 != null) {
                this.f51333c.offer(u10);
                this.f51335e = true;
                if (b()) {
                    io.reactivex.internal.util.k.c(this.f51333c, this.f51332b, false, this, this);
                }
            }
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            synchronized (this) {
                this.f52118m = null;
            }
            this.f51332b.onError(th2);
            this.f52117l.dispose();
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            synchronized (this) {
                U u10 = this.f52118m;
                if (u10 == null) {
                    return;
                }
                u10.add(t10);
                if (u10.size() < this.f52115j) {
                    return;
                }
                this.f52118m = null;
                this.f52121p++;
                if (this.f52116k) {
                    this.f52119n.dispose();
                }
                f(u10, false, this);
                try {
                    U u11 = (U) xh.b.e(this.f52112g.call(), "The buffer supplied is null");
                    synchronized (this) {
                        this.f52118m = u11;
                        this.f52122q++;
                    }
                    if (this.f52116k) {
                        s.c cVar = this.f52117l;
                        long j10 = this.f52113h;
                        this.f52119n = cVar.f(this, j10, j10, this.f52114i);
                    }
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    this.f51332b.onError(th2);
                    dispose();
                }
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f52120o, bVar)) {
                this.f52120o = bVar;
                try {
                    this.f52118m = (U) xh.b.e(this.f52112g.call(), "The buffer supplied is null");
                    this.f51332b.onSubscribe(this);
                    s.c cVar = this.f52117l;
                    long j10 = this.f52113h;
                    this.f52119n = cVar.f(this, j10, j10, this.f52114i);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    bVar.dispose();
                    EmptyDisposable.error(th2, this.f51332b);
                    this.f52117l.dispose();
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                U u10 = (U) xh.b.e(this.f52112g.call(), "The bufferSupplier returned a null buffer");
                synchronized (this) {
                    U u11 = this.f52118m;
                    if (u11 != null && this.f52121p == this.f52122q) {
                        this.f52118m = u10;
                        f(u11, false, this);
                    }
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                dispose();
                this.f51332b.onError(th2);
            }
        }
    }

    /* loaded from: classes7.dex */
    static final class b<T, U extends Collection<? super T>> extends io.reactivex.internal.observers.j<T, U, U> implements Runnable, th.b {

        /* renamed from: g  reason: collision with root package name */
        final Callable<U> f52123g;

        /* renamed from: h  reason: collision with root package name */
        final long f52124h;

        /* renamed from: i  reason: collision with root package name */
        final TimeUnit f52125i;

        /* renamed from: j  reason: collision with root package name */
        final io.reactivex.s f52126j;

        /* renamed from: k  reason: collision with root package name */
        th.b f52127k;

        /* renamed from: l  reason: collision with root package name */
        U f52128l;

        /* renamed from: m  reason: collision with root package name */
        final AtomicReference<th.b> f52129m;

        b(io.reactivex.r<? super U> rVar, Callable<U> callable, long j10, TimeUnit timeUnit, io.reactivex.s sVar) {
            super(rVar, new io.reactivex.internal.queue.a());
            this.f52129m = new AtomicReference<>();
            this.f52123g = callable;
            this.f52124h = j10;
            this.f52125i = timeUnit;
            this.f52126j = sVar;
        }

        @Override // th.b
        public void dispose() {
            DisposableHelper.dispose(this.f52129m);
            this.f52127k.dispose();
        }

        @Override // io.reactivex.internal.observers.j, io.reactivex.internal.util.h
        /* renamed from: g */
        public void v(io.reactivex.r<? super U> rVar, U u10) {
            this.f51332b.onNext(u10);
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52129m.get() == DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            U u10;
            synchronized (this) {
                u10 = this.f52128l;
                this.f52128l = null;
            }
            if (u10 != null) {
                this.f51333c.offer(u10);
                this.f51335e = true;
                if (b()) {
                    io.reactivex.internal.util.k.c(this.f51333c, this.f51332b, false, null, this);
                }
            }
            DisposableHelper.dispose(this.f52129m);
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            synchronized (this) {
                this.f52128l = null;
            }
            this.f51332b.onError(th2);
            DisposableHelper.dispose(this.f52129m);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            synchronized (this) {
                U u10 = this.f52128l;
                if (u10 == null) {
                    return;
                }
                u10.add(t10);
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f52127k, bVar)) {
                this.f52127k = bVar;
                try {
                    this.f52128l = (U) xh.b.e(this.f52123g.call(), "The buffer supplied is null");
                    this.f51332b.onSubscribe(this);
                    if (this.f51334d) {
                        return;
                    }
                    io.reactivex.s sVar = this.f52126j;
                    long j10 = this.f52124h;
                    th.b f10 = sVar.f(this, j10, j10, this.f52125i);
                    if (this.f52129m.compareAndSet(null, f10)) {
                        return;
                    }
                    f10.dispose();
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    dispose();
                    EmptyDisposable.error(th2, this.f51332b);
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            U u10;
            try {
                U u11 = (U) xh.b.e(this.f52123g.call(), "The bufferSupplier returned a null buffer");
                synchronized (this) {
                    u10 = this.f52128l;
                    if (u10 != null) {
                        this.f52128l = u11;
                    }
                }
                if (u10 == null) {
                    DisposableHelper.dispose(this.f52129m);
                } else {
                    d(u10, false, this);
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f51332b.onError(th2);
                dispose();
            }
        }
    }

    /* loaded from: classes7.dex */
    static final class c<T, U extends Collection<? super T>> extends io.reactivex.internal.observers.j<T, U, U> implements Runnable, th.b {

        /* renamed from: g  reason: collision with root package name */
        final Callable<U> f52130g;

        /* renamed from: h  reason: collision with root package name */
        final long f52131h;

        /* renamed from: i  reason: collision with root package name */
        final long f52132i;

        /* renamed from: j  reason: collision with root package name */
        final TimeUnit f52133j;

        /* renamed from: k  reason: collision with root package name */
        final s.c f52134k;

        /* renamed from: l  reason: collision with root package name */
        final List<U> f52135l;

        /* renamed from: m  reason: collision with root package name */
        th.b f52136m;

        /* loaded from: classes7.dex */
        final class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            private final U f52137a;

            a(U u10) {
                this.f52137a = u10;
            }

            @Override // java.lang.Runnable
            public void run() {
                synchronized (c.this) {
                    c.this.f52135l.remove(this.f52137a);
                }
                c cVar = c.this;
                cVar.f(this.f52137a, false, cVar.f52134k);
            }
        }

        /* loaded from: classes7.dex */
        final class b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            private final U f52139a;

            b(U u10) {
                this.f52139a = u10;
            }

            @Override // java.lang.Runnable
            public void run() {
                synchronized (c.this) {
                    c.this.f52135l.remove(this.f52139a);
                }
                c cVar = c.this;
                cVar.f(this.f52139a, false, cVar.f52134k);
            }
        }

        c(io.reactivex.r<? super U> rVar, Callable<U> callable, long j10, long j11, TimeUnit timeUnit, s.c cVar) {
            super(rVar, new io.reactivex.internal.queue.a());
            this.f52130g = callable;
            this.f52131h = j10;
            this.f52132i = j11;
            this.f52133j = timeUnit;
            this.f52134k = cVar;
            this.f52135l = new LinkedList();
        }

        @Override // th.b
        public void dispose() {
            if (this.f51334d) {
                return;
            }
            this.f51334d = true;
            j();
            this.f52136m.dispose();
            this.f52134k.dispose();
        }

        @Override // io.reactivex.internal.observers.j, io.reactivex.internal.util.h
        /* renamed from: g */
        public void v(io.reactivex.r<? super U> rVar, U u10) {
            rVar.onNext(u10);
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51334d;
        }

        void j() {
            synchronized (this) {
                this.f52135l.clear();
            }
        }

        @Override // io.reactivex.r
        public void onComplete() {
            ArrayList<Collection> arrayList;
            synchronized (this) {
                arrayList = new ArrayList(this.f52135l);
                this.f52135l.clear();
            }
            for (Collection collection : arrayList) {
                this.f51333c.offer(collection);
            }
            this.f51335e = true;
            if (b()) {
                io.reactivex.internal.util.k.c(this.f51333c, this.f51332b, false, this.f52134k, this);
            }
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f51335e = true;
            j();
            this.f51332b.onError(th2);
            this.f52134k.dispose();
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            synchronized (this) {
                for (U u10 : this.f52135l) {
                    u10.add(t10);
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f52136m, bVar)) {
                this.f52136m = bVar;
                try {
                    Collection collection = (Collection) xh.b.e(this.f52130g.call(), "The buffer supplied is null");
                    this.f52135l.add(collection);
                    this.f51332b.onSubscribe(this);
                    s.c cVar = this.f52134k;
                    long j10 = this.f52132i;
                    cVar.f(this, j10, j10, this.f52133j);
                    this.f52134k.d(new b(collection), this.f52131h, this.f52133j);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    bVar.dispose();
                    EmptyDisposable.error(th2, this.f51332b);
                    this.f52134k.dispose();
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            if (this.f51334d) {
                return;
            }
            try {
                Collection collection = (Collection) xh.b.e(this.f52130g.call(), "The bufferSupplier returned a null buffer");
                synchronized (this) {
                    if (this.f51334d) {
                        return;
                    }
                    this.f52135l.add(collection);
                    this.f52134k.d(new a(collection), this.f52131h, this.f52133j);
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f51332b.onError(th2);
                dispose();
            }
        }
    }

    public p(io.reactivex.p<T> pVar, long j10, long j11, TimeUnit timeUnit, io.reactivex.s sVar, Callable<U> callable, int i9, boolean z10) {
        super(pVar);
        this.f52105b = j10;
        this.f52106c = j11;
        this.f52107d = timeUnit;
        this.f52108e = sVar;
        this.f52109f = callable;
        this.f52110g = i9;
        this.f52111h = z10;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super U> rVar) {
        if (this.f52105b == this.f52106c && this.f52110g == Integer.MAX_VALUE) {
            this.f51403a.subscribe(new b(new io.reactivex.observers.d(rVar), this.f52109f, this.f52105b, this.f52107d, this.f52108e));
            return;
        }
        s.c b10 = this.f52108e.b();
        if (this.f52105b == this.f52106c) {
            this.f51403a.subscribe(new a(new io.reactivex.observers.d(rVar), this.f52109f, this.f52105b, this.f52107d, this.f52110g, this.f52111h, b10));
        } else {
            this.f51403a.subscribe(new c(new io.reactivex.observers.d(rVar), this.f52109f, this.f52105b, this.f52106c, this.f52107d, b10));
        }
    }
}
