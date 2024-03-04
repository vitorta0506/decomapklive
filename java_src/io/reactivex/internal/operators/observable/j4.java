package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceArray;
/* loaded from: classes7.dex */
public final class j4<T, R> extends io.reactivex.internal.operators.observable.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.p<?>[] f51869b;

    /* renamed from: c  reason: collision with root package name */
    final Iterable<? extends io.reactivex.p<?>> f51870c;

    /* renamed from: d  reason: collision with root package name */
    final vh.o<? super Object[], R> f51871d;

    /* loaded from: classes7.dex */
    final class a implements vh.o<T, R> {
        a() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object[], java.lang.Object] */
        @Override // vh.o
        public R apply(T t10) throws Exception {
            return (R) xh.b.e(j4.this.f51871d.apply(new Object[]{t10}), "The combiner returned a null value");
        }
    }

    /* loaded from: classes7.dex */
    static final class b<T, R> extends AtomicInteger implements io.reactivex.r<T>, th.b {
        private static final long serialVersionUID = 1577321883966341961L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super R> f51873a;

        /* renamed from: b  reason: collision with root package name */
        final vh.o<? super Object[], R> f51874b;

        /* renamed from: c  reason: collision with root package name */
        final c[] f51875c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicReferenceArray<Object> f51876d;

        /* renamed from: e  reason: collision with root package name */
        final AtomicReference<th.b> f51877e;

        /* renamed from: f  reason: collision with root package name */
        final AtomicThrowable f51878f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f51879g;

        b(io.reactivex.r<? super R> rVar, vh.o<? super Object[], R> oVar, int i9) {
            this.f51873a = rVar;
            this.f51874b = oVar;
            c[] cVarArr = new c[i9];
            for (int i10 = 0; i10 < i9; i10++) {
                cVarArr[i10] = new c(this, i10);
            }
            this.f51875c = cVarArr;
            this.f51876d = new AtomicReferenceArray<>(i9);
            this.f51877e = new AtomicReference<>();
            this.f51878f = new AtomicThrowable();
        }

        void a(int i9) {
            c[] cVarArr = this.f51875c;
            for (int i10 = 0; i10 < cVarArr.length; i10++) {
                if (i10 != i9) {
                    cVarArr[i10].a();
                }
            }
        }

        void b(int i9, boolean z10) {
            if (z10) {
                return;
            }
            this.f51879g = true;
            a(i9);
            io.reactivex.internal.util.g.b(this.f51873a, this, this.f51878f);
        }

        void c(int i9, Throwable th2) {
            this.f51879g = true;
            DisposableHelper.dispose(this.f51877e);
            a(i9);
            io.reactivex.internal.util.g.d(this.f51873a, th2, this, this.f51878f);
        }

        void d(int i9, Object obj) {
            this.f51876d.set(i9, obj);
        }

        @Override // th.b
        public void dispose() {
            DisposableHelper.dispose(this.f51877e);
            for (c cVar : this.f51875c) {
                cVar.a();
            }
        }

        void e(io.reactivex.p<?>[] pVarArr, int i9) {
            c[] cVarArr = this.f51875c;
            AtomicReference<th.b> atomicReference = this.f51877e;
            for (int i10 = 0; i10 < i9 && !DisposableHelper.isDisposed(atomicReference.get()) && !this.f51879g; i10++) {
                pVarArr[i10].subscribe(cVarArr[i10]);
            }
        }

        @Override // th.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f51877e.get());
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f51879g) {
                return;
            }
            this.f51879g = true;
            a(-1);
            io.reactivex.internal.util.g.b(this.f51873a, this, this.f51878f);
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f51879g) {
                ci.a.s(th2);
                return;
            }
            this.f51879g = true;
            a(-1);
            io.reactivex.internal.util.g.d(this.f51873a, th2, this, this.f51878f);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f51879g) {
                return;
            }
            AtomicReferenceArray<Object> atomicReferenceArray = this.f51876d;
            int length = atomicReferenceArray.length();
            Object[] objArr = new Object[length + 1];
            int i9 = 0;
            objArr[0] = t10;
            while (i9 < length) {
                Object obj = atomicReferenceArray.get(i9);
                if (obj == null) {
                    return;
                }
                i9++;
                objArr[i9] = obj;
            }
            try {
                io.reactivex.internal.util.g.f(this.f51873a, xh.b.e(this.f51874b.apply(objArr), "combiner returned a null value"), this, this.f51878f);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                dispose();
                onError(th2);
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            DisposableHelper.setOnce(this.f51877e, bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class c extends AtomicReference<th.b> implements io.reactivex.r<Object> {
        private static final long serialVersionUID = 3256684027868224024L;

        /* renamed from: a  reason: collision with root package name */
        final b<?, ?> f51880a;

        /* renamed from: b  reason: collision with root package name */
        final int f51881b;

        /* renamed from: c  reason: collision with root package name */
        boolean f51882c;

        c(b<?, ?> bVar, int i9) {
            this.f51880a = bVar;
            this.f51881b = i9;
        }

        public void a() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f51880a.b(this.f51881b, this.f51882c);
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f51880a.c(this.f51881b, th2);
        }

        @Override // io.reactivex.r
        public void onNext(Object obj) {
            if (!this.f51882c) {
                this.f51882c = true;
            }
            this.f51880a.d(this.f51881b, obj);
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }
    }

    public j4(io.reactivex.p<T> pVar, io.reactivex.p<?>[] pVarArr, vh.o<? super Object[], R> oVar) {
        super(pVar);
        this.f51869b = pVarArr;
        this.f51870c = null;
        this.f51871d = oVar;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super R> rVar) {
        int length;
        io.reactivex.p<?>[] pVarArr = this.f51869b;
        if (pVarArr == null) {
            pVarArr = new io.reactivex.p[8];
            try {
                length = 0;
                for (io.reactivex.p<?> pVar : this.f51870c) {
                    if (length == pVarArr.length) {
                        pVarArr = (io.reactivex.p[]) Arrays.copyOf(pVarArr, (length >> 1) + length);
                    }
                    int i9 = length + 1;
                    pVarArr[length] = pVar;
                    length = i9;
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                EmptyDisposable.error(th2, rVar);
                return;
            }
        } else {
            length = pVarArr.length;
        }
        if (length == 0) {
            new u1(this.f51403a, new a()).subscribeActual(rVar);
            return;
        }
        b bVar = new b(rVar, this.f51871d, length);
        rVar.onSubscribe(bVar);
        bVar.e(pVarArr, length);
        this.f51403a.subscribe(bVar);
    }

    public j4(io.reactivex.p<T> pVar, Iterable<? extends io.reactivex.p<?>> iterable, vh.o<? super Object[], R> oVar) {
        super(pVar);
        this.f51869b = null;
        this.f51870c = iterable;
        this.f51871d = oVar;
    }
}
