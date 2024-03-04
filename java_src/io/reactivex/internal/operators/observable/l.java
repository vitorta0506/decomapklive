package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes7.dex */
public final class l<T, U extends Collection<? super T>> extends io.reactivex.internal.operators.observable.a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final int f51919b;

    /* renamed from: c  reason: collision with root package name */
    final int f51920c;

    /* renamed from: d  reason: collision with root package name */
    final Callable<U> f51921d;

    /* loaded from: classes7.dex */
    static final class a<T, U extends Collection<? super T>> implements io.reactivex.r<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super U> f51922a;

        /* renamed from: b  reason: collision with root package name */
        final int f51923b;

        /* renamed from: c  reason: collision with root package name */
        final Callable<U> f51924c;

        /* renamed from: d  reason: collision with root package name */
        U f51925d;

        /* renamed from: e  reason: collision with root package name */
        int f51926e;

        /* renamed from: f  reason: collision with root package name */
        th.b f51927f;

        a(io.reactivex.r<? super U> rVar, int i9, Callable<U> callable) {
            this.f51922a = rVar;
            this.f51923b = i9;
            this.f51924c = callable;
        }

        boolean a() {
            try {
                this.f51925d = (U) xh.b.e(this.f51924c.call(), "Empty buffer supplied");
                return true;
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f51925d = null;
                th.b bVar = this.f51927f;
                if (bVar == null) {
                    EmptyDisposable.error(th2, this.f51922a);
                    return false;
                }
                bVar.dispose();
                this.f51922a.onError(th2);
                return false;
            }
        }

        @Override // th.b
        public void dispose() {
            this.f51927f.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51927f.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            U u10 = this.f51925d;
            if (u10 != null) {
                this.f51925d = null;
                if (!u10.isEmpty()) {
                    this.f51922a.onNext(u10);
                }
                this.f51922a.onComplete();
            }
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f51925d = null;
            this.f51922a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            U u10 = this.f51925d;
            if (u10 != null) {
                u10.add(t10);
                int i9 = this.f51926e + 1;
                this.f51926e = i9;
                if (i9 >= this.f51923b) {
                    this.f51922a.onNext(u10);
                    this.f51926e = 0;
                    a();
                }
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f51927f, bVar)) {
                this.f51927f = bVar;
                this.f51922a.onSubscribe(this);
            }
        }
    }

    /* loaded from: classes7.dex */
    static final class b<T, U extends Collection<? super T>> extends AtomicBoolean implements io.reactivex.r<T>, th.b {
        private static final long serialVersionUID = -8223395059921494546L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super U> f51928a;

        /* renamed from: b  reason: collision with root package name */
        final int f51929b;

        /* renamed from: c  reason: collision with root package name */
        final int f51930c;

        /* renamed from: d  reason: collision with root package name */
        final Callable<U> f51931d;

        /* renamed from: e  reason: collision with root package name */
        th.b f51932e;

        /* renamed from: f  reason: collision with root package name */
        final ArrayDeque<U> f51933f = new ArrayDeque<>();

        /* renamed from: g  reason: collision with root package name */
        long f51934g;

        b(io.reactivex.r<? super U> rVar, int i9, int i10, Callable<U> callable) {
            this.f51928a = rVar;
            this.f51929b = i9;
            this.f51930c = i10;
            this.f51931d = callable;
        }

        @Override // th.b
        public void dispose() {
            this.f51932e.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51932e.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            while (!this.f51933f.isEmpty()) {
                this.f51928a.onNext(this.f51933f.poll());
            }
            this.f51928a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f51933f.clear();
            this.f51928a.onError(th2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.r
        public void onNext(T t10) {
            long j10 = this.f51934g;
            this.f51934g = 1 + j10;
            if (j10 % this.f51930c == 0) {
                try {
                    this.f51933f.offer((Collection) xh.b.e(this.f51931d.call(), "The bufferSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources."));
                } catch (Throwable th2) {
                    this.f51933f.clear();
                    this.f51932e.dispose();
                    this.f51928a.onError(th2);
                    return;
                }
            }
            Iterator<U> it = this.f51933f.iterator();
            while (it.hasNext()) {
                U next = it.next();
                next.add(t10);
                if (this.f51929b <= next.size()) {
                    it.remove();
                    this.f51928a.onNext(next);
                }
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f51932e, bVar)) {
                this.f51932e = bVar;
                this.f51928a.onSubscribe(this);
            }
        }
    }

    public l(io.reactivex.p<T> pVar, int i9, int i10, Callable<U> callable) {
        super(pVar);
        this.f51919b = i9;
        this.f51920c = i10;
        this.f51921d = callable;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super U> rVar) {
        int i9 = this.f51920c;
        int i10 = this.f51919b;
        if (i9 == i10) {
            a aVar = new a(rVar, i10, this.f51921d);
            if (aVar.a()) {
                this.f51403a.subscribe(aVar);
                return;
            }
            return;
        }
        this.f51403a.subscribe(new b(rVar, this.f51919b, this.f51920c, this.f51921d));
    }
}
