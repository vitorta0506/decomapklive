package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class f2<T> extends bi.a<T> implements wh.c {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.p<T> f51634a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<b<T>> f51635b = new AtomicReference<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class a<T> extends AtomicReference<b<T>> implements th.b {
        private static final long serialVersionUID = 7463222674719692880L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f51636a;

        a(io.reactivex.r<? super T> rVar, b<T> bVar) {
            this.f51636a = rVar;
            lazySet(bVar);
        }

        @Override // th.b
        public void dispose() {
            b<T> andSet = getAndSet(null);
            if (andSet != null) {
                andSet.b(this);
            }
        }

        @Override // th.b
        public boolean isDisposed() {
            return get() == null;
        }
    }

    /* loaded from: classes7.dex */
    static final class b<T> extends AtomicReference<a<T>[]> implements io.reactivex.r<T>, th.b {

        /* renamed from: e  reason: collision with root package name */
        static final a[] f51637e = new a[0];

        /* renamed from: f  reason: collision with root package name */
        static final a[] f51638f = new a[0];
        private static final long serialVersionUID = -3251430252873581268L;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<b<T>> f51640b;

        /* renamed from: d  reason: collision with root package name */
        Throwable f51642d;

        /* renamed from: a  reason: collision with root package name */
        final AtomicBoolean f51639a = new AtomicBoolean();

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<th.b> f51641c = new AtomicReference<>();

        b(AtomicReference<b<T>> atomicReference) {
            this.f51640b = atomicReference;
            lazySet(f51637e);
        }

        public boolean a(a<T> aVar) {
            a<T>[] aVarArr;
            a[] aVarArr2;
            do {
                aVarArr = get();
                if (aVarArr == f51638f) {
                    return false;
                }
                int length = aVarArr.length;
                aVarArr2 = new a[length + 1];
                System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
                aVarArr2[length] = aVar;
            } while (!compareAndSet(aVarArr, aVarArr2));
            return true;
        }

        public void b(a<T> aVar) {
            a<T>[] aVarArr;
            a[] aVarArr2;
            do {
                aVarArr = get();
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
                aVarArr2 = f51637e;
                if (length != 1) {
                    aVarArr2 = new a[length - 1];
                    System.arraycopy(aVarArr, 0, aVarArr2, 0, i9);
                    System.arraycopy(aVarArr, i9 + 1, aVarArr2, i9, (length - i9) - 1);
                }
            } while (!compareAndSet(aVarArr, aVarArr2));
        }

        @Override // th.b
        public void dispose() {
            getAndSet(f51638f);
            this.f51640b.compareAndSet(this, null);
            DisposableHelper.dispose(this.f51641c);
        }

        @Override // th.b
        public boolean isDisposed() {
            return get() == f51638f;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f51641c.lazySet(DisposableHelper.DISPOSED);
            for (a<T> aVar : getAndSet(f51638f)) {
                aVar.f51636a.onComplete();
            }
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f51642d = th2;
            this.f51641c.lazySet(DisposableHelper.DISPOSED);
            for (a<T> aVar : getAndSet(f51638f)) {
                aVar.f51636a.onError(th2);
            }
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            for (a<T> aVar : get()) {
                aVar.f51636a.onNext(t10);
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            DisposableHelper.setOnce(this.f51641c, bVar);
        }
    }

    public f2(io.reactivex.p<T> pVar) {
        this.f51634a = pVar;
    }

    @Override // wh.c
    public void b(th.b bVar) {
        this.f51635b.compareAndSet((b) bVar, null);
    }

    @Override // bi.a
    public void c(vh.g<? super th.b> gVar) {
        b<T> bVar;
        while (true) {
            bVar = this.f51635b.get();
            if (bVar != null && !bVar.isDisposed()) {
                break;
            }
            b<T> bVar2 = new b<>(this.f51635b);
            if (this.f51635b.compareAndSet(bVar, bVar2)) {
                bVar = bVar2;
                break;
            }
        }
        boolean z10 = true;
        z10 = (bVar.f51639a.get() || !bVar.f51639a.compareAndSet(false, true)) ? false : false;
        try {
            gVar.accept(bVar);
            if (z10) {
                this.f51634a.subscribe(bVar);
            }
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            throw io.reactivex.internal.util.f.d(th2);
        }
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super T> rVar) {
        b<T> bVar;
        while (true) {
            bVar = this.f51635b.get();
            if (bVar != null) {
                break;
            }
            b<T> bVar2 = new b<>(this.f51635b);
            if (this.f51635b.compareAndSet(bVar, bVar2)) {
                bVar = bVar2;
                break;
            }
        }
        a<T> aVar = new a<>(rVar, bVar);
        rVar.onSubscribe(aVar);
        if (bVar.a(aVar)) {
            if (aVar.isDisposed()) {
                bVar.b(aVar);
                return;
            }
            return;
        }
        Throwable th2 = bVar.f51642d;
        if (th2 != null) {
            rVar.onError(th2);
        } else {
            rVar.onComplete();
        }
    }
}
