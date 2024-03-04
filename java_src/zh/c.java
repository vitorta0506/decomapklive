package zh;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.k;
import io.reactivex.r;
import io.reactivex.u;
import io.reactivex.v;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import vh.o;
/* loaded from: classes7.dex */
public final class c<T, R> extends k<R> {

    /* renamed from: a  reason: collision with root package name */
    final k<T> f60494a;

    /* renamed from: b  reason: collision with root package name */
    final o<? super T, ? extends v<? extends R>> f60495b;

    /* renamed from: c  reason: collision with root package name */
    final ErrorMode f60496c;

    /* renamed from: d  reason: collision with root package name */
    final int f60497d;

    /* loaded from: classes7.dex */
    static final class a<T, R> extends AtomicInteger implements r<T>, th.b {
        private static final long serialVersionUID = -9140123220065488293L;

        /* renamed from: a  reason: collision with root package name */
        final r<? super R> f60498a;

        /* renamed from: b  reason: collision with root package name */
        final o<? super T, ? extends v<? extends R>> f60499b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicThrowable f60500c = new AtomicThrowable();

        /* renamed from: d  reason: collision with root package name */
        final C0707a<R> f60501d = new C0707a<>(this);

        /* renamed from: e  reason: collision with root package name */
        final yh.f<T> f60502e;

        /* renamed from: f  reason: collision with root package name */
        final ErrorMode f60503f;

        /* renamed from: g  reason: collision with root package name */
        th.b f60504g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f60505h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f60506i;

        /* renamed from: j  reason: collision with root package name */
        R f60507j;

        /* renamed from: k  reason: collision with root package name */
        volatile int f60508k;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: zh.c$a$a  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        public static final class C0707a<R> extends AtomicReference<th.b> implements u<R> {
            private static final long serialVersionUID = -3051469169682093892L;

            /* renamed from: a  reason: collision with root package name */
            final a<?, R> f60509a;

            C0707a(a<?, R> aVar) {
                this.f60509a = aVar;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.u
            public void onError(Throwable th2) {
                this.f60509a.b(th2);
            }

            @Override // io.reactivex.u
            public void onSubscribe(th.b bVar) {
                DisposableHelper.replace(this, bVar);
            }

            @Override // io.reactivex.u
            public void onSuccess(R r10) {
                this.f60509a.c(r10);
            }
        }

        a(r<? super R> rVar, o<? super T, ? extends v<? extends R>> oVar, int i9, ErrorMode errorMode) {
            this.f60498a = rVar;
            this.f60499b = oVar;
            this.f60503f = errorMode;
            this.f60502e = new io.reactivex.internal.queue.b(i9);
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            r<? super R> rVar = this.f60498a;
            ErrorMode errorMode = this.f60503f;
            yh.f<T> fVar = this.f60502e;
            AtomicThrowable atomicThrowable = this.f60500c;
            int i9 = 1;
            while (true) {
                if (this.f60506i) {
                    fVar.clear();
                    this.f60507j = null;
                } else {
                    int i10 = this.f60508k;
                    if (atomicThrowable.get() == null || (errorMode != ErrorMode.IMMEDIATE && (errorMode != ErrorMode.BOUNDARY || i10 != 0))) {
                        if (i10 == 0) {
                            boolean z10 = this.f60505h;
                            T poll = fVar.poll();
                            boolean z11 = poll == null;
                            if (z10 && z11) {
                                Throwable terminate = atomicThrowable.terminate();
                                if (terminate == null) {
                                    rVar.onComplete();
                                    return;
                                } else {
                                    rVar.onError(terminate);
                                    return;
                                }
                            } else if (!z11) {
                                try {
                                    v vVar = (v) xh.b.e(this.f60499b.apply(poll), "The mapper returned a null SingleSource");
                                    this.f60508k = 1;
                                    vVar.a(this.f60501d);
                                } catch (Throwable th2) {
                                    io.reactivex.exceptions.a.b(th2);
                                    this.f60504g.dispose();
                                    fVar.clear();
                                    atomicThrowable.addThrowable(th2);
                                    rVar.onError(atomicThrowable.terminate());
                                    return;
                                }
                            }
                        } else if (i10 == 2) {
                            this.f60507j = null;
                            rVar.onNext((R) this.f60507j);
                            this.f60508k = 0;
                        }
                    }
                }
                i9 = addAndGet(-i9);
                if (i9 == 0) {
                    return;
                }
            }
            fVar.clear();
            this.f60507j = null;
            rVar.onError(atomicThrowable.terminate());
        }

        void b(Throwable th2) {
            if (this.f60500c.addThrowable(th2)) {
                if (this.f60503f != ErrorMode.END) {
                    this.f60504g.dispose();
                }
                this.f60508k = 0;
                a();
                return;
            }
            ci.a.s(th2);
        }

        void c(R r10) {
            this.f60507j = r10;
            this.f60508k = 2;
            a();
        }

        @Override // th.b
        public void dispose() {
            this.f60506i = true;
            this.f60504g.dispose();
            this.f60501d.a();
            if (getAndIncrement() == 0) {
                this.f60502e.clear();
                this.f60507j = null;
            }
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f60506i;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f60505h = true;
            a();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f60500c.addThrowable(th2)) {
                if (this.f60503f == ErrorMode.IMMEDIATE) {
                    this.f60501d.a();
                }
                this.f60505h = true;
                a();
                return;
            }
            ci.a.s(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            this.f60502e.offer(t10);
            a();
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f60504g, bVar)) {
                this.f60504g = bVar;
                this.f60498a.onSubscribe(this);
            }
        }
    }

    public c(k<T> kVar, o<? super T, ? extends v<? extends R>> oVar, ErrorMode errorMode, int i9) {
        this.f60494a = kVar;
        this.f60495b = oVar;
        this.f60496c = errorMode;
        this.f60497d = i9;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(r<? super R> rVar) {
        if (g.c(this.f60494a, this.f60495b, rVar)) {
            return;
        }
        this.f60494a.subscribe(new a(rVar, this.f60495b, this.f60497d, this.f60496c));
    }
}
