package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class e2<T> extends bi.a<T> implements g2<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.p<T> f51581a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<b<T>> f51582b;

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.p<T> f51583c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class a<T> extends AtomicReference<Object> implements th.b {
        private static final long serialVersionUID = -1100270633763673112L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f51584a;

        a(io.reactivex.r<? super T> rVar) {
            this.f51584a = rVar;
        }

        void a(b<T> bVar) {
            if (compareAndSet(null, bVar)) {
                return;
            }
            bVar.b(this);
        }

        @Override // th.b
        public void dispose() {
            Object andSet = getAndSet(this);
            if (andSet == null || andSet == this) {
                return;
            }
            ((b) andSet).b(this);
        }

        @Override // th.b
        public boolean isDisposed() {
            return get() == this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class b<T> implements io.reactivex.r<T>, th.b {

        /* renamed from: e  reason: collision with root package name */
        static final a[] f51585e = new a[0];

        /* renamed from: f  reason: collision with root package name */
        static final a[] f51586f = new a[0];

        /* renamed from: a  reason: collision with root package name */
        final AtomicReference<b<T>> f51587a;

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<th.b> f51590d = new AtomicReference<>();

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<a<T>[]> f51588b = new AtomicReference<>(f51585e);

        /* renamed from: c  reason: collision with root package name */
        final AtomicBoolean f51589c = new AtomicBoolean();

        b(AtomicReference<b<T>> atomicReference) {
            this.f51587a = atomicReference;
        }

        boolean a(a<T> aVar) {
            a<T>[] aVarArr;
            a<T>[] aVarArr2;
            do {
                aVarArr = this.f51588b.get();
                if (aVarArr == f51586f) {
                    return false;
                }
                int length = aVarArr.length;
                aVarArr2 = new a[length + 1];
                System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
                aVarArr2[length] = aVar;
            } while (!this.f51588b.compareAndSet(aVarArr, aVarArr2));
            return true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void b(a<T> aVar) {
            a<T>[] aVarArr;
            a[] aVarArr2;
            do {
                aVarArr = this.f51588b.get();
                int length = aVarArr.length;
                if (length == 0) {
                    return;
                }
                int i9 = -1;
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        break;
                    } else if (aVarArr[i10].equals(aVar)) {
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
                    aVarArr2 = f51585e;
                } else {
                    a[] aVarArr3 = new a[length - 1];
                    System.arraycopy(aVarArr, 0, aVarArr3, 0, i9);
                    System.arraycopy(aVarArr, i9 + 1, aVarArr3, i9, (length - i9) - 1);
                    aVarArr2 = aVarArr3;
                }
            } while (!this.f51588b.compareAndSet(aVarArr, aVarArr2));
        }

        @Override // th.b
        public void dispose() {
            AtomicReference<a<T>[]> atomicReference = this.f51588b;
            a<T>[] aVarArr = f51586f;
            if (atomicReference.getAndSet(aVarArr) != aVarArr) {
                this.f51587a.compareAndSet(this, null);
                DisposableHelper.dispose(this.f51590d);
            }
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51588b.get() == f51586f;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f51587a.compareAndSet(this, null);
            for (a<T> aVar : this.f51588b.getAndSet(f51586f)) {
                aVar.f51584a.onComplete();
            }
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f51587a.compareAndSet(this, null);
            a<T>[] andSet = this.f51588b.getAndSet(f51586f);
            if (andSet.length != 0) {
                for (a<T> aVar : andSet) {
                    aVar.f51584a.onError(th2);
                }
                return;
            }
            ci.a.s(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            for (a<T> aVar : this.f51588b.get()) {
                aVar.f51584a.onNext(t10);
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            DisposableHelper.setOnce(this.f51590d, bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class c<T> implements io.reactivex.p<T> {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicReference<b<T>> f51591a;

        c(AtomicReference<b<T>> atomicReference) {
            this.f51591a = atomicReference;
        }

        @Override // io.reactivex.p
        public void subscribe(io.reactivex.r<? super T> rVar) {
            a aVar = new a(rVar);
            rVar.onSubscribe(aVar);
            while (true) {
                b<T> bVar = this.f51591a.get();
                if (bVar == null || bVar.isDisposed()) {
                    b<T> bVar2 = new b<>(this.f51591a);
                    if (this.f51591a.compareAndSet(bVar, bVar2)) {
                        bVar = bVar2;
                    } else {
                        continue;
                    }
                }
                if (bVar.a(aVar)) {
                    aVar.a(bVar);
                    return;
                }
            }
        }
    }

    private e2(io.reactivex.p<T> pVar, io.reactivex.p<T> pVar2, AtomicReference<b<T>> atomicReference) {
        this.f51583c = pVar;
        this.f51581a = pVar2;
        this.f51582b = atomicReference;
    }

    public static <T> bi.a<T> f(io.reactivex.p<T> pVar) {
        AtomicReference atomicReference = new AtomicReference();
        return ci.a.k(new e2(new c(atomicReference), pVar, atomicReference));
    }

    @Override // io.reactivex.internal.operators.observable.g2
    public io.reactivex.p<T> a() {
        return this.f51581a;
    }

    @Override // bi.a
    public void c(vh.g<? super th.b> gVar) {
        b<T> bVar;
        while (true) {
            bVar = this.f51582b.get();
            if (bVar != null && !bVar.isDisposed()) {
                break;
            }
            b<T> bVar2 = new b<>(this.f51582b);
            if (this.f51582b.compareAndSet(bVar, bVar2)) {
                bVar = bVar2;
                break;
            }
        }
        boolean z10 = true;
        z10 = (bVar.f51589c.get() || !bVar.f51589c.compareAndSet(false, true)) ? false : false;
        try {
            gVar.accept(bVar);
            if (z10) {
                this.f51581a.subscribe(bVar);
            }
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            throw io.reactivex.internal.util.f.d(th2);
        }
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super T> rVar) {
        this.f51583c.subscribe(rVar);
    }
}
