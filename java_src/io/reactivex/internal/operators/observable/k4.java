package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class k4<T, R> extends io.reactivex.k<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.p<? extends T>[] f51903a;

    /* renamed from: b  reason: collision with root package name */
    final Iterable<? extends io.reactivex.p<? extends T>> f51904b;

    /* renamed from: c  reason: collision with root package name */
    final vh.o<? super Object[], ? extends R> f51905c;

    /* renamed from: d  reason: collision with root package name */
    final int f51906d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f51907e;

    /* loaded from: classes7.dex */
    static final class a<T, R> extends AtomicInteger implements th.b {
        private static final long serialVersionUID = 2983708048395377667L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super R> f51908a;

        /* renamed from: b  reason: collision with root package name */
        final vh.o<? super Object[], ? extends R> f51909b;

        /* renamed from: c  reason: collision with root package name */
        final b<T, R>[] f51910c;

        /* renamed from: d  reason: collision with root package name */
        final T[] f51911d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f51912e;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f51913f;

        a(io.reactivex.r<? super R> rVar, vh.o<? super Object[], ? extends R> oVar, int i9, boolean z10) {
            this.f51908a = rVar;
            this.f51909b = oVar;
            this.f51910c = new b[i9];
            this.f51911d = (T[]) new Object[i9];
            this.f51912e = z10;
        }

        void a() {
            d();
            b();
        }

        void b() {
            for (b<T, R> bVar : this.f51910c) {
                bVar.a();
            }
        }

        boolean c(boolean z10, boolean z11, io.reactivex.r<? super R> rVar, boolean z12, b<?, ?> bVar) {
            if (this.f51913f) {
                a();
                return true;
            } else if (z10) {
                if (z12) {
                    if (z11) {
                        Throwable th2 = bVar.f51917d;
                        this.f51913f = true;
                        a();
                        if (th2 != null) {
                            rVar.onError(th2);
                        } else {
                            rVar.onComplete();
                        }
                        return true;
                    }
                    return false;
                }
                Throwable th3 = bVar.f51917d;
                if (th3 != null) {
                    this.f51913f = true;
                    a();
                    rVar.onError(th3);
                    return true;
                } else if (z11) {
                    this.f51913f = true;
                    a();
                    rVar.onComplete();
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }

        void d() {
            for (b<T, R> bVar : this.f51910c) {
                bVar.f51915b.clear();
            }
        }

        @Override // th.b
        public void dispose() {
            if (this.f51913f) {
                return;
            }
            this.f51913f = true;
            b();
            if (getAndIncrement() == 0) {
                d();
            }
        }

        public void e() {
            Throwable th2;
            if (getAndIncrement() != 0) {
                return;
            }
            b<T, R>[] bVarArr = this.f51910c;
            io.reactivex.r<? super R> rVar = this.f51908a;
            T[] tArr = this.f51911d;
            boolean z10 = this.f51912e;
            int i9 = 1;
            while (true) {
                int i10 = 0;
                int i11 = 0;
                for (b<T, R> bVar : bVarArr) {
                    if (tArr[i11] == null) {
                        boolean z11 = bVar.f51916c;
                        T poll = bVar.f51915b.poll();
                        boolean z12 = poll == null;
                        if (c(z11, z12, rVar, z10, bVar)) {
                            return;
                        }
                        if (z12) {
                            i10++;
                        } else {
                            tArr[i11] = poll;
                        }
                    } else if (bVar.f51916c && !z10 && (th2 = bVar.f51917d) != null) {
                        this.f51913f = true;
                        a();
                        rVar.onError(th2);
                        return;
                    }
                    i11++;
                }
                if (i10 != 0) {
                    i9 = addAndGet(-i9);
                    if (i9 == 0) {
                        return;
                    }
                } else {
                    try {
                        rVar.onNext((Object) xh.b.e(this.f51909b.apply(tArr.clone()), "The zipper returned a null value"));
                        Arrays.fill(tArr, (Object) null);
                    } catch (Throwable th3) {
                        io.reactivex.exceptions.a.b(th3);
                        a();
                        rVar.onError(th3);
                        return;
                    }
                }
            }
        }

        public void f(io.reactivex.p<? extends T>[] pVarArr, int i9) {
            b<T, R>[] bVarArr = this.f51910c;
            int length = bVarArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                bVarArr[i10] = new b<>(this, i9);
            }
            lazySet(0);
            this.f51908a.onSubscribe(this);
            for (int i11 = 0; i11 < length && !this.f51913f; i11++) {
                pVarArr[i11].subscribe(bVarArr[i11]);
            }
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51913f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class b<T, R> implements io.reactivex.r<T> {

        /* renamed from: a  reason: collision with root package name */
        final a<T, R> f51914a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.internal.queue.b<T> f51915b;

        /* renamed from: c  reason: collision with root package name */
        volatile boolean f51916c;

        /* renamed from: d  reason: collision with root package name */
        Throwable f51917d;

        /* renamed from: e  reason: collision with root package name */
        final AtomicReference<th.b> f51918e = new AtomicReference<>();

        b(a<T, R> aVar, int i9) {
            this.f51914a = aVar;
            this.f51915b = new io.reactivex.internal.queue.b<>(i9);
        }

        public void a() {
            DisposableHelper.dispose(this.f51918e);
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f51916c = true;
            this.f51914a.e();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f51917d = th2;
            this.f51916c = true;
            this.f51914a.e();
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            this.f51915b.offer(t10);
            this.f51914a.e();
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            DisposableHelper.setOnce(this.f51918e, bVar);
        }
    }

    public k4(io.reactivex.p<? extends T>[] pVarArr, Iterable<? extends io.reactivex.p<? extends T>> iterable, vh.o<? super Object[], ? extends R> oVar, int i9, boolean z10) {
        this.f51903a = pVarArr;
        this.f51904b = iterable;
        this.f51905c = oVar;
        this.f51906d = i9;
        this.f51907e = z10;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super R> rVar) {
        int length;
        io.reactivex.p<? extends T>[] pVarArr = this.f51903a;
        if (pVarArr == null) {
            pVarArr = new io.reactivex.p[8];
            length = 0;
            for (io.reactivex.p<? extends T> pVar : this.f51904b) {
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
        if (length == 0) {
            EmptyDisposable.complete(rVar);
        } else {
            new a(rVar, this.f51905c, length, this.f51907e).f(pVarArr, this.f51906d);
        }
    }
}
