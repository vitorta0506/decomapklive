package zh;

import io.reactivex.h;
import io.reactivex.i;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.k;
import io.reactivex.r;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import vh.o;
/* loaded from: classes7.dex */
public final class b<T, R> extends k<R> {

    /* renamed from: a  reason: collision with root package name */
    final k<T> f60478a;

    /* renamed from: b  reason: collision with root package name */
    final o<? super T, ? extends i<? extends R>> f60479b;

    /* renamed from: c  reason: collision with root package name */
    final ErrorMode f60480c;

    /* renamed from: d  reason: collision with root package name */
    final int f60481d;

    /* loaded from: classes7.dex */
    static final class a<T, R> extends AtomicInteger implements r<T>, th.b {
        private static final long serialVersionUID = -9140123220065488293L;

        /* renamed from: a  reason: collision with root package name */
        final r<? super R> f60482a;

        /* renamed from: b  reason: collision with root package name */
        final o<? super T, ? extends i<? extends R>> f60483b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicThrowable f60484c = new AtomicThrowable();

        /* renamed from: d  reason: collision with root package name */
        final C0706a<R> f60485d = new C0706a<>(this);

        /* renamed from: e  reason: collision with root package name */
        final yh.f<T> f60486e;

        /* renamed from: f  reason: collision with root package name */
        final ErrorMode f60487f;

        /* renamed from: g  reason: collision with root package name */
        th.b f60488g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f60489h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f60490i;

        /* renamed from: j  reason: collision with root package name */
        R f60491j;

        /* renamed from: k  reason: collision with root package name */
        volatile int f60492k;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: zh.b$a$a  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        public static final class C0706a<R> extends AtomicReference<th.b> implements h<R> {
            private static final long serialVersionUID = -3051469169682093892L;

            /* renamed from: a  reason: collision with root package name */
            final a<?, R> f60493a;

            C0706a(a<?, R> aVar) {
                this.f60493a = aVar;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.h
            public void onComplete() {
                this.f60493a.b();
            }

            @Override // io.reactivex.h
            public void onError(Throwable th2) {
                this.f60493a.c(th2);
            }

            @Override // io.reactivex.h
            public void onSubscribe(th.b bVar) {
                DisposableHelper.replace(this, bVar);
            }

            @Override // io.reactivex.h
            public void onSuccess(R r10) {
                this.f60493a.d(r10);
            }
        }

        a(r<? super R> rVar, o<? super T, ? extends i<? extends R>> oVar, int i9, ErrorMode errorMode) {
            this.f60482a = rVar;
            this.f60483b = oVar;
            this.f60487f = errorMode;
            this.f60486e = new io.reactivex.internal.queue.b(i9);
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            r<? super R> rVar = this.f60482a;
            ErrorMode errorMode = this.f60487f;
            yh.f<T> fVar = this.f60486e;
            AtomicThrowable atomicThrowable = this.f60484c;
            int i9 = 1;
            while (true) {
                if (this.f60490i) {
                    fVar.clear();
                    this.f60491j = null;
                } else {
                    int i10 = this.f60492k;
                    if (atomicThrowable.get() == null || (errorMode != ErrorMode.IMMEDIATE && (errorMode != ErrorMode.BOUNDARY || i10 != 0))) {
                        if (i10 == 0) {
                            boolean z10 = this.f60489h;
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
                                    i iVar = (i) xh.b.e(this.f60483b.apply(poll), "The mapper returned a null MaybeSource");
                                    this.f60492k = 1;
                                    iVar.a(this.f60485d);
                                } catch (Throwable th2) {
                                    io.reactivex.exceptions.a.b(th2);
                                    this.f60488g.dispose();
                                    fVar.clear();
                                    atomicThrowable.addThrowable(th2);
                                    rVar.onError(atomicThrowable.terminate());
                                    return;
                                }
                            }
                        } else if (i10 == 2) {
                            this.f60491j = null;
                            rVar.onNext((R) this.f60491j);
                            this.f60492k = 0;
                        }
                    }
                }
                i9 = addAndGet(-i9);
                if (i9 == 0) {
                    return;
                }
            }
            fVar.clear();
            this.f60491j = null;
            rVar.onError(atomicThrowable.terminate());
        }

        void b() {
            this.f60492k = 0;
            a();
        }

        void c(Throwable th2) {
            if (this.f60484c.addThrowable(th2)) {
                if (this.f60487f != ErrorMode.END) {
                    this.f60488g.dispose();
                }
                this.f60492k = 0;
                a();
                return;
            }
            ci.a.s(th2);
        }

        void d(R r10) {
            this.f60491j = r10;
            this.f60492k = 2;
            a();
        }

        @Override // th.b
        public void dispose() {
            this.f60490i = true;
            this.f60488g.dispose();
            this.f60485d.a();
            if (getAndIncrement() == 0) {
                this.f60486e.clear();
                this.f60491j = null;
            }
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f60490i;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f60489h = true;
            a();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f60484c.addThrowable(th2)) {
                if (this.f60487f == ErrorMode.IMMEDIATE) {
                    this.f60485d.a();
                }
                this.f60489h = true;
                a();
                return;
            }
            ci.a.s(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            this.f60486e.offer(t10);
            a();
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f60488g, bVar)) {
                this.f60488g = bVar;
                this.f60482a.onSubscribe(this);
            }
        }
    }

    public b(k<T> kVar, o<? super T, ? extends i<? extends R>> oVar, ErrorMode errorMode, int i9) {
        this.f60478a = kVar;
        this.f60479b = oVar;
        this.f60480c = errorMode;
        this.f60481d = i9;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(r<? super R> rVar) {
        if (g.b(this.f60478a, this.f60479b, rVar)) {
            return;
        }
        this.f60478a.subscribe(new a(rVar, this.f60479b, this.f60481d, this.f60480c));
    }
}
