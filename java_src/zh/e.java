package zh;

import io.reactivex.h;
import io.reactivex.i;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.k;
import io.reactivex.r;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import vh.o;
/* loaded from: classes7.dex */
public final class e<T, R> extends k<R> {

    /* renamed from: a  reason: collision with root package name */
    final k<T> f60522a;

    /* renamed from: b  reason: collision with root package name */
    final o<? super T, ? extends i<? extends R>> f60523b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f60524c;

    /* loaded from: classes7.dex */
    static final class a<T, R> extends AtomicInteger implements r<T>, th.b {

        /* renamed from: i  reason: collision with root package name */
        static final C0709a<Object> f60525i = new C0709a<>(null);
        private static final long serialVersionUID = -5402190102429853762L;

        /* renamed from: a  reason: collision with root package name */
        final r<? super R> f60526a;

        /* renamed from: b  reason: collision with root package name */
        final o<? super T, ? extends i<? extends R>> f60527b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f60528c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f60529d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final AtomicReference<C0709a<R>> f60530e = new AtomicReference<>();

        /* renamed from: f  reason: collision with root package name */
        th.b f60531f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f60532g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f60533h;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: zh.e$a$a  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        public static final class C0709a<R> extends AtomicReference<th.b> implements h<R> {
            private static final long serialVersionUID = 8042919737683345351L;

            /* renamed from: a  reason: collision with root package name */
            final a<?, R> f60534a;

            /* renamed from: b  reason: collision with root package name */
            volatile R f60535b;

            C0709a(a<?, R> aVar) {
                this.f60534a = aVar;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.h
            public void onComplete() {
                this.f60534a.c(this);
            }

            @Override // io.reactivex.h
            public void onError(Throwable th2) {
                this.f60534a.d(this, th2);
            }

            @Override // io.reactivex.h
            public void onSubscribe(th.b bVar) {
                DisposableHelper.setOnce(this, bVar);
            }

            @Override // io.reactivex.h
            public void onSuccess(R r10) {
                this.f60535b = r10;
                this.f60534a.b();
            }
        }

        a(r<? super R> rVar, o<? super T, ? extends i<? extends R>> oVar, boolean z10) {
            this.f60526a = rVar;
            this.f60527b = oVar;
            this.f60528c = z10;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void a() {
            C0709a<Object> c0709a = f60525i;
            C0709a<Object> c0709a2 = (C0709a) this.f60530e.getAndSet(c0709a);
            if (c0709a2 == null || c0709a2 == c0709a) {
                return;
            }
            c0709a2.a();
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            r<? super R> rVar = this.f60526a;
            AtomicThrowable atomicThrowable = this.f60529d;
            AtomicReference<C0709a<R>> atomicReference = this.f60530e;
            int i9 = 1;
            while (!this.f60533h) {
                if (atomicThrowable.get() != null && !this.f60528c) {
                    rVar.onError(atomicThrowable.terminate());
                    return;
                }
                boolean z10 = this.f60532g;
                C0709a<R> c0709a = atomicReference.get();
                boolean z11 = c0709a == null;
                if (z10 && z11) {
                    Throwable terminate = atomicThrowable.terminate();
                    if (terminate != null) {
                        rVar.onError(terminate);
                        return;
                    } else {
                        rVar.onComplete();
                        return;
                    }
                } else if (!z11 && c0709a.f60535b != null) {
                    atomicReference.compareAndSet(c0709a, null);
                    rVar.onNext((R) c0709a.f60535b);
                } else {
                    i9 = addAndGet(-i9);
                    if (i9 == 0) {
                        return;
                    }
                }
            }
        }

        void c(C0709a<R> c0709a) {
            if (this.f60530e.compareAndSet(c0709a, null)) {
                b();
            }
        }

        void d(C0709a<R> c0709a, Throwable th2) {
            if (this.f60530e.compareAndSet(c0709a, null) && this.f60529d.addThrowable(th2)) {
                if (!this.f60528c) {
                    this.f60531f.dispose();
                    a();
                }
                b();
                return;
            }
            ci.a.s(th2);
        }

        @Override // th.b
        public void dispose() {
            this.f60533h = true;
            this.f60531f.dispose();
            a();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f60533h;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f60532g = true;
            b();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f60529d.addThrowable(th2)) {
                if (!this.f60528c) {
                    a();
                }
                this.f60532g = true;
                b();
                return;
            }
            ci.a.s(th2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.r
        public void onNext(T t10) {
            C0709a<R> c0709a;
            C0709a<R> c0709a2 = this.f60530e.get();
            if (c0709a2 != null) {
                c0709a2.a();
            }
            try {
                i iVar = (i) xh.b.e(this.f60527b.apply(t10), "The mapper returned a null MaybeSource");
                C0709a<R> c0709a3 = new C0709a<>(this);
                do {
                    c0709a = this.f60530e.get();
                    if (c0709a == f60525i) {
                        return;
                    }
                } while (!this.f60530e.compareAndSet(c0709a, c0709a3));
                iVar.a(c0709a3);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f60531f.dispose();
                this.f60530e.getAndSet(f60525i);
                onError(th2);
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f60531f, bVar)) {
                this.f60531f = bVar;
                this.f60526a.onSubscribe(this);
            }
        }
    }

    public e(k<T> kVar, o<? super T, ? extends i<? extends R>> oVar, boolean z10) {
        this.f60522a = kVar;
        this.f60523b = oVar;
        this.f60524c = z10;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(r<? super R> rVar) {
        if (g.b(this.f60522a, this.f60523b, rVar)) {
            return;
        }
        this.f60522a.subscribe(new a(rVar, this.f60523b, this.f60524c));
    }
}
