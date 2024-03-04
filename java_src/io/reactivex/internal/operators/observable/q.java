package io.reactivex.internal.operators.observable;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class q<T> extends io.reactivex.internal.operators.observable.a<T, T> implements io.reactivex.r<T> {

    /* renamed from: k  reason: collision with root package name */
    static final a[] f52193k = new a[0];

    /* renamed from: l  reason: collision with root package name */
    static final a[] f52194l = new a[0];

    /* renamed from: b  reason: collision with root package name */
    final AtomicBoolean f52195b;

    /* renamed from: c  reason: collision with root package name */
    final int f52196c;

    /* renamed from: d  reason: collision with root package name */
    final AtomicReference<a<T>[]> f52197d;

    /* renamed from: e  reason: collision with root package name */
    volatile long f52198e;

    /* renamed from: f  reason: collision with root package name */
    final b<T> f52199f;

    /* renamed from: g  reason: collision with root package name */
    b<T> f52200g;

    /* renamed from: h  reason: collision with root package name */
    int f52201h;

    /* renamed from: i  reason: collision with root package name */
    Throwable f52202i;

    /* renamed from: j  reason: collision with root package name */
    volatile boolean f52203j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class a<T> extends AtomicInteger implements th.b {
        private static final long serialVersionUID = 6770240836423125754L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f52204a;

        /* renamed from: b  reason: collision with root package name */
        final q<T> f52205b;

        /* renamed from: c  reason: collision with root package name */
        b<T> f52206c;

        /* renamed from: d  reason: collision with root package name */
        int f52207d;

        /* renamed from: e  reason: collision with root package name */
        long f52208e;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f52209f;

        a(io.reactivex.r<? super T> rVar, q<T> qVar) {
            this.f52204a = rVar;
            this.f52205b = qVar;
            this.f52206c = qVar.f52199f;
        }

        @Override // th.b
        public void dispose() {
            if (this.f52209f) {
                return;
            }
            this.f52209f = true;
            this.f52205b.d(this);
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52209f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class b<T> {

        /* renamed from: a  reason: collision with root package name */
        final T[] f52210a;

        /* renamed from: b  reason: collision with root package name */
        volatile b<T> f52211b;

        b(int i9) {
            this.f52210a = (T[]) new Object[i9];
        }
    }

    public q(io.reactivex.k<T> kVar, int i9) {
        super(kVar);
        this.f52196c = i9;
        this.f52195b = new AtomicBoolean();
        b<T> bVar = new b<>(i9);
        this.f52199f = bVar;
        this.f52200g = bVar;
        this.f52197d = new AtomicReference<>(f52193k);
    }

    void c(a<T> aVar) {
        a<T>[] aVarArr;
        a<T>[] aVarArr2;
        do {
            aVarArr = this.f52197d.get();
            if (aVarArr == f52194l) {
                return;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = aVar;
        } while (!this.f52197d.compareAndSet(aVarArr, aVarArr2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    void d(a<T> aVar) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f52197d.get();
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
                aVarArr2 = f52193k;
            } else {
                a[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr3, 0, i9);
                System.arraycopy(aVarArr, i9 + 1, aVarArr3, i9, (length - i9) - 1);
                aVarArr2 = aVarArr3;
            }
        } while (!this.f52197d.compareAndSet(aVarArr, aVarArr2));
    }

    void e(a<T> aVar) {
        if (aVar.getAndIncrement() != 0) {
            return;
        }
        long j10 = aVar.f52208e;
        int i9 = aVar.f52207d;
        b<T> bVar = aVar.f52206c;
        io.reactivex.r<? super T> rVar = aVar.f52204a;
        int i10 = this.f52196c;
        int i11 = 1;
        while (!aVar.f52209f) {
            boolean z10 = this.f52203j;
            boolean z11 = this.f52198e == j10;
            if (z10 && z11) {
                aVar.f52206c = null;
                Throwable th2 = this.f52202i;
                if (th2 != null) {
                    rVar.onError(th2);
                    return;
                } else {
                    rVar.onComplete();
                    return;
                }
            } else if (!z11) {
                if (i9 == i10) {
                    bVar = bVar.f52211b;
                    i9 = 0;
                }
                rVar.onNext((Object) bVar.f52210a[i9]);
                i9++;
                j10++;
            } else {
                aVar.f52208e = j10;
                aVar.f52207d = i9;
                aVar.f52206c = bVar;
                i11 = aVar.addAndGet(-i11);
                if (i11 == 0) {
                    return;
                }
            }
        }
        aVar.f52206c = null;
    }

    @Override // io.reactivex.r
    public void onComplete() {
        this.f52203j = true;
        for (a<T> aVar : this.f52197d.getAndSet(f52194l)) {
            e(aVar);
        }
    }

    @Override // io.reactivex.r
    public void onError(Throwable th2) {
        this.f52202i = th2;
        this.f52203j = true;
        for (a<T> aVar : this.f52197d.getAndSet(f52194l)) {
            e(aVar);
        }
    }

    @Override // io.reactivex.r
    public void onNext(T t10) {
        int i9 = this.f52201h;
        if (i9 == this.f52196c) {
            b<T> bVar = new b<>(i9);
            bVar.f52210a[0] = t10;
            this.f52201h = 1;
            this.f52200g.f52211b = bVar;
            this.f52200g = bVar;
        } else {
            this.f52200g.f52210a[i9] = t10;
            this.f52201h = i9 + 1;
        }
        this.f52198e++;
        for (a<T> aVar : this.f52197d.get()) {
            e(aVar);
        }
    }

    @Override // io.reactivex.r
    public void onSubscribe(th.b bVar) {
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super T> rVar) {
        a<T> aVar = new a<>(rVar, this);
        rVar.onSubscribe(aVar);
        c(aVar);
        if (!this.f52195b.get() && this.f52195b.compareAndSet(false, true)) {
            this.f51403a.subscribe(this);
        } else {
            e(aVar);
        }
    }
}
