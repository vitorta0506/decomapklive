package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class v0<T, U> extends io.reactivex.internal.operators.observable.a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final vh.o<? super T, ? extends io.reactivex.p<? extends U>> f52437b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f52438c;

    /* renamed from: d  reason: collision with root package name */
    final int f52439d;

    /* renamed from: e  reason: collision with root package name */
    final int f52440e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class a<T, U> extends AtomicReference<th.b> implements io.reactivex.r<U> {
        private static final long serialVersionUID = -4606175640614850599L;

        /* renamed from: a  reason: collision with root package name */
        final long f52441a;

        /* renamed from: b  reason: collision with root package name */
        final b<T, U> f52442b;

        /* renamed from: c  reason: collision with root package name */
        volatile boolean f52443c;

        /* renamed from: d  reason: collision with root package name */
        volatile yh.g<U> f52444d;

        /* renamed from: e  reason: collision with root package name */
        int f52445e;

        a(b<T, U> bVar, long j10) {
            this.f52441a = j10;
            this.f52442b = bVar;
        }

        public void a() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f52443c = true;
            this.f52442b.d();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f52442b.f52455h.addThrowable(th2)) {
                b<T, U> bVar = this.f52442b;
                if (!bVar.f52450c) {
                    bVar.c();
                }
                this.f52443c = true;
                this.f52442b.d();
                return;
            }
            ci.a.s(th2);
        }

        @Override // io.reactivex.r
        public void onNext(U u10) {
            if (this.f52445e == 0) {
                this.f52442b.i(u10, this);
            } else {
                this.f52442b.d();
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.setOnce(this, bVar) && (bVar instanceof yh.b)) {
                yh.b bVar2 = (yh.b) bVar;
                int requestFusion = bVar2.requestFusion(7);
                if (requestFusion == 1) {
                    this.f52445e = requestFusion;
                    this.f52444d = bVar2;
                    this.f52443c = true;
                    this.f52442b.d();
                } else if (requestFusion == 2) {
                    this.f52445e = requestFusion;
                    this.f52444d = bVar2;
                }
            }
        }
    }

    /* loaded from: classes7.dex */
    static final class b<T, U> extends AtomicInteger implements th.b, io.reactivex.r<T> {

        /* renamed from: q  reason: collision with root package name */
        static final a<?, ?>[] f52446q = new a[0];

        /* renamed from: r  reason: collision with root package name */
        static final a<?, ?>[] f52447r = new a[0];
        private static final long serialVersionUID = -2117620485640801370L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super U> f52448a;

        /* renamed from: b  reason: collision with root package name */
        final vh.o<? super T, ? extends io.reactivex.p<? extends U>> f52449b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f52450c;

        /* renamed from: d  reason: collision with root package name */
        final int f52451d;

        /* renamed from: e  reason: collision with root package name */
        final int f52452e;

        /* renamed from: f  reason: collision with root package name */
        volatile yh.f<U> f52453f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f52454g;

        /* renamed from: h  reason: collision with root package name */
        final AtomicThrowable f52455h = new AtomicThrowable();

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f52456i;

        /* renamed from: j  reason: collision with root package name */
        final AtomicReference<a<?, ?>[]> f52457j;

        /* renamed from: k  reason: collision with root package name */
        th.b f52458k;

        /* renamed from: l  reason: collision with root package name */
        long f52459l;

        /* renamed from: m  reason: collision with root package name */
        long f52460m;

        /* renamed from: n  reason: collision with root package name */
        int f52461n;

        /* renamed from: o  reason: collision with root package name */
        Queue<io.reactivex.p<? extends U>> f52462o;

        /* renamed from: p  reason: collision with root package name */
        int f52463p;

        b(io.reactivex.r<? super U> rVar, vh.o<? super T, ? extends io.reactivex.p<? extends U>> oVar, boolean z10, int i9, int i10) {
            this.f52448a = rVar;
            this.f52449b = oVar;
            this.f52450c = z10;
            this.f52451d = i9;
            this.f52452e = i10;
            if (i9 != Integer.MAX_VALUE) {
                this.f52462o = new ArrayDeque(i9);
            }
            this.f52457j = new AtomicReference<>(f52446q);
        }

        /* JADX WARN: Multi-variable type inference failed */
        boolean a(a<T, U> aVar) {
            a<?, ?>[] aVarArr;
            a[] aVarArr2;
            do {
                aVarArr = this.f52457j.get();
                if (aVarArr == f52447r) {
                    aVar.a();
                    return false;
                }
                int length = aVarArr.length;
                aVarArr2 = new a[length + 1];
                System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
                aVarArr2[length] = aVar;
            } while (!this.f52457j.compareAndSet(aVarArr, aVarArr2));
            return true;
        }

        boolean b() {
            if (this.f52456i) {
                return true;
            }
            Throwable th2 = this.f52455h.get();
            if (this.f52450c || th2 == null) {
                return false;
            }
            c();
            Throwable terminate = this.f52455h.terminate();
            if (terminate != io.reactivex.internal.util.f.f52757a) {
                this.f52448a.onError(terminate);
            }
            return true;
        }

        boolean c() {
            a<?, ?>[] andSet;
            this.f52458k.dispose();
            a<?, ?>[] aVarArr = this.f52457j.get();
            a<?, ?>[] aVarArr2 = f52447r;
            if (aVarArr == aVarArr2 || (andSet = this.f52457j.getAndSet(aVarArr2)) == aVarArr2) {
                return false;
            }
            for (a<?, ?> aVar : andSet) {
                aVar.a();
            }
            return true;
        }

        void d() {
            if (getAndIncrement() == 0) {
                e();
            }
        }

        @Override // th.b
        public void dispose() {
            Throwable terminate;
            if (this.f52456i) {
                return;
            }
            this.f52456i = true;
            if (!c() || (terminate = this.f52455h.terminate()) == null || terminate == io.reactivex.internal.util.f.f52757a) {
                return;
            }
            ci.a.s(terminate);
        }

        void e() {
            int i9;
            int i10;
            io.reactivex.r<? super U> rVar = this.f52448a;
            int i11 = 1;
            while (!b()) {
                yh.f<U> fVar = this.f52453f;
                int i12 = 0;
                if (fVar != null) {
                    while (!b()) {
                        Object obj = (U) fVar.poll();
                        if (obj != null) {
                            rVar.onNext(obj);
                            i12++;
                        }
                    }
                    return;
                }
                if (i12 != 0) {
                    if (this.f52451d != Integer.MAX_VALUE) {
                        h(i12);
                    }
                } else {
                    boolean z10 = this.f52454g;
                    yh.f<U> fVar2 = this.f52453f;
                    a<?, ?>[] aVarArr = this.f52457j.get();
                    int length = aVarArr.length;
                    if (this.f52451d != Integer.MAX_VALUE) {
                        synchronized (this) {
                            i9 = this.f52462o.size();
                        }
                    } else {
                        i9 = 0;
                    }
                    if (z10 && ((fVar2 == null || fVar2.isEmpty()) && length == 0 && i9 == 0)) {
                        Throwable terminate = this.f52455h.terminate();
                        if (terminate != io.reactivex.internal.util.f.f52757a) {
                            if (terminate == null) {
                                rVar.onComplete();
                                return;
                            } else {
                                rVar.onError(terminate);
                                return;
                            }
                        }
                        return;
                    }
                    if (length != 0) {
                        long j10 = this.f52460m;
                        int i13 = this.f52461n;
                        if (length <= i13 || aVarArr[i13].f52441a != j10) {
                            if (length <= i13) {
                                i13 = 0;
                            }
                            for (int i14 = 0; i14 < length && aVarArr[i13].f52441a != j10; i14++) {
                                i13++;
                                if (i13 == length) {
                                    i13 = 0;
                                }
                            }
                            this.f52461n = i13;
                            this.f52460m = aVarArr[i13].f52441a;
                        }
                        while (i10 < length) {
                            if (b()) {
                                return;
                            }
                            a<T, U> aVar = aVarArr[i13];
                            yh.g<U> gVar = aVar.f52444d;
                            if (gVar != null) {
                                while (true) {
                                    try {
                                        Object obj2 = (U) gVar.poll();
                                        if (obj2 == null) {
                                            break;
                                        }
                                        rVar.onNext(obj2);
                                        if (b()) {
                                            return;
                                        }
                                    } catch (Throwable th2) {
                                        io.reactivex.exceptions.a.b(th2);
                                        aVar.a();
                                        this.f52455h.addThrowable(th2);
                                        if (b()) {
                                            return;
                                        }
                                        f(aVar);
                                        i12++;
                                        i13++;
                                        if (i13 != length) {
                                        }
                                    }
                                }
                            }
                            boolean z11 = aVar.f52443c;
                            yh.g<U> gVar2 = aVar.f52444d;
                            if (z11 && (gVar2 == null || gVar2.isEmpty())) {
                                f(aVar);
                                if (b()) {
                                    return;
                                }
                                i12++;
                            }
                            i13++;
                            i10 = i13 != length ? i10 + 1 : 0;
                            i13 = 0;
                        }
                        this.f52461n = i13;
                        this.f52460m = aVarArr[i13].f52441a;
                    }
                    if (i12 != 0) {
                        if (this.f52451d != Integer.MAX_VALUE) {
                            h(i12);
                        }
                    } else {
                        i11 = addAndGet(-i11);
                        if (i11 == 0) {
                            return;
                        }
                    }
                }
            }
        }

        void f(a<T, U> aVar) {
            a<?, ?>[] aVarArr;
            a<?, ?>[] aVarArr2;
            do {
                aVarArr = this.f52457j.get();
                int length = aVarArr.length;
                if (length == 0) {
                    return;
                }
                int i9 = -1;
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        break;
                    } else if (aVarArr[i10] == aVar) {
                        i9 = i10;
                        break;
                    } else {
                        i10++;
                    }
                }
                if (i9 < 0) {
                    return;
                }
                if (length == 1) {
                    aVarArr2 = f52446q;
                } else {
                    a<?, ?>[] aVarArr3 = new a[length - 1];
                    System.arraycopy(aVarArr, 0, aVarArr3, 0, i9);
                    System.arraycopy(aVarArr, i9 + 1, aVarArr3, i9, (length - i9) - 1);
                    aVarArr2 = aVarArr3;
                }
            } while (!this.f52457j.compareAndSet(aVarArr, aVarArr2));
        }

        void g(io.reactivex.p<? extends U> pVar) {
            io.reactivex.p<? extends U> poll;
            while (pVar instanceof Callable) {
                if (!j((Callable) pVar) || this.f52451d == Integer.MAX_VALUE) {
                    return;
                }
                boolean z10 = false;
                synchronized (this) {
                    poll = this.f52462o.poll();
                    if (poll == null) {
                        this.f52463p--;
                        z10 = true;
                    }
                }
                if (z10) {
                    d();
                    return;
                }
                pVar = poll;
            }
            long j10 = this.f52459l;
            this.f52459l = 1 + j10;
            a<T, U> aVar = new a<>(this, j10);
            if (a(aVar)) {
                pVar.subscribe(aVar);
            }
        }

        void h(int i9) {
            while (true) {
                int i10 = i9 - 1;
                if (i9 == 0) {
                    return;
                }
                synchronized (this) {
                    io.reactivex.p<? extends U> poll = this.f52462o.poll();
                    if (poll == null) {
                        this.f52463p--;
                    } else {
                        g(poll);
                    }
                }
                i9 = i10;
            }
        }

        void i(U u10, a<T, U> aVar) {
            if (get() == 0 && compareAndSet(0, 1)) {
                this.f52448a.onNext(u10);
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                yh.g gVar = aVar.f52444d;
                if (gVar == null) {
                    gVar = new io.reactivex.internal.queue.b(this.f52452e);
                    aVar.f52444d = gVar;
                }
                gVar.offer(u10);
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            e();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52456i;
        }

        boolean j(Callable<? extends U> callable) {
            try {
                U call = callable.call();
                if (call == null) {
                    return true;
                }
                if (get() == 0 && compareAndSet(0, 1)) {
                    this.f52448a.onNext(call);
                    if (decrementAndGet() == 0) {
                        return true;
                    }
                } else {
                    yh.f<U> fVar = this.f52453f;
                    if (fVar == null) {
                        if (this.f52451d == Integer.MAX_VALUE) {
                            fVar = new io.reactivex.internal.queue.b<>(this.f52452e);
                        } else {
                            fVar = new SpscArrayQueue<>(this.f52451d);
                        }
                        this.f52453f = fVar;
                    }
                    if (!fVar.offer(call)) {
                        onError(new IllegalStateException("Scalar queue full?!"));
                        return true;
                    } else if (getAndIncrement() != 0) {
                        return false;
                    }
                }
                e();
                return true;
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f52455h.addThrowable(th2);
                d();
                return true;
            }
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f52454g) {
                return;
            }
            this.f52454g = true;
            d();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f52454g) {
                ci.a.s(th2);
            } else if (this.f52455h.addThrowable(th2)) {
                this.f52454g = true;
                d();
            } else {
                ci.a.s(th2);
            }
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f52454g) {
                return;
            }
            try {
                io.reactivex.p<? extends U> pVar = (io.reactivex.p) xh.b.e(this.f52449b.apply(t10), "The mapper returned a null ObservableSource");
                if (this.f52451d != Integer.MAX_VALUE) {
                    synchronized (this) {
                        int i9 = this.f52463p;
                        if (i9 == this.f52451d) {
                            this.f52462o.offer(pVar);
                            return;
                        }
                        this.f52463p = i9 + 1;
                    }
                }
                g(pVar);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f52458k.dispose();
                onError(th2);
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f52458k, bVar)) {
                this.f52458k = bVar;
                this.f52448a.onSubscribe(this);
            }
        }
    }

    public v0(io.reactivex.p<T> pVar, vh.o<? super T, ? extends io.reactivex.p<? extends U>> oVar, boolean z10, int i9, int i10) {
        super(pVar);
        this.f52437b = oVar;
        this.f52438c = z10;
        this.f52439d = i9;
        this.f52440e = i10;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super U> rVar) {
        if (ObservableScalarXMap.b(this.f51403a, rVar, this.f52437b)) {
            return;
        }
        this.f51403a.subscribe(new b(rVar, this.f52437b, this.f52438c, this.f52439d, this.f52440e));
    }
}
