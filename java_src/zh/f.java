package zh;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.k;
import io.reactivex.r;
import io.reactivex.u;
import io.reactivex.v;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import vh.o;
/* loaded from: classes7.dex */
public final class f<T, R> extends k<R> {

    /* renamed from: a  reason: collision with root package name */
    final k<T> f60536a;

    /* renamed from: b  reason: collision with root package name */
    final o<? super T, ? extends v<? extends R>> f60537b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f60538c;

    /* loaded from: classes7.dex */
    static final class a<T, R> extends AtomicInteger implements r<T>, th.b {

        /* renamed from: i  reason: collision with root package name */
        static final C0710a<Object> f60539i = new C0710a<>(null);
        private static final long serialVersionUID = -5402190102429853762L;

        /* renamed from: a  reason: collision with root package name */
        final r<? super R> f60540a;

        /* renamed from: b  reason: collision with root package name */
        final o<? super T, ? extends v<? extends R>> f60541b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f60542c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f60543d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final AtomicReference<C0710a<R>> f60544e = new AtomicReference<>();

        /* renamed from: f  reason: collision with root package name */
        th.b f60545f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f60546g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f60547h;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: zh.f$a$a  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        public static final class C0710a<R> extends AtomicReference<th.b> implements u<R> {
            private static final long serialVersionUID = 8042919737683345351L;

            /* renamed from: a  reason: collision with root package name */
            final a<?, R> f60548a;

            /* renamed from: b  reason: collision with root package name */
            volatile R f60549b;

            C0710a(a<?, R> aVar) {
                this.f60548a = aVar;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.u
            public void onError(Throwable th2) {
                this.f60548a.c(this, th2);
            }

            @Override // io.reactivex.u
            public void onSubscribe(th.b bVar) {
                DisposableHelper.setOnce(this, bVar);
            }

            @Override // io.reactivex.u
            public void onSuccess(R r10) {
                this.f60549b = r10;
                this.f60548a.b();
            }
        }

        a(r<? super R> rVar, o<? super T, ? extends v<? extends R>> oVar, boolean z10) {
            this.f60540a = rVar;
            this.f60541b = oVar;
            this.f60542c = z10;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void a() {
            C0710a<Object> c0710a = f60539i;
            C0710a<Object> c0710a2 = (C0710a) this.f60544e.getAndSet(c0710a);
            if (c0710a2 == null || c0710a2 == c0710a) {
                return;
            }
            c0710a2.a();
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            r<? super R> rVar = this.f60540a;
            AtomicThrowable atomicThrowable = this.f60543d;
            AtomicReference<C0710a<R>> atomicReference = this.f60544e;
            int i9 = 1;
            while (!this.f60547h) {
                if (atomicThrowable.get() != null && !this.f60542c) {
                    rVar.onError(atomicThrowable.terminate());
                    return;
                }
                boolean z10 = this.f60546g;
                C0710a<R> c0710a = atomicReference.get();
                boolean z11 = c0710a == null;
                if (z10 && z11) {
                    Throwable terminate = atomicThrowable.terminate();
                    if (terminate != null) {
                        rVar.onError(terminate);
                        return;
                    } else {
                        rVar.onComplete();
                        return;
                    }
                } else if (!z11 && c0710a.f60549b != null) {
                    atomicReference.compareAndSet(c0710a, null);
                    rVar.onNext((R) c0710a.f60549b);
                } else {
                    i9 = addAndGet(-i9);
                    if (i9 == 0) {
                        return;
                    }
                }
            }
        }

        void c(C0710a<R> c0710a, Throwable th2) {
            if (this.f60544e.compareAndSet(c0710a, null) && this.f60543d.addThrowable(th2)) {
                if (!this.f60542c) {
                    this.f60545f.dispose();
                    a();
                }
                b();
                return;
            }
            ci.a.s(th2);
        }

        @Override // th.b
        public void dispose() {
            this.f60547h = true;
            this.f60545f.dispose();
            a();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f60547h;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f60546g = true;
            b();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f60543d.addThrowable(th2)) {
                if (!this.f60542c) {
                    a();
                }
                this.f60546g = true;
                b();
                return;
            }
            ci.a.s(th2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.r
        public void onNext(T t10) {
            C0710a<R> c0710a;
            C0710a<R> c0710a2 = this.f60544e.get();
            if (c0710a2 != null) {
                c0710a2.a();
            }
            try {
                v vVar = (v) xh.b.e(this.f60541b.apply(t10), "The mapper returned a null SingleSource");
                C0710a<R> c0710a3 = new C0710a<>(this);
                do {
                    c0710a = this.f60544e.get();
                    if (c0710a == f60539i) {
                        return;
                    }
                } while (!this.f60544e.compareAndSet(c0710a, c0710a3));
                vVar.a(c0710a3);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f60545f.dispose();
                this.f60544e.getAndSet(f60539i);
                onError(th2);
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f60545f, bVar)) {
                this.f60545f = bVar;
                this.f60540a.onSubscribe(this);
            }
        }
    }

    public f(k<T> kVar, o<? super T, ? extends v<? extends R>> oVar, boolean z10) {
        this.f60536a = kVar;
        this.f60537b = oVar;
        this.f60538c = z10;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(r<? super R> rVar) {
        if (g.c(this.f60536a, this.f60537b, rVar)) {
            return;
        }
        this.f60536a.subscribe(new a(rVar, this.f60537b, this.f60538c));
    }
}
