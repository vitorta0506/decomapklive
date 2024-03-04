package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class h<T> extends io.reactivex.k<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.p<? extends T>[] f51711a;

    /* renamed from: b  reason: collision with root package name */
    final Iterable<? extends io.reactivex.p<? extends T>> f51712b;

    /* loaded from: classes7.dex */
    static final class a<T> implements th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f51713a;

        /* renamed from: b  reason: collision with root package name */
        final b<T>[] f51714b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicInteger f51715c = new AtomicInteger();

        a(io.reactivex.r<? super T> rVar, int i9) {
            this.f51713a = rVar;
            this.f51714b = new b[i9];
        }

        public void a(io.reactivex.p<? extends T>[] pVarArr) {
            b<T>[] bVarArr = this.f51714b;
            int length = bVarArr.length;
            int i9 = 0;
            while (i9 < length) {
                int i10 = i9 + 1;
                bVarArr[i9] = new b<>(this, i10, this.f51713a);
                i9 = i10;
            }
            this.f51715c.lazySet(0);
            this.f51713a.onSubscribe(this);
            for (int i11 = 0; i11 < length && this.f51715c.get() == 0; i11++) {
                pVarArr[i11].subscribe(bVarArr[i11]);
            }
        }

        public boolean b(int i9) {
            int i10 = this.f51715c.get();
            int i11 = 0;
            if (i10 != 0) {
                return i10 == i9;
            } else if (this.f51715c.compareAndSet(0, i9)) {
                b<T>[] bVarArr = this.f51714b;
                int length = bVarArr.length;
                while (i11 < length) {
                    int i12 = i11 + 1;
                    if (i12 != i9) {
                        bVarArr[i11].a();
                    }
                    i11 = i12;
                }
                return true;
            } else {
                return false;
            }
        }

        @Override // th.b
        public void dispose() {
            if (this.f51715c.get() != -1) {
                this.f51715c.lazySet(-1);
                for (b<T> bVar : this.f51714b) {
                    bVar.a();
                }
            }
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51715c.get() == -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class b<T> extends AtomicReference<th.b> implements io.reactivex.r<T> {
        private static final long serialVersionUID = -1185974347409665484L;

        /* renamed from: a  reason: collision with root package name */
        final a<T> f51716a;

        /* renamed from: b  reason: collision with root package name */
        final int f51717b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.r<? super T> f51718c;

        /* renamed from: d  reason: collision with root package name */
        boolean f51719d;

        b(a<T> aVar, int i9, io.reactivex.r<? super T> rVar) {
            this.f51716a = aVar;
            this.f51717b = i9;
            this.f51718c = rVar;
        }

        public void a() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f51719d) {
                this.f51718c.onComplete();
            } else if (this.f51716a.b(this.f51717b)) {
                this.f51719d = true;
                this.f51718c.onComplete();
            }
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f51719d) {
                this.f51718c.onError(th2);
            } else if (this.f51716a.b(this.f51717b)) {
                this.f51719d = true;
                this.f51718c.onError(th2);
            } else {
                ci.a.s(th2);
            }
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f51719d) {
                this.f51718c.onNext(t10);
            } else if (this.f51716a.b(this.f51717b)) {
                this.f51719d = true;
                this.f51718c.onNext(t10);
            } else {
                get().dispose();
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }
    }

    public h(io.reactivex.p<? extends T>[] pVarArr, Iterable<? extends io.reactivex.p<? extends T>> iterable) {
        this.f51711a = pVarArr;
        this.f51712b = iterable;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super T> rVar) {
        int length;
        io.reactivex.p<? extends T>[] pVarArr = this.f51711a;
        if (pVarArr == null) {
            pVarArr = new io.reactivex.p[8];
            try {
                length = 0;
                for (io.reactivex.p<? extends T> pVar : this.f51712b) {
                    if (pVar == null) {
                        EmptyDisposable.error(new NullPointerException("One of the sources is null"), rVar);
                        return;
                    }
                    if (length == pVarArr.length) {
                        io.reactivex.p<? extends T>[] pVarArr2 = new io.reactivex.p[(length >> 2) + length];
                        System.arraycopy(pVarArr, 0, pVarArr2, 0, length);
                        pVarArr = pVarArr2;
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
            EmptyDisposable.complete(rVar);
        } else if (length == 1) {
            pVarArr[0].subscribe(rVar);
        } else {
            new a(rVar, length).a(pVarArr);
        }
    }
}
