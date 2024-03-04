package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.ArrayCompositeDisposable;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes7.dex */
public final class a3<T> extends io.reactivex.t<Boolean> implements yh.a<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.p<? extends T> f51413a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.p<? extends T> f51414b;

    /* renamed from: c  reason: collision with root package name */
    final vh.d<? super T, ? super T> f51415c;

    /* renamed from: d  reason: collision with root package name */
    final int f51416d;

    /* loaded from: classes7.dex */
    static final class a<T> extends AtomicInteger implements th.b {
        private static final long serialVersionUID = -6178010334400373240L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.u<? super Boolean> f51417a;

        /* renamed from: b  reason: collision with root package name */
        final vh.d<? super T, ? super T> f51418b;

        /* renamed from: c  reason: collision with root package name */
        final ArrayCompositeDisposable f51419c;

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.p<? extends T> f51420d;

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.p<? extends T> f51421e;

        /* renamed from: f  reason: collision with root package name */
        final b<T>[] f51422f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f51423g;

        /* renamed from: h  reason: collision with root package name */
        T f51424h;

        /* renamed from: i  reason: collision with root package name */
        T f51425i;

        a(io.reactivex.u<? super Boolean> uVar, int i9, io.reactivex.p<? extends T> pVar, io.reactivex.p<? extends T> pVar2, vh.d<? super T, ? super T> dVar) {
            this.f51417a = uVar;
            this.f51420d = pVar;
            this.f51421e = pVar2;
            this.f51418b = dVar;
            this.f51422f = r3;
            b<T>[] bVarArr = {new b<>(this, 0, i9), new b<>(this, 1, i9)};
            this.f51419c = new ArrayCompositeDisposable(2);
        }

        void a(io.reactivex.internal.queue.b<T> bVar, io.reactivex.internal.queue.b<T> bVar2) {
            this.f51423g = true;
            bVar.clear();
            bVar2.clear();
        }

        void b() {
            Throwable th2;
            Throwable th3;
            if (getAndIncrement() != 0) {
                return;
            }
            b<T>[] bVarArr = this.f51422f;
            b<T> bVar = bVarArr[0];
            io.reactivex.internal.queue.b<T> bVar2 = bVar.f51427b;
            b<T> bVar3 = bVarArr[1];
            io.reactivex.internal.queue.b<T> bVar4 = bVar3.f51427b;
            int i9 = 1;
            while (!this.f51423g) {
                boolean z10 = bVar.f51429d;
                if (z10 && (th3 = bVar.f51430e) != null) {
                    a(bVar2, bVar4);
                    this.f51417a.onError(th3);
                    return;
                }
                boolean z11 = bVar3.f51429d;
                if (z11 && (th2 = bVar3.f51430e) != null) {
                    a(bVar2, bVar4);
                    this.f51417a.onError(th2);
                    return;
                }
                if (this.f51424h == null) {
                    this.f51424h = bVar2.poll();
                }
                boolean z12 = this.f51424h == null;
                if (this.f51425i == null) {
                    this.f51425i = bVar4.poll();
                }
                T t10 = this.f51425i;
                boolean z13 = t10 == null;
                if (z10 && z11 && z12 && z13) {
                    this.f51417a.onSuccess(Boolean.TRUE);
                    return;
                } else if (z10 && z11 && z12 != z13) {
                    a(bVar2, bVar4);
                    this.f51417a.onSuccess(Boolean.FALSE);
                    return;
                } else {
                    if (!z12 && !z13) {
                        try {
                            if (!this.f51418b.test((T) this.f51424h, t10)) {
                                a(bVar2, bVar4);
                                this.f51417a.onSuccess(Boolean.FALSE);
                                return;
                            }
                            this.f51424h = null;
                            this.f51425i = null;
                        } catch (Throwable th4) {
                            io.reactivex.exceptions.a.b(th4);
                            a(bVar2, bVar4);
                            this.f51417a.onError(th4);
                            return;
                        }
                    }
                    if (z12 || z13) {
                        i9 = addAndGet(-i9);
                        if (i9 == 0) {
                            return;
                        }
                    }
                }
            }
            bVar2.clear();
            bVar4.clear();
        }

        boolean c(th.b bVar, int i9) {
            return this.f51419c.setResource(i9, bVar);
        }

        void d() {
            b<T>[] bVarArr = this.f51422f;
            this.f51420d.subscribe(bVarArr[0]);
            this.f51421e.subscribe(bVarArr[1]);
        }

        @Override // th.b
        public void dispose() {
            if (this.f51423g) {
                return;
            }
            this.f51423g = true;
            this.f51419c.dispose();
            if (getAndIncrement() == 0) {
                b<T>[] bVarArr = this.f51422f;
                bVarArr[0].f51427b.clear();
                bVarArr[1].f51427b.clear();
            }
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51423g;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class b<T> implements io.reactivex.r<T> {

        /* renamed from: a  reason: collision with root package name */
        final a<T> f51426a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.internal.queue.b<T> f51427b;

        /* renamed from: c  reason: collision with root package name */
        final int f51428c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f51429d;

        /* renamed from: e  reason: collision with root package name */
        Throwable f51430e;

        b(a<T> aVar, int i9, int i10) {
            this.f51426a = aVar;
            this.f51428c = i9;
            this.f51427b = new io.reactivex.internal.queue.b<>(i10);
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f51429d = true;
            this.f51426a.b();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f51430e = th2;
            this.f51429d = true;
            this.f51426a.b();
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            this.f51427b.offer(t10);
            this.f51426a.b();
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            this.f51426a.c(bVar, this.f51428c);
        }
    }

    public a3(io.reactivex.p<? extends T> pVar, io.reactivex.p<? extends T> pVar2, vh.d<? super T, ? super T> dVar, int i9) {
        this.f51413a = pVar;
        this.f51414b = pVar2;
        this.f51415c = dVar;
        this.f51416d = i9;
    }

    @Override // yh.a
    public io.reactivex.k<Boolean> b() {
        return ci.a.o(new z2(this.f51413a, this.f51414b, this.f51415c, this.f51416d));
    }

    @Override // io.reactivex.t
    public void e(io.reactivex.u<? super Boolean> uVar) {
        a aVar = new a(uVar, this.f51416d, this.f51413a, this.f51414b, this.f51415c);
        uVar.onSubscribe(aVar);
        aVar.d();
    }
}
