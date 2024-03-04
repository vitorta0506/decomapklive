package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.util.NotificationLite;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class r2<T> extends bi.a<T> implements wh.c {

    /* renamed from: e  reason: collision with root package name */
    static final b f52256e = new o();

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.p<T> f52257a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<j<T>> f52258b;

    /* renamed from: c  reason: collision with root package name */
    final b<T> f52259c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.p<T> f52260d;

    /* loaded from: classes7.dex */
    static abstract class a<T> extends AtomicReference<f> implements h<T> {
        private static final long serialVersionUID = 2346567790059478686L;

        /* renamed from: a  reason: collision with root package name */
        f f52261a;

        /* renamed from: b  reason: collision with root package name */
        int f52262b;

        a() {
            f fVar = new f(null);
            this.f52261a = fVar;
            set(fVar);
        }

        final void a(f fVar) {
            this.f52261a.set(fVar);
            this.f52261a = fVar;
            this.f52262b++;
        }

        Object b(Object obj) {
            return obj;
        }

        f c() {
            return get();
        }

        @Override // io.reactivex.internal.operators.observable.r2.h
        public final void complete() {
            a(new f(b(NotificationLite.complete())));
            l();
        }

        @Override // io.reactivex.internal.operators.observable.r2.h
        public final void d(d<T> dVar) {
            if (dVar.getAndIncrement() != 0) {
                return;
            }
            int i9 = 1;
            do {
                f fVar = (f) dVar.a();
                if (fVar == null) {
                    fVar = c();
                    dVar.f52266c = fVar;
                }
                while (!dVar.isDisposed()) {
                    f fVar2 = fVar.get();
                    if (fVar2 != null) {
                        if (NotificationLite.accept(e(fVar2.f52270a), dVar.f52265b)) {
                            dVar.f52266c = null;
                            return;
                        }
                        fVar = fVar2;
                    } else {
                        dVar.f52266c = fVar;
                        i9 = dVar.addAndGet(-i9);
                    }
                }
                dVar.f52266c = null;
                return;
            } while (i9 != 0);
        }

        Object e(Object obj) {
            return obj;
        }

        @Override // io.reactivex.internal.operators.observable.r2.h
        public final void f(Throwable th2) {
            a(new f(b(NotificationLite.error(th2))));
            l();
        }

        @Override // io.reactivex.internal.operators.observable.r2.h
        public final void g(T t10) {
            a(new f(b(NotificationLite.next(t10))));
            k();
        }

        final void h() {
            this.f52262b--;
            i(get().get());
        }

        final void i(f fVar) {
            set(fVar);
        }

        final void j() {
            f fVar = get();
            if (fVar.f52270a != null) {
                f fVar2 = new f(null);
                fVar2.lazySet(fVar.get());
                set(fVar2);
            }
        }

        abstract void k();

        void l() {
            j();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public interface b<T> {
        h<T> call();
    }

    /* loaded from: classes7.dex */
    static final class c<R> implements vh.g<th.b> {

        /* renamed from: a  reason: collision with root package name */
        private final ObserverResourceWrapper<R> f52263a;

        c(ObserverResourceWrapper<R> observerResourceWrapper) {
            this.f52263a = observerResourceWrapper;
        }

        @Override // vh.g
        /* renamed from: a */
        public void accept(th.b bVar) {
            this.f52263a.setResource(bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class d<T> extends AtomicInteger implements th.b {
        private static final long serialVersionUID = 2728361546769921047L;

        /* renamed from: a  reason: collision with root package name */
        final j<T> f52264a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.r<? super T> f52265b;

        /* renamed from: c  reason: collision with root package name */
        Object f52266c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f52267d;

        d(j<T> jVar, io.reactivex.r<? super T> rVar) {
            this.f52264a = jVar;
            this.f52265b = rVar;
        }

        <U> U a() {
            return (U) this.f52266c;
        }

        @Override // th.b
        public void dispose() {
            if (this.f52267d) {
                return;
            }
            this.f52267d = true;
            this.f52264a.b(this);
            this.f52266c = null;
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52267d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class e<R, U> extends io.reactivex.k<R> {

        /* renamed from: a  reason: collision with root package name */
        private final Callable<? extends bi.a<U>> f52268a;

        /* renamed from: b  reason: collision with root package name */
        private final vh.o<? super io.reactivex.k<U>, ? extends io.reactivex.p<R>> f52269b;

        e(Callable<? extends bi.a<U>> callable, vh.o<? super io.reactivex.k<U>, ? extends io.reactivex.p<R>> oVar) {
            this.f52268a = callable;
            this.f52269b = oVar;
        }

        @Override // io.reactivex.k
        protected void subscribeActual(io.reactivex.r<? super R> rVar) {
            try {
                bi.a aVar = (bi.a) xh.b.e(this.f52268a.call(), "The connectableFactory returned a null ConnectableObservable");
                io.reactivex.p pVar = (io.reactivex.p) xh.b.e(this.f52269b.apply(aVar), "The selector returned a null ObservableSource");
                ObserverResourceWrapper observerResourceWrapper = new ObserverResourceWrapper(rVar);
                pVar.subscribe(observerResourceWrapper);
                aVar.c(new c(observerResourceWrapper));
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                EmptyDisposable.error(th2, rVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class f extends AtomicReference<f> {
        private static final long serialVersionUID = 245354315435971818L;

        /* renamed from: a  reason: collision with root package name */
        final Object f52270a;

        f(Object obj) {
            this.f52270a = obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class g<T> extends bi.a<T> {

        /* renamed from: a  reason: collision with root package name */
        private final bi.a<T> f52271a;

        /* renamed from: b  reason: collision with root package name */
        private final io.reactivex.k<T> f52272b;

        g(bi.a<T> aVar, io.reactivex.k<T> kVar) {
            this.f52271a = aVar;
            this.f52272b = kVar;
        }

        @Override // bi.a
        public void c(vh.g<? super th.b> gVar) {
            this.f52271a.c(gVar);
        }

        @Override // io.reactivex.k
        protected void subscribeActual(io.reactivex.r<? super T> rVar) {
            this.f52272b.subscribe(rVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public interface h<T> {
        void complete();

        void d(d<T> dVar);

        void f(Throwable th2);

        void g(T t10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class i<T> implements b<T> {

        /* renamed from: a  reason: collision with root package name */
        private final int f52273a;

        i(int i9) {
            this.f52273a = i9;
        }

        @Override // io.reactivex.internal.operators.observable.r2.b
        public h<T> call() {
            return new n(this.f52273a);
        }
    }

    /* loaded from: classes7.dex */
    static final class j<T> extends AtomicReference<th.b> implements io.reactivex.r<T>, th.b {

        /* renamed from: e  reason: collision with root package name */
        static final d[] f52274e = new d[0];

        /* renamed from: f  reason: collision with root package name */
        static final d[] f52275f = new d[0];
        private static final long serialVersionUID = -533785617179540163L;

        /* renamed from: a  reason: collision with root package name */
        final h<T> f52276a;

        /* renamed from: b  reason: collision with root package name */
        boolean f52277b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<d[]> f52278c = new AtomicReference<>(f52274e);

        /* renamed from: d  reason: collision with root package name */
        final AtomicBoolean f52279d = new AtomicBoolean();

        j(h<T> hVar) {
            this.f52276a = hVar;
        }

        boolean a(d<T> dVar) {
            d[] dVarArr;
            d[] dVarArr2;
            do {
                dVarArr = this.f52278c.get();
                if (dVarArr == f52275f) {
                    return false;
                }
                int length = dVarArr.length;
                dVarArr2 = new d[length + 1];
                System.arraycopy(dVarArr, 0, dVarArr2, 0, length);
                dVarArr2[length] = dVar;
            } while (!this.f52278c.compareAndSet(dVarArr, dVarArr2));
            return true;
        }

        void b(d<T> dVar) {
            d[] dVarArr;
            d[] dVarArr2;
            do {
                dVarArr = this.f52278c.get();
                int length = dVarArr.length;
                if (length == 0) {
                    return;
                }
                int i9 = -1;
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        break;
                    } else if (dVarArr[i10].equals(dVar)) {
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
                    dVarArr2 = f52274e;
                } else {
                    d[] dVarArr3 = new d[length - 1];
                    System.arraycopy(dVarArr, 0, dVarArr3, 0, i9);
                    System.arraycopy(dVarArr, i9 + 1, dVarArr3, i9, (length - i9) - 1);
                    dVarArr2 = dVarArr3;
                }
            } while (!this.f52278c.compareAndSet(dVarArr, dVarArr2));
        }

        void c() {
            for (d<T> dVar : this.f52278c.get()) {
                this.f52276a.d(dVar);
            }
        }

        void d() {
            for (d<T> dVar : this.f52278c.getAndSet(f52275f)) {
                this.f52276a.d(dVar);
            }
        }

        @Override // th.b
        public void dispose() {
            this.f52278c.set(f52275f);
            DisposableHelper.dispose(this);
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52278c.get() == f52275f;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f52277b) {
                return;
            }
            this.f52277b = true;
            this.f52276a.complete();
            d();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (!this.f52277b) {
                this.f52277b = true;
                this.f52276a.f(th2);
                d();
                return;
            }
            ci.a.s(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f52277b) {
                return;
            }
            this.f52276a.g(t10);
            c();
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.setOnce(this, bVar)) {
                c();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class k<T> implements io.reactivex.p<T> {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicReference<j<T>> f52280a;

        /* renamed from: b  reason: collision with root package name */
        private final b<T> f52281b;

        k(AtomicReference<j<T>> atomicReference, b<T> bVar) {
            this.f52280a = atomicReference;
            this.f52281b = bVar;
        }

        @Override // io.reactivex.p
        public void subscribe(io.reactivex.r<? super T> rVar) {
            j<T> jVar;
            while (true) {
                jVar = this.f52280a.get();
                if (jVar != null) {
                    break;
                }
                j<T> jVar2 = new j<>(this.f52281b.call());
                if (this.f52280a.compareAndSet(null, jVar2)) {
                    jVar = jVar2;
                    break;
                }
            }
            d<T> dVar = new d<>(jVar, rVar);
            rVar.onSubscribe(dVar);
            jVar.a(dVar);
            if (dVar.isDisposed()) {
                jVar.b(dVar);
            } else {
                jVar.f52276a.d(dVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class l<T> implements b<T> {

        /* renamed from: a  reason: collision with root package name */
        private final int f52282a;

        /* renamed from: b  reason: collision with root package name */
        private final long f52283b;

        /* renamed from: c  reason: collision with root package name */
        private final TimeUnit f52284c;

        /* renamed from: d  reason: collision with root package name */
        private final io.reactivex.s f52285d;

        l(int i9, long j10, TimeUnit timeUnit, io.reactivex.s sVar) {
            this.f52282a = i9;
            this.f52283b = j10;
            this.f52284c = timeUnit;
            this.f52285d = sVar;
        }

        @Override // io.reactivex.internal.operators.observable.r2.b
        public h<T> call() {
            return new m(this.f52282a, this.f52283b, this.f52284c, this.f52285d);
        }
    }

    /* loaded from: classes7.dex */
    static final class m<T> extends a<T> {
        private static final long serialVersionUID = 3457957419649567404L;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.s f52286c;

        /* renamed from: d  reason: collision with root package name */
        final long f52287d;

        /* renamed from: e  reason: collision with root package name */
        final TimeUnit f52288e;

        /* renamed from: f  reason: collision with root package name */
        final int f52289f;

        m(int i9, long j10, TimeUnit timeUnit, io.reactivex.s sVar) {
            this.f52286c = sVar;
            this.f52289f = i9;
            this.f52287d = j10;
            this.f52288e = timeUnit;
        }

        @Override // io.reactivex.internal.operators.observable.r2.a
        Object b(Object obj) {
            return new di.b(obj, this.f52286c.c(this.f52288e), this.f52288e);
        }

        @Override // io.reactivex.internal.operators.observable.r2.a
        f c() {
            f fVar;
            long c10 = this.f52286c.c(this.f52288e) - this.f52287d;
            f fVar2 = get();
            f fVar3 = fVar2.get();
            while (true) {
                f fVar4 = fVar3;
                fVar = fVar2;
                fVar2 = fVar4;
                if (fVar2 != null) {
                    di.b bVar = (di.b) fVar2.f52270a;
                    if (NotificationLite.isComplete(bVar.b()) || NotificationLite.isError(bVar.b()) || bVar.a() > c10) {
                        break;
                    }
                    fVar3 = fVar2.get();
                } else {
                    break;
                }
            }
            return fVar;
        }

        @Override // io.reactivex.internal.operators.observable.r2.a
        Object e(Object obj) {
            return ((di.b) obj).b();
        }

        @Override // io.reactivex.internal.operators.observable.r2.a
        void k() {
            f fVar;
            long c10 = this.f52286c.c(this.f52288e) - this.f52287d;
            f fVar2 = get();
            f fVar3 = fVar2.get();
            int i9 = 0;
            while (true) {
                f fVar4 = fVar3;
                fVar = fVar2;
                fVar2 = fVar4;
                if (fVar2 == null) {
                    break;
                }
                int i10 = this.f52262b;
                if (i10 > this.f52289f && i10 > 1) {
                    i9++;
                    this.f52262b = i10 - 1;
                    fVar3 = fVar2.get();
                } else if (((di.b) fVar2.f52270a).a() > c10) {
                    break;
                } else {
                    i9++;
                    this.f52262b--;
                    fVar3 = fVar2.get();
                }
            }
            if (i9 != 0) {
                i(fVar);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x003e, code lost:
            i(r3);
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0041, code lost:
            return;
         */
        @Override // io.reactivex.internal.operators.observable.r2.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void l() {
            /*
                r10 = this;
                io.reactivex.s r0 = r10.f52286c
                java.util.concurrent.TimeUnit r1 = r10.f52288e
                long r0 = r0.c(r1)
                long r2 = r10.f52287d
                long r0 = r0 - r2
                java.lang.Object r2 = r10.get()
                io.reactivex.internal.operators.observable.r2$f r2 = (io.reactivex.internal.operators.observable.r2.f) r2
                java.lang.Object r3 = r2.get()
                io.reactivex.internal.operators.observable.r2$f r3 = (io.reactivex.internal.operators.observable.r2.f) r3
                r4 = 0
            L18:
                r9 = r3
                r3 = r2
                r2 = r9
                if (r2 == 0) goto L3c
                int r5 = r10.f52262b
                r6 = 1
                if (r5 <= r6) goto L3c
                java.lang.Object r5 = r2.f52270a
                di.b r5 = (di.b) r5
                long r7 = r5.a()
                int r5 = (r7 > r0 ? 1 : (r7 == r0 ? 0 : -1))
                if (r5 > 0) goto L3c
                int r4 = r4 + 1
                int r3 = r10.f52262b
                int r3 = r3 - r6
                r10.f52262b = r3
                java.lang.Object r3 = r2.get()
                io.reactivex.internal.operators.observable.r2$f r3 = (io.reactivex.internal.operators.observable.r2.f) r3
                goto L18
            L3c:
                if (r4 == 0) goto L41
                r10.i(r3)
            L41:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.r2.m.l():void");
        }
    }

    /* loaded from: classes7.dex */
    static final class n<T> extends a<T> {
        private static final long serialVersionUID = -5898283885385201806L;

        /* renamed from: c  reason: collision with root package name */
        final int f52290c;

        n(int i9) {
            this.f52290c = i9;
        }

        @Override // io.reactivex.internal.operators.observable.r2.a
        void k() {
            if (this.f52262b > this.f52290c) {
                h();
            }
        }
    }

    /* loaded from: classes7.dex */
    static final class o implements b<Object> {
        o() {
        }

        @Override // io.reactivex.internal.operators.observable.r2.b
        public h<Object> call() {
            return new p(16);
        }
    }

    /* loaded from: classes7.dex */
    static final class p<T> extends ArrayList<Object> implements h<T> {
        private static final long serialVersionUID = 7063189396499112664L;

        /* renamed from: a  reason: collision with root package name */
        volatile int f52291a;

        p(int i9) {
            super(i9);
        }

        @Override // io.reactivex.internal.operators.observable.r2.h
        public void complete() {
            add(NotificationLite.complete());
            this.f52291a++;
        }

        @Override // io.reactivex.internal.operators.observable.r2.h
        public void d(d<T> dVar) {
            if (dVar.getAndIncrement() != 0) {
                return;
            }
            io.reactivex.r<? super T> rVar = dVar.f52265b;
            int i9 = 1;
            while (!dVar.isDisposed()) {
                int i10 = this.f52291a;
                Integer num = (Integer) dVar.a();
                int intValue = num != null ? num.intValue() : 0;
                while (intValue < i10) {
                    if (NotificationLite.accept(get(intValue), rVar) || dVar.isDisposed()) {
                        return;
                    }
                    intValue++;
                }
                dVar.f52266c = Integer.valueOf(intValue);
                i9 = dVar.addAndGet(-i9);
                if (i9 == 0) {
                    return;
                }
            }
        }

        @Override // io.reactivex.internal.operators.observable.r2.h
        public void f(Throwable th2) {
            add(NotificationLite.error(th2));
            this.f52291a++;
        }

        @Override // io.reactivex.internal.operators.observable.r2.h
        public void g(T t10) {
            add(NotificationLite.next(t10));
            this.f52291a++;
        }
    }

    private r2(io.reactivex.p<T> pVar, io.reactivex.p<T> pVar2, AtomicReference<j<T>> atomicReference, b<T> bVar) {
        this.f52260d = pVar;
        this.f52257a = pVar2;
        this.f52258b = atomicReference;
        this.f52259c = bVar;
    }

    public static <T> bi.a<T> f(io.reactivex.p<T> pVar, int i9) {
        if (i9 == Integer.MAX_VALUE) {
            return j(pVar);
        }
        return i(pVar, new i(i9));
    }

    public static <T> bi.a<T> g(io.reactivex.p<T> pVar, long j10, TimeUnit timeUnit, io.reactivex.s sVar) {
        return h(pVar, j10, timeUnit, sVar, Integer.MAX_VALUE);
    }

    public static <T> bi.a<T> h(io.reactivex.p<T> pVar, long j10, TimeUnit timeUnit, io.reactivex.s sVar, int i9) {
        return i(pVar, new l(i9, j10, timeUnit, sVar));
    }

    static <T> bi.a<T> i(io.reactivex.p<T> pVar, b<T> bVar) {
        AtomicReference atomicReference = new AtomicReference();
        return ci.a.k(new r2(new k(atomicReference, bVar), pVar, atomicReference, bVar));
    }

    public static <T> bi.a<T> j(io.reactivex.p<? extends T> pVar) {
        return i(pVar, f52256e);
    }

    public static <U, R> io.reactivex.k<R> k(Callable<? extends bi.a<U>> callable, vh.o<? super io.reactivex.k<U>, ? extends io.reactivex.p<R>> oVar) {
        return ci.a.o(new e(callable, oVar));
    }

    public static <T> bi.a<T> l(bi.a<T> aVar, io.reactivex.s sVar) {
        return ci.a.k(new g(aVar, aVar.observeOn(sVar)));
    }

    @Override // wh.c
    public void b(th.b bVar) {
        this.f52258b.compareAndSet((j) bVar, null);
    }

    @Override // bi.a
    public void c(vh.g<? super th.b> gVar) {
        j<T> jVar;
        while (true) {
            jVar = this.f52258b.get();
            if (jVar != null && !jVar.isDisposed()) {
                break;
            }
            j<T> jVar2 = new j<>(this.f52259c.call());
            if (this.f52258b.compareAndSet(jVar, jVar2)) {
                jVar = jVar2;
                break;
            }
        }
        boolean z10 = !jVar.f52279d.get() && jVar.f52279d.compareAndSet(false, true);
        try {
            gVar.accept(jVar);
            if (z10) {
                this.f52257a.subscribe(jVar);
            }
        } catch (Throwable th2) {
            if (z10) {
                jVar.f52279d.compareAndSet(true, false);
            }
            io.reactivex.exceptions.a.b(th2);
            throw io.reactivex.internal.util.f.d(th2);
        }
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super T> rVar) {
        this.f52260d.subscribe(rVar);
    }
}
