package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.ArrayCompositeDisposable;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes7.dex */
public final class z2<T> extends io.reactivex.k<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.p<? extends T> f52645a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.p<? extends T> f52646b;

    /* renamed from: c  reason: collision with root package name */
    final vh.d<? super T, ? super T> f52647c;

    /* renamed from: d  reason: collision with root package name */
    final int f52648d;

    /* loaded from: classes7.dex */
    static final class a<T> extends AtomicInteger implements th.b {
        private static final long serialVersionUID = -6178010334400373240L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super Boolean> f52649a;

        /* renamed from: b  reason: collision with root package name */
        final vh.d<? super T, ? super T> f52650b;

        /* renamed from: c  reason: collision with root package name */
        final ArrayCompositeDisposable f52651c;

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.p<? extends T> f52652d;

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.p<? extends T> f52653e;

        /* renamed from: f  reason: collision with root package name */
        final b<T>[] f52654f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f52655g;

        /* renamed from: h  reason: collision with root package name */
        T f52656h;

        /* renamed from: i  reason: collision with root package name */
        T f52657i;

        a(io.reactivex.r<? super Boolean> rVar, int i9, io.reactivex.p<? extends T> pVar, io.reactivex.p<? extends T> pVar2, vh.d<? super T, ? super T> dVar) {
            this.f52649a = rVar;
            this.f52652d = pVar;
            this.f52653e = pVar2;
            this.f52650b = dVar;
            this.f52654f = r3;
            b<T>[] bVarArr = {new b<>(this, 0, i9), new b<>(this, 1, i9)};
            this.f52651c = new ArrayCompositeDisposable(2);
        }

        void a(io.reactivex.internal.queue.b<T> bVar, io.reactivex.internal.queue.b<T> bVar2) {
            this.f52655g = true;
            bVar.clear();
            bVar2.clear();
        }

        void b() {
            Throwable th2;
            Throwable th3;
            if (getAndIncrement() != 0) {
                return;
            }
            b<T>[] bVarArr = this.f52654f;
            b<T> bVar = bVarArr[0];
            io.reactivex.internal.queue.b<T> bVar2 = bVar.f52659b;
            b<T> bVar3 = bVarArr[1];
            io.reactivex.internal.queue.b<T> bVar4 = bVar3.f52659b;
            int i9 = 1;
            while (!this.f52655g) {
                boolean z10 = bVar.f52661d;
                if (z10 && (th3 = bVar.f52662e) != null) {
                    a(bVar2, bVar4);
                    this.f52649a.onError(th3);
                    return;
                }
                boolean z11 = bVar3.f52661d;
                if (z11 && (th2 = bVar3.f52662e) != null) {
                    a(bVar2, bVar4);
                    this.f52649a.onError(th2);
                    return;
                }
                if (this.f52656h == null) {
                    this.f52656h = bVar2.poll();
                }
                boolean z12 = this.f52656h == null;
                if (this.f52657i == null) {
                    this.f52657i = bVar4.poll();
                }
                T t10 = this.f52657i;
                boolean z13 = t10 == null;
                if (z10 && z11 && z12 && z13) {
                    this.f52649a.onNext(Boolean.TRUE);
                    this.f52649a.onComplete();
                    return;
                } else if (z10 && z11 && z12 != z13) {
                    a(bVar2, bVar4);
                    this.f52649a.onNext(Boolean.FALSE);
                    this.f52649a.onComplete();
                    return;
                } else {
                    if (!z12 && !z13) {
                        try {
                            if (!this.f52650b.test((T) this.f52656h, t10)) {
                                a(bVar2, bVar4);
                                this.f52649a.onNext(Boolean.FALSE);
                                this.f52649a.onComplete();
                                return;
                            }
                            this.f52656h = null;
                            this.f52657i = null;
                        } catch (Throwable th4) {
                            io.reactivex.exceptions.a.b(th4);
                            a(bVar2, bVar4);
                            this.f52649a.onError(th4);
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
            return this.f52651c.setResource(i9, bVar);
        }

        void d() {
            b<T>[] bVarArr = this.f52654f;
            this.f52652d.subscribe(bVarArr[0]);
            this.f52653e.subscribe(bVarArr[1]);
        }

        @Override // th.b
        public void dispose() {
            if (this.f52655g) {
                return;
            }
            this.f52655g = true;
            this.f52651c.dispose();
            if (getAndIncrement() == 0) {
                b<T>[] bVarArr = this.f52654f;
                bVarArr[0].f52659b.clear();
                bVarArr[1].f52659b.clear();
            }
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52655g;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class b<T> implements io.reactivex.r<T> {

        /* renamed from: a  reason: collision with root package name */
        final a<T> f52658a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.internal.queue.b<T> f52659b;

        /* renamed from: c  reason: collision with root package name */
        final int f52660c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f52661d;

        /* renamed from: e  reason: collision with root package name */
        Throwable f52662e;

        b(a<T> aVar, int i9, int i10) {
            this.f52658a = aVar;
            this.f52660c = i9;
            this.f52659b = new io.reactivex.internal.queue.b<>(i10);
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f52661d = true;
            this.f52658a.b();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f52662e = th2;
            this.f52661d = true;
            this.f52658a.b();
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            this.f52659b.offer(t10);
            this.f52658a.b();
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            this.f52658a.c(bVar, this.f52660c);
        }
    }

    public z2(io.reactivex.p<? extends T> pVar, io.reactivex.p<? extends T> pVar2, vh.d<? super T, ? super T> dVar, int i9) {
        this.f52645a = pVar;
        this.f52646b = pVar2;
        this.f52647c = dVar;
        this.f52648d = i9;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super Boolean> rVar) {
        a aVar = new a(rVar, this.f52648d, this.f52645a, this.f52646b, this.f52647c);
        rVar.onSubscribe(aVar);
        aVar.d();
    }
}
