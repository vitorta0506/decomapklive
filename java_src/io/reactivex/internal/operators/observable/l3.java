package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class l3<T, R> extends io.reactivex.internal.operators.observable.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final vh.o<? super T, ? extends io.reactivex.p<? extends R>> f51947b;

    /* renamed from: c  reason: collision with root package name */
    final int f51948c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f51949d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class a<T, R> extends AtomicReference<th.b> implements io.reactivex.r<R> {
        private static final long serialVersionUID = 3837284832786408377L;

        /* renamed from: a  reason: collision with root package name */
        final b<T, R> f51950a;

        /* renamed from: b  reason: collision with root package name */
        final long f51951b;

        /* renamed from: c  reason: collision with root package name */
        final int f51952c;

        /* renamed from: d  reason: collision with root package name */
        volatile yh.g<R> f51953d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f51954e;

        a(b<T, R> bVar, long j10, int i9) {
            this.f51950a = bVar;
            this.f51951b = j10;
            this.f51952c = i9;
        }

        public void a() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f51951b == this.f51950a.f51965j) {
                this.f51954e = true;
                this.f51950a.b();
            }
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f51950a.c(this, th2);
        }

        @Override // io.reactivex.r
        public void onNext(R r10) {
            if (this.f51951b == this.f51950a.f51965j) {
                if (r10 != null) {
                    this.f51953d.offer(r10);
                }
                this.f51950a.b();
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.setOnce(this, bVar)) {
                if (bVar instanceof yh.b) {
                    yh.b bVar2 = (yh.b) bVar;
                    int requestFusion = bVar2.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f51953d = bVar2;
                        this.f51954e = true;
                        this.f51950a.b();
                        return;
                    } else if (requestFusion == 2) {
                        this.f51953d = bVar2;
                        return;
                    }
                }
                this.f51953d = new io.reactivex.internal.queue.b(this.f51952c);
            }
        }
    }

    /* loaded from: classes7.dex */
    static final class b<T, R> extends AtomicInteger implements io.reactivex.r<T>, th.b {

        /* renamed from: k  reason: collision with root package name */
        static final a<Object, Object> f51955k;
        private static final long serialVersionUID = -3491074160481096299L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super R> f51956a;

        /* renamed from: b  reason: collision with root package name */
        final vh.o<? super T, ? extends io.reactivex.p<? extends R>> f51957b;

        /* renamed from: c  reason: collision with root package name */
        final int f51958c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f51959d;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f51961f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f51962g;

        /* renamed from: h  reason: collision with root package name */
        th.b f51963h;

        /* renamed from: j  reason: collision with root package name */
        volatile long f51965j;

        /* renamed from: i  reason: collision with root package name */
        final AtomicReference<a<T, R>> f51964i = new AtomicReference<>();

        /* renamed from: e  reason: collision with root package name */
        final AtomicThrowable f51960e = new AtomicThrowable();

        static {
            a<Object, Object> aVar = new a<>(null, -1L, 1);
            f51955k = aVar;
            aVar.a();
        }

        b(io.reactivex.r<? super R> rVar, vh.o<? super T, ? extends io.reactivex.p<? extends R>> oVar, int i9, boolean z10) {
            this.f51956a = rVar;
            this.f51957b = oVar;
            this.f51958c = i9;
            this.f51959d = z10;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void a() {
            a<Object, Object> aVar;
            a<T, R> aVar2 = this.f51964i.get();
            a<Object, Object> aVar3 = f51955k;
            if (aVar2 == aVar3 || (aVar = (a) this.f51964i.getAndSet(aVar3)) == aVar3 || aVar == null) {
                return;
            }
            aVar.a();
        }

        /* JADX WARN: Removed duplicated region for block: B:101:0x000f A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:93:0x00e9 A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void b() {
            /*
                Method dump skipped, instructions count: 241
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.l3.b.b():void");
        }

        void c(a<T, R> aVar, Throwable th2) {
            if (aVar.f51951b == this.f51965j && this.f51960e.addThrowable(th2)) {
                if (!this.f51959d) {
                    this.f51963h.dispose();
                    this.f51961f = true;
                }
                aVar.f51954e = true;
                b();
                return;
            }
            ci.a.s(th2);
        }

        @Override // th.b
        public void dispose() {
            if (this.f51962g) {
                return;
            }
            this.f51962g = true;
            this.f51963h.dispose();
            a();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51962g;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f51961f) {
                return;
            }
            this.f51961f = true;
            b();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (!this.f51961f && this.f51960e.addThrowable(th2)) {
                if (!this.f51959d) {
                    a();
                }
                this.f51961f = true;
                b();
                return;
            }
            ci.a.s(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            a<T, R> aVar;
            long j10 = this.f51965j + 1;
            this.f51965j = j10;
            a<T, R> aVar2 = this.f51964i.get();
            if (aVar2 != null) {
                aVar2.a();
            }
            try {
                io.reactivex.p pVar = (io.reactivex.p) xh.b.e(this.f51957b.apply(t10), "The ObservableSource returned is null");
                a<T, R> aVar3 = new a<>(this, j10, this.f51958c);
                do {
                    aVar = this.f51964i.get();
                    if (aVar == f51955k) {
                        return;
                    }
                } while (!this.f51964i.compareAndSet(aVar, aVar3));
                pVar.subscribe(aVar3);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f51963h.dispose();
                onError(th2);
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f51963h, bVar)) {
                this.f51963h = bVar;
                this.f51956a.onSubscribe(this);
            }
        }
    }

    public l3(io.reactivex.p<T> pVar, vh.o<? super T, ? extends io.reactivex.p<? extends R>> oVar, int i9, boolean z10) {
        super(pVar);
        this.f51947b = oVar;
        this.f51948c = i9;
        this.f51949d = z10;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super R> rVar) {
        if (ObservableScalarXMap.b(this.f51403a, rVar, this.f51947b)) {
            return;
        }
        this.f51403a.subscribe(new b(rVar, this.f51947b, this.f51948c, this.f51949d));
    }
}
