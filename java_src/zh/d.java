package zh;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.k;
import io.reactivex.r;
import java.util.concurrent.atomic.AtomicReference;
import vh.o;
/* loaded from: classes7.dex */
public final class d<T> extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final k<T> f60510a;

    /* renamed from: b  reason: collision with root package name */
    final o<? super T, ? extends io.reactivex.c> f60511b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f60512c;

    /* loaded from: classes7.dex */
    static final class a<T> implements r<T>, th.b {

        /* renamed from: h  reason: collision with root package name */
        static final C0708a f60513h = new C0708a(null);

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.b f60514a;

        /* renamed from: b  reason: collision with root package name */
        final o<? super T, ? extends io.reactivex.c> f60515b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f60516c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f60517d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final AtomicReference<C0708a> f60518e = new AtomicReference<>();

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f60519f;

        /* renamed from: g  reason: collision with root package name */
        th.b f60520g;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: zh.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        public static final class C0708a extends AtomicReference<th.b> implements io.reactivex.b {
            private static final long serialVersionUID = -8003404460084760287L;

            /* renamed from: a  reason: collision with root package name */
            final a<?> f60521a;

            C0708a(a<?> aVar) {
                this.f60521a = aVar;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.b
            public void onComplete() {
                this.f60521a.b(this);
            }

            @Override // io.reactivex.b
            public void onError(Throwable th2) {
                this.f60521a.c(this, th2);
            }

            @Override // io.reactivex.b
            public void onSubscribe(th.b bVar) {
                DisposableHelper.setOnce(this, bVar);
            }
        }

        a(io.reactivex.b bVar, o<? super T, ? extends io.reactivex.c> oVar, boolean z10) {
            this.f60514a = bVar;
            this.f60515b = oVar;
            this.f60516c = z10;
        }

        void a() {
            AtomicReference<C0708a> atomicReference = this.f60518e;
            C0708a c0708a = f60513h;
            C0708a andSet = atomicReference.getAndSet(c0708a);
            if (andSet == null || andSet == c0708a) {
                return;
            }
            andSet.a();
        }

        void b(C0708a c0708a) {
            if (this.f60518e.compareAndSet(c0708a, null) && this.f60519f) {
                Throwable terminate = this.f60517d.terminate();
                if (terminate == null) {
                    this.f60514a.onComplete();
                } else {
                    this.f60514a.onError(terminate);
                }
            }
        }

        void c(C0708a c0708a, Throwable th2) {
            if (this.f60518e.compareAndSet(c0708a, null) && this.f60517d.addThrowable(th2)) {
                if (this.f60516c) {
                    if (this.f60519f) {
                        this.f60514a.onError(this.f60517d.terminate());
                        return;
                    }
                    return;
                }
                dispose();
                Throwable terminate = this.f60517d.terminate();
                if (terminate != io.reactivex.internal.util.f.f52757a) {
                    this.f60514a.onError(terminate);
                    return;
                }
                return;
            }
            ci.a.s(th2);
        }

        @Override // th.b
        public void dispose() {
            this.f60520g.dispose();
            a();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f60518e.get() == f60513h;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f60519f = true;
            if (this.f60518e.get() == null) {
                Throwable terminate = this.f60517d.terminate();
                if (terminate == null) {
                    this.f60514a.onComplete();
                } else {
                    this.f60514a.onError(terminate);
                }
            }
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f60517d.addThrowable(th2)) {
                if (this.f60516c) {
                    onComplete();
                    return;
                }
                a();
                Throwable terminate = this.f60517d.terminate();
                if (terminate != io.reactivex.internal.util.f.f52757a) {
                    this.f60514a.onError(terminate);
                    return;
                }
                return;
            }
            ci.a.s(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            C0708a c0708a;
            try {
                io.reactivex.c cVar = (io.reactivex.c) xh.b.e(this.f60515b.apply(t10), "The mapper returned a null CompletableSource");
                C0708a c0708a2 = new C0708a(this);
                do {
                    c0708a = this.f60518e.get();
                    if (c0708a == f60513h) {
                        return;
                    }
                } while (!this.f60518e.compareAndSet(c0708a, c0708a2));
                if (c0708a != null) {
                    c0708a.a();
                }
                cVar.a(c0708a2);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f60520g.dispose();
                onError(th2);
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f60520g, bVar)) {
                this.f60520g = bVar;
                this.f60514a.onSubscribe(this);
            }
        }
    }

    public d(k<T> kVar, o<? super T, ? extends io.reactivex.c> oVar, boolean z10) {
        this.f60510a = kVar;
        this.f60511b = oVar;
        this.f60512c = z10;
    }

    @Override // io.reactivex.a
    protected void c(io.reactivex.b bVar) {
        if (g.a(this.f60510a, this.f60511b, bVar)) {
            return;
        }
        this.f60510a.subscribe(new a(bVar, this.f60511b, this.f60512c));
    }
}
