package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.s;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class d0<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f51514b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f51515c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.s f51516d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class a<T> extends AtomicReference<th.b> implements Runnable, th.b {
        private static final long serialVersionUID = 6812032969491025141L;

        /* renamed from: a  reason: collision with root package name */
        final T f51517a;

        /* renamed from: b  reason: collision with root package name */
        final long f51518b;

        /* renamed from: c  reason: collision with root package name */
        final b<T> f51519c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicBoolean f51520d = new AtomicBoolean();

        a(T t10, long j10, b<T> bVar) {
            this.f51517a = t10;
            this.f51518b = j10;
            this.f51519c = bVar;
        }

        public void b(th.b bVar) {
            DisposableHelper.replace(this, bVar);
        }

        @Override // th.b
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // th.b
        public boolean isDisposed() {
            return get() == DisposableHelper.DISPOSED;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f51520d.compareAndSet(false, true)) {
                this.f51519c.a(this.f51518b, this.f51517a, this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class b<T> implements io.reactivex.r<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f51521a;

        /* renamed from: b  reason: collision with root package name */
        final long f51522b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f51523c;

        /* renamed from: d  reason: collision with root package name */
        final s.c f51524d;

        /* renamed from: e  reason: collision with root package name */
        th.b f51525e;

        /* renamed from: f  reason: collision with root package name */
        th.b f51526f;

        /* renamed from: g  reason: collision with root package name */
        volatile long f51527g;

        /* renamed from: h  reason: collision with root package name */
        boolean f51528h;

        b(io.reactivex.r<? super T> rVar, long j10, TimeUnit timeUnit, s.c cVar) {
            this.f51521a = rVar;
            this.f51522b = j10;
            this.f51523c = timeUnit;
            this.f51524d = cVar;
        }

        void a(long j10, T t10, a<T> aVar) {
            if (j10 == this.f51527g) {
                this.f51521a.onNext(t10);
                aVar.dispose();
            }
        }

        @Override // th.b
        public void dispose() {
            this.f51525e.dispose();
            this.f51524d.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51524d.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f51528h) {
                return;
            }
            this.f51528h = true;
            th.b bVar = this.f51526f;
            if (bVar != null) {
                bVar.dispose();
            }
            a aVar = (a) bVar;
            if (aVar != null) {
                aVar.run();
            }
            this.f51521a.onComplete();
            this.f51524d.dispose();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f51528h) {
                ci.a.s(th2);
                return;
            }
            th.b bVar = this.f51526f;
            if (bVar != null) {
                bVar.dispose();
            }
            this.f51528h = true;
            this.f51521a.onError(th2);
            this.f51524d.dispose();
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f51528h) {
                return;
            }
            long j10 = this.f51527g + 1;
            this.f51527g = j10;
            th.b bVar = this.f51526f;
            if (bVar != null) {
                bVar.dispose();
            }
            a aVar = new a(t10, j10, this);
            this.f51526f = aVar;
            aVar.b(this.f51524d.d(aVar, this.f51522b, this.f51523c));
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f51525e, bVar)) {
                this.f51525e = bVar;
                this.f51521a.onSubscribe(this);
            }
        }
    }

    public d0(io.reactivex.p<T> pVar, long j10, TimeUnit timeUnit, io.reactivex.s sVar) {
        super(pVar);
        this.f51514b = j10;
        this.f51515c = timeUnit;
        this.f51516d = sVar;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super T> rVar) {
        this.f51403a.subscribe(new b(new io.reactivex.observers.d(rVar), this.f51514b, this.f51515c, this.f51516d.b()));
    }
}
