package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.NotificationLite;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class f4<T, B, V> extends io.reactivex.internal.operators.observable.a<T, io.reactivex.k<T>> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.p<B> f51647b;

    /* renamed from: c  reason: collision with root package name */
    final vh.o<? super B, ? extends io.reactivex.p<V>> f51648c;

    /* renamed from: d  reason: collision with root package name */
    final int f51649d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class a<T, V> extends io.reactivex.observers.b<V> {

        /* renamed from: a  reason: collision with root package name */
        final c<T, ?, V> f51650a;

        /* renamed from: b  reason: collision with root package name */
        final ei.d<T> f51651b;

        /* renamed from: c  reason: collision with root package name */
        boolean f51652c;

        a(c<T, ?, V> cVar, ei.d<T> dVar) {
            this.f51650a = cVar;
            this.f51651b = dVar;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f51652c) {
                return;
            }
            this.f51652c = true;
            this.f51650a.g(this);
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f51652c) {
                ci.a.s(th2);
                return;
            }
            this.f51652c = true;
            this.f51650a.j(th2);
        }

        @Override // io.reactivex.r
        public void onNext(V v10) {
            dispose();
            onComplete();
        }
    }

    /* loaded from: classes7.dex */
    static final class b<T, B> extends io.reactivex.observers.b<B> {

        /* renamed from: a  reason: collision with root package name */
        final c<T, B, ?> f51653a;

        b(c<T, B, ?> cVar) {
            this.f51653a = cVar;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f51653a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f51653a.j(th2);
        }

        @Override // io.reactivex.r
        public void onNext(B b10) {
            this.f51653a.k(b10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class c<T, B, V> extends io.reactivex.internal.observers.j<T, Object, io.reactivex.k<T>> implements th.b {

        /* renamed from: g  reason: collision with root package name */
        final io.reactivex.p<B> f51654g;

        /* renamed from: h  reason: collision with root package name */
        final vh.o<? super B, ? extends io.reactivex.p<V>> f51655h;

        /* renamed from: i  reason: collision with root package name */
        final int f51656i;

        /* renamed from: j  reason: collision with root package name */
        final th.a f51657j;

        /* renamed from: k  reason: collision with root package name */
        th.b f51658k;

        /* renamed from: l  reason: collision with root package name */
        final AtomicReference<th.b> f51659l;

        /* renamed from: m  reason: collision with root package name */
        final List<ei.d<T>> f51660m;

        /* renamed from: n  reason: collision with root package name */
        final AtomicLong f51661n;

        /* renamed from: o  reason: collision with root package name */
        final AtomicBoolean f51662o;

        c(io.reactivex.r<? super io.reactivex.k<T>> rVar, io.reactivex.p<B> pVar, vh.o<? super B, ? extends io.reactivex.p<V>> oVar, int i9) {
            super(rVar, new io.reactivex.internal.queue.a());
            this.f51659l = new AtomicReference<>();
            AtomicLong atomicLong = new AtomicLong();
            this.f51661n = atomicLong;
            this.f51662o = new AtomicBoolean();
            this.f51654g = pVar;
            this.f51655h = oVar;
            this.f51656i = i9;
            this.f51657j = new th.a();
            this.f51660m = new ArrayList();
            atomicLong.lazySet(1L);
        }

        @Override // th.b
        public void dispose() {
            if (this.f51662o.compareAndSet(false, true)) {
                DisposableHelper.dispose(this.f51659l);
                if (this.f51661n.decrementAndGet() == 0) {
                    this.f51658k.dispose();
                }
            }
        }

        void g(a<T, V> aVar) {
            this.f51657j.c(aVar);
            this.f51333c.offer(new d(aVar.f51651b, null));
            if (b()) {
                i();
            }
        }

        void h() {
            this.f51657j.dispose();
            DisposableHelper.dispose(this.f51659l);
        }

        void i() {
            io.reactivex.internal.queue.a aVar = (io.reactivex.internal.queue.a) this.f51333c;
            io.reactivex.r<? super V> rVar = this.f51332b;
            List<ei.d<T>> list = this.f51660m;
            int i9 = 1;
            while (true) {
                boolean z10 = this.f51335e;
                Object poll = aVar.poll();
                boolean z11 = poll == null;
                if (z10 && z11) {
                    h();
                    Throwable th2 = this.f51336f;
                    if (th2 != null) {
                        for (ei.d<T> dVar : list) {
                            dVar.onError(th2);
                        }
                    } else {
                        for (ei.d<T> dVar2 : list) {
                            dVar2.onComplete();
                        }
                    }
                    list.clear();
                    return;
                } else if (z11) {
                    i9 = w(-i9);
                    if (i9 == 0) {
                        return;
                    }
                } else if (poll instanceof d) {
                    d dVar3 = (d) poll;
                    ei.d<T> dVar4 = dVar3.f51663a;
                    if (dVar4 != null) {
                        if (list.remove(dVar4)) {
                            dVar3.f51663a.onComplete();
                            if (this.f51661n.decrementAndGet() == 0) {
                                h();
                                return;
                            }
                        } else {
                            continue;
                        }
                    } else if (!this.f51662o.get()) {
                        ei.d<T> e10 = ei.d.e(this.f51656i);
                        list.add(e10);
                        rVar.onNext(e10);
                        try {
                            io.reactivex.p pVar = (io.reactivex.p) xh.b.e(this.f51655h.apply((B) dVar3.f51664b), "The ObservableSource supplied is null");
                            a aVar2 = new a(this, e10);
                            if (this.f51657j.b(aVar2)) {
                                this.f51661n.getAndIncrement();
                                pVar.subscribe(aVar2);
                            }
                        } catch (Throwable th3) {
                            io.reactivex.exceptions.a.b(th3);
                            this.f51662o.set(true);
                            rVar.onError(th3);
                        }
                    }
                } else {
                    for (ei.d<T> dVar5 : list) {
                        dVar5.onNext((T) NotificationLite.getValue(poll));
                    }
                }
            }
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51662o.get();
        }

        void j(Throwable th2) {
            this.f51658k.dispose();
            this.f51657j.dispose();
            onError(th2);
        }

        void k(B b10) {
            this.f51333c.offer(new d(null, b10));
            if (b()) {
                i();
            }
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f51335e) {
                return;
            }
            this.f51335e = true;
            if (b()) {
                i();
            }
            if (this.f51661n.decrementAndGet() == 0) {
                this.f51657j.dispose();
            }
            this.f51332b.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f51335e) {
                ci.a.s(th2);
                return;
            }
            this.f51336f = th2;
            this.f51335e = true;
            if (b()) {
                i();
            }
            if (this.f51661n.decrementAndGet() == 0) {
                this.f51657j.dispose();
            }
            this.f51332b.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (c()) {
                for (ei.d<T> dVar : this.f51660m) {
                    dVar.onNext(t10);
                }
                if (w(-1) == 0) {
                    return;
                }
            } else {
                this.f51333c.offer(NotificationLite.next(t10));
                if (!b()) {
                    return;
                }
            }
            i();
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f51658k, bVar)) {
                this.f51658k = bVar;
                this.f51332b.onSubscribe(this);
                if (this.f51662o.get()) {
                    return;
                }
                b bVar2 = new b(this);
                if (this.f51659l.compareAndSet(null, bVar2)) {
                    this.f51654g.subscribe(bVar2);
                }
            }
        }

        @Override // io.reactivex.internal.observers.j, io.reactivex.internal.util.h
        public void v(io.reactivex.r<? super io.reactivex.k<T>> rVar, Object obj) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class d<T, B> {

        /* renamed from: a  reason: collision with root package name */
        final ei.d<T> f51663a;

        /* renamed from: b  reason: collision with root package name */
        final B f51664b;

        d(ei.d<T> dVar, B b10) {
            this.f51663a = dVar;
            this.f51664b = b10;
        }
    }

    public f4(io.reactivex.p<T> pVar, io.reactivex.p<B> pVar2, vh.o<? super B, ? extends io.reactivex.p<V>> oVar, int i9) {
        super(pVar);
        this.f51647b = pVar2;
        this.f51648c = oVar;
        this.f51649d = i9;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super io.reactivex.k<T>> rVar) {
        this.f51403a.subscribe(new c(new io.reactivex.observers.d(rVar), this.f51647b, this.f51648c, this.f51649d));
    }
}
