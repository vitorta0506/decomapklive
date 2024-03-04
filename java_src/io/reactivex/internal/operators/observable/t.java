package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class t<T, R> extends io.reactivex.k<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.p<? extends T>[] f52323a;

    /* renamed from: b  reason: collision with root package name */
    final Iterable<? extends io.reactivex.p<? extends T>> f52324b;

    /* renamed from: c  reason: collision with root package name */
    final vh.o<? super Object[], ? extends R> f52325c;

    /* renamed from: d  reason: collision with root package name */
    final int f52326d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f52327e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class a<T, R> extends AtomicReference<th.b> implements io.reactivex.r<T> {
        private static final long serialVersionUID = -4823716997131257941L;

        /* renamed from: a  reason: collision with root package name */
        final b<T, R> f52328a;

        /* renamed from: b  reason: collision with root package name */
        final int f52329b;

        a(b<T, R> bVar, int i9) {
            this.f52328a = bVar;
            this.f52329b = i9;
        }

        public void a() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f52328a.d(this.f52329b);
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f52328a.e(this.f52329b, th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            this.f52328a.f(this.f52329b, t10);
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }
    }

    /* loaded from: classes7.dex */
    static final class b<T, R> extends AtomicInteger implements th.b {
        private static final long serialVersionUID = 8567835998786448817L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super R> f52330a;

        /* renamed from: b  reason: collision with root package name */
        final vh.o<? super Object[], ? extends R> f52331b;

        /* renamed from: c  reason: collision with root package name */
        final a<T, R>[] f52332c;

        /* renamed from: d  reason: collision with root package name */
        Object[] f52333d;

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.internal.queue.b<Object[]> f52334e;

        /* renamed from: f  reason: collision with root package name */
        final boolean f52335f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f52336g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f52337h;

        /* renamed from: i  reason: collision with root package name */
        final AtomicThrowable f52338i = new AtomicThrowable();

        /* renamed from: j  reason: collision with root package name */
        int f52339j;

        /* renamed from: k  reason: collision with root package name */
        int f52340k;

        b(io.reactivex.r<? super R> rVar, vh.o<? super Object[], ? extends R> oVar, int i9, int i10, boolean z10) {
            this.f52330a = rVar;
            this.f52331b = oVar;
            this.f52335f = z10;
            this.f52333d = new Object[i9];
            a<T, R>[] aVarArr = new a[i9];
            for (int i11 = 0; i11 < i9; i11++) {
                aVarArr[i11] = new a<>(this, i11);
            }
            this.f52332c = aVarArr;
            this.f52334e = new io.reactivex.internal.queue.b<>(i10);
        }

        void a() {
            for (a<T, R> aVar : this.f52332c) {
                aVar.a();
            }
        }

        void b(io.reactivex.internal.queue.b<?> bVar) {
            synchronized (this) {
                this.f52333d = null;
            }
            bVar.clear();
        }

        void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.internal.queue.b<Object[]> bVar = this.f52334e;
            io.reactivex.r<? super R> rVar = this.f52330a;
            boolean z10 = this.f52335f;
            int i9 = 1;
            while (!this.f52336g) {
                if (!z10 && this.f52338i.get() != null) {
                    a();
                    b(bVar);
                    rVar.onError(this.f52338i.terminate());
                    return;
                }
                boolean z11 = this.f52337h;
                Object[] poll = bVar.poll();
                boolean z12 = poll == null;
                if (z11 && z12) {
                    b(bVar);
                    Throwable terminate = this.f52338i.terminate();
                    if (terminate == null) {
                        rVar.onComplete();
                        return;
                    } else {
                        rVar.onError(terminate);
                        return;
                    }
                } else if (z12) {
                    i9 = addAndGet(-i9);
                    if (i9 == 0) {
                        return;
                    }
                } else {
                    try {
                        rVar.onNext((Object) xh.b.e(this.f52331b.apply(poll), "The combiner returned a null value"));
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        this.f52338i.addThrowable(th2);
                        a();
                        b(bVar);
                        rVar.onError(this.f52338i.terminate());
                        return;
                    }
                }
            }
            b(bVar);
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0017, code lost:
            if (r2 == r0.length) goto L19;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void d(int r4) {
            /*
                r3 = this;
                monitor-enter(r3)
                java.lang.Object[] r0 = r3.f52333d     // Catch: java.lang.Throwable -> L25
                if (r0 != 0) goto L7
                monitor-exit(r3)     // Catch: java.lang.Throwable -> L25
                return
            L7:
                r4 = r0[r4]     // Catch: java.lang.Throwable -> L25
                r1 = 1
                if (r4 != 0) goto Le
                r4 = 1
                goto Lf
            Le:
                r4 = 0
            Lf:
                if (r4 != 0) goto L19
                int r2 = r3.f52340k     // Catch: java.lang.Throwable -> L25
                int r2 = r2 + r1
                r3.f52340k = r2     // Catch: java.lang.Throwable -> L25
                int r0 = r0.length     // Catch: java.lang.Throwable -> L25
                if (r2 != r0) goto L1b
            L19:
                r3.f52337h = r1     // Catch: java.lang.Throwable -> L25
            L1b:
                monitor-exit(r3)     // Catch: java.lang.Throwable -> L25
                if (r4 == 0) goto L21
                r3.a()
            L21:
                r3.c()
                return
            L25:
                r4 = move-exception
                monitor-exit(r3)     // Catch: java.lang.Throwable -> L25
                throw r4
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.t.b.d(int):void");
        }

        @Override // th.b
        public void dispose() {
            if (this.f52336g) {
                return;
            }
            this.f52336g = true;
            a();
            if (getAndIncrement() == 0) {
                b(this.f52334e);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x0023, code lost:
            if (r1 == r4.length) goto L20;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void e(int r3, java.lang.Throwable r4) {
            /*
                r2 = this;
                io.reactivex.internal.util.AtomicThrowable r0 = r2.f52338i
                boolean r0 = r0.addThrowable(r4)
                if (r0 == 0) goto L36
                boolean r4 = r2.f52335f
                r0 = 1
                if (r4 == 0) goto L2d
                monitor-enter(r2)
                java.lang.Object[] r4 = r2.f52333d     // Catch: java.lang.Throwable -> L2a
                if (r4 != 0) goto L14
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L2a
                return
            L14:
                r3 = r4[r3]     // Catch: java.lang.Throwable -> L2a
                if (r3 != 0) goto L1a
                r3 = 1
                goto L1b
            L1a:
                r3 = 0
            L1b:
                if (r3 != 0) goto L25
                int r1 = r2.f52340k     // Catch: java.lang.Throwable -> L2a
                int r1 = r1 + r0
                r2.f52340k = r1     // Catch: java.lang.Throwable -> L2a
                int r4 = r4.length     // Catch: java.lang.Throwable -> L2a
                if (r1 != r4) goto L27
            L25:
                r2.f52337h = r0     // Catch: java.lang.Throwable -> L2a
            L27:
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L2a
                r0 = r3
                goto L2d
            L2a:
                r3 = move-exception
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L2a
                throw r3
            L2d:
                if (r0 == 0) goto L32
                r2.a()
            L32:
                r2.c()
                goto L39
            L36:
                ci.a.s(r4)
            L39:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.t.b.e(int, java.lang.Throwable):void");
        }

        /* JADX WARN: Multi-variable type inference failed */
        void f(int i9, T t10) {
            boolean z10;
            synchronized (this) {
                Object[] objArr = this.f52333d;
                if (objArr == null) {
                    return;
                }
                Object obj = objArr[i9];
                int i10 = this.f52339j;
                if (obj == null) {
                    i10++;
                    this.f52339j = i10;
                }
                objArr[i9] = t10;
                if (i10 == objArr.length) {
                    this.f52334e.offer(objArr.clone());
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (z10) {
                    c();
                }
            }
        }

        public void g(io.reactivex.p<? extends T>[] pVarArr) {
            a<T, R>[] aVarArr = this.f52332c;
            int length = aVarArr.length;
            this.f52330a.onSubscribe(this);
            for (int i9 = 0; i9 < length && !this.f52337h && !this.f52336g; i9++) {
                pVarArr[i9].subscribe(aVarArr[i9]);
            }
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52336g;
        }
    }

    public t(io.reactivex.p<? extends T>[] pVarArr, Iterable<? extends io.reactivex.p<? extends T>> iterable, vh.o<? super Object[], ? extends R> oVar, int i9, boolean z10) {
        this.f52323a = pVarArr;
        this.f52324b = iterable;
        this.f52325c = oVar;
        this.f52326d = i9;
        this.f52327e = z10;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super R> rVar) {
        int length;
        io.reactivex.p<? extends T>[] pVarArr = this.f52323a;
        if (pVarArr == null) {
            pVarArr = new io.reactivex.p[8];
            length = 0;
            for (io.reactivex.p<? extends T> pVar : this.f52324b) {
                if (length == pVarArr.length) {
                    io.reactivex.p<? extends T>[] pVarArr2 = new io.reactivex.p[(length >> 2) + length];
                    System.arraycopy(pVarArr, 0, pVarArr2, 0, length);
                    pVarArr = pVarArr2;
                }
                pVarArr[length] = pVar;
                length++;
            }
        } else {
            length = pVarArr.length;
        }
        int i9 = length;
        if (i9 == 0) {
            EmptyDisposable.complete(rVar);
        } else {
            new b(rVar, this.f52325c, i9, this.f52326d, this.f52327e).g(pVarArr);
        }
    }
}
