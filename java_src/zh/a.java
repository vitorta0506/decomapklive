package zh;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.k;
import io.reactivex.r;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import vh.o;
/* loaded from: classes7.dex */
public final class a<T> extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final k<T> f60462a;

    /* renamed from: b  reason: collision with root package name */
    final o<? super T, ? extends io.reactivex.c> f60463b;

    /* renamed from: c  reason: collision with root package name */
    final ErrorMode f60464c;

    /* renamed from: d  reason: collision with root package name */
    final int f60465d;

    /* renamed from: zh.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    static final class C0704a<T> extends AtomicInteger implements r<T>, th.b {
        private static final long serialVersionUID = 3610901111000061034L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.b f60466a;

        /* renamed from: b  reason: collision with root package name */
        final o<? super T, ? extends io.reactivex.c> f60467b;

        /* renamed from: c  reason: collision with root package name */
        final ErrorMode f60468c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f60469d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final C0705a f60470e = new C0705a(this);

        /* renamed from: f  reason: collision with root package name */
        final int f60471f;

        /* renamed from: g  reason: collision with root package name */
        yh.g<T> f60472g;

        /* renamed from: h  reason: collision with root package name */
        th.b f60473h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f60474i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f60475j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f60476k;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: zh.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        public static final class C0705a extends AtomicReference<th.b> implements io.reactivex.b {
            private static final long serialVersionUID = 5638352172918776687L;

            /* renamed from: a  reason: collision with root package name */
            final C0704a<?> f60477a;

            C0705a(C0704a<?> c0704a) {
                this.f60477a = c0704a;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.b
            public void onComplete() {
                this.f60477a.b();
            }

            @Override // io.reactivex.b
            public void onError(Throwable th2) {
                this.f60477a.c(th2);
            }

            @Override // io.reactivex.b
            public void onSubscribe(th.b bVar) {
                DisposableHelper.replace(this, bVar);
            }
        }

        C0704a(io.reactivex.b bVar, o<? super T, ? extends io.reactivex.c> oVar, ErrorMode errorMode, int i9) {
            this.f60466a = bVar;
            this.f60467b = oVar;
            this.f60468c = errorMode;
            this.f60471f = i9;
        }

        void a() {
            boolean z10;
            if (getAndIncrement() != 0) {
                return;
            }
            AtomicThrowable atomicThrowable = this.f60469d;
            ErrorMode errorMode = this.f60468c;
            while (!this.f60476k) {
                if (!this.f60474i) {
                    if (errorMode == ErrorMode.BOUNDARY && atomicThrowable.get() != null) {
                        this.f60476k = true;
                        this.f60472g.clear();
                        this.f60466a.onError(atomicThrowable.terminate());
                        return;
                    }
                    boolean z11 = this.f60475j;
                    io.reactivex.c cVar = null;
                    try {
                        T poll = this.f60472g.poll();
                        if (poll != null) {
                            cVar = (io.reactivex.c) xh.b.e(this.f60467b.apply(poll), "The mapper returned a null CompletableSource");
                            z10 = false;
                        } else {
                            z10 = true;
                        }
                        if (z11 && z10) {
                            this.f60476k = true;
                            Throwable terminate = atomicThrowable.terminate();
                            if (terminate != null) {
                                this.f60466a.onError(terminate);
                                return;
                            } else {
                                this.f60466a.onComplete();
                                return;
                            }
                        } else if (!z10) {
                            this.f60474i = true;
                            cVar.a(this.f60470e);
                        }
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        this.f60476k = true;
                        this.f60472g.clear();
                        this.f60473h.dispose();
                        atomicThrowable.addThrowable(th2);
                        this.f60466a.onError(atomicThrowable.terminate());
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
            this.f60472g.clear();
        }

        void b() {
            this.f60474i = false;
            a();
        }

        void c(Throwable th2) {
            if (this.f60469d.addThrowable(th2)) {
                if (this.f60468c == ErrorMode.IMMEDIATE) {
                    this.f60476k = true;
                    this.f60473h.dispose();
                    Throwable terminate = this.f60469d.terminate();
                    if (terminate != io.reactivex.internal.util.f.f52757a) {
                        this.f60466a.onError(terminate);
                    }
                    if (getAndIncrement() == 0) {
                        this.f60472g.clear();
                        return;
                    }
                    return;
                }
                this.f60474i = false;
                a();
                return;
            }
            ci.a.s(th2);
        }

        @Override // th.b
        public void dispose() {
            this.f60476k = true;
            this.f60473h.dispose();
            this.f60470e.a();
            if (getAndIncrement() == 0) {
                this.f60472g.clear();
            }
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f60476k;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f60475j = true;
            a();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f60469d.addThrowable(th2)) {
                if (this.f60468c == ErrorMode.IMMEDIATE) {
                    this.f60476k = true;
                    this.f60470e.a();
                    Throwable terminate = this.f60469d.terminate();
                    if (terminate != io.reactivex.internal.util.f.f52757a) {
                        this.f60466a.onError(terminate);
                    }
                    if (getAndIncrement() == 0) {
                        this.f60472g.clear();
                        return;
                    }
                    return;
                }
                this.f60475j = true;
                a();
                return;
            }
            ci.a.s(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (t10 != null) {
                this.f60472g.offer(t10);
            }
            a();
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f60473h, bVar)) {
                this.f60473h = bVar;
                if (bVar instanceof yh.b) {
                    yh.b bVar2 = (yh.b) bVar;
                    int requestFusion = bVar2.requestFusion(3);
                    if (requestFusion == 1) {
                        this.f60472g = bVar2;
                        this.f60475j = true;
                        this.f60466a.onSubscribe(this);
                        a();
                        return;
                    } else if (requestFusion == 2) {
                        this.f60472g = bVar2;
                        this.f60466a.onSubscribe(this);
                        return;
                    }
                }
                this.f60472g = new io.reactivex.internal.queue.b(this.f60471f);
                this.f60466a.onSubscribe(this);
            }
        }
    }

    public a(k<T> kVar, o<? super T, ? extends io.reactivex.c> oVar, ErrorMode errorMode, int i9) {
        this.f60462a = kVar;
        this.f60463b = oVar;
        this.f60464c = errorMode;
        this.f60465d = i9;
    }

    @Override // io.reactivex.a
    protected void c(io.reactivex.b bVar) {
        if (g.a(this.f60462a, this.f60463b, bVar)) {
            return;
        }
        this.f60462a.subscribe(new C0704a(bVar, this.f60463b, this.f60464c, this.f60465d));
    }
}
