package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class i1<TLeft, TRight, TLeftEnd, TRightEnd, R> extends io.reactivex.internal.operators.observable.a<TLeft, R> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.p<? extends TRight> f51801b;

    /* renamed from: c  reason: collision with root package name */
    final vh.o<? super TLeft, ? extends io.reactivex.p<TLeftEnd>> f51802c;

    /* renamed from: d  reason: collision with root package name */
    final vh.o<? super TRight, ? extends io.reactivex.p<TRightEnd>> f51803d;

    /* renamed from: e  reason: collision with root package name */
    final vh.c<? super TLeft, ? super io.reactivex.k<TRight>, ? extends R> f51804e;

    /* loaded from: classes7.dex */
    static final class a<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AtomicInteger implements th.b, b {

        /* renamed from: n  reason: collision with root package name */
        static final Integer f51805n = 1;

        /* renamed from: o  reason: collision with root package name */
        static final Integer f51806o = 2;

        /* renamed from: p  reason: collision with root package name */
        static final Integer f51807p = 3;

        /* renamed from: q  reason: collision with root package name */
        static final Integer f51808q = 4;
        private static final long serialVersionUID = -6071216598687999801L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super R> f51809a;

        /* renamed from: g  reason: collision with root package name */
        final vh.o<? super TLeft, ? extends io.reactivex.p<TLeftEnd>> f51815g;

        /* renamed from: h  reason: collision with root package name */
        final vh.o<? super TRight, ? extends io.reactivex.p<TRightEnd>> f51816h;

        /* renamed from: i  reason: collision with root package name */
        final vh.c<? super TLeft, ? super io.reactivex.k<TRight>, ? extends R> f51817i;

        /* renamed from: k  reason: collision with root package name */
        int f51819k;

        /* renamed from: l  reason: collision with root package name */
        int f51820l;

        /* renamed from: m  reason: collision with root package name */
        volatile boolean f51821m;

        /* renamed from: c  reason: collision with root package name */
        final th.a f51811c = new th.a();

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.internal.queue.b<Object> f51810b = new io.reactivex.internal.queue.b<>(io.reactivex.k.bufferSize());

        /* renamed from: d  reason: collision with root package name */
        final Map<Integer, ei.d<TRight>> f51812d = new LinkedHashMap();

        /* renamed from: e  reason: collision with root package name */
        final Map<Integer, TRight> f51813e = new LinkedHashMap();

        /* renamed from: f  reason: collision with root package name */
        final AtomicReference<Throwable> f51814f = new AtomicReference<>();

        /* renamed from: j  reason: collision with root package name */
        final AtomicInteger f51818j = new AtomicInteger(2);

        a(io.reactivex.r<? super R> rVar, vh.o<? super TLeft, ? extends io.reactivex.p<TLeftEnd>> oVar, vh.o<? super TRight, ? extends io.reactivex.p<TRightEnd>> oVar2, vh.c<? super TLeft, ? super io.reactivex.k<TRight>, ? extends R> cVar) {
            this.f51809a = rVar;
            this.f51815g = oVar;
            this.f51816h = oVar2;
            this.f51817i = cVar;
        }

        @Override // io.reactivex.internal.operators.observable.i1.b
        public void a(boolean z10, Object obj) {
            synchronized (this) {
                this.f51810b.l(z10 ? f51805n : f51806o, obj);
            }
            g();
        }

        @Override // io.reactivex.internal.operators.observable.i1.b
        public void b(Throwable th2) {
            if (io.reactivex.internal.util.f.a(this.f51814f, th2)) {
                this.f51818j.decrementAndGet();
                g();
                return;
            }
            ci.a.s(th2);
        }

        @Override // io.reactivex.internal.operators.observable.i1.b
        public void c(boolean z10, c cVar) {
            synchronized (this) {
                this.f51810b.l(z10 ? f51807p : f51808q, cVar);
            }
            g();
        }

        @Override // io.reactivex.internal.operators.observable.i1.b
        public void d(Throwable th2) {
            if (io.reactivex.internal.util.f.a(this.f51814f, th2)) {
                g();
            } else {
                ci.a.s(th2);
            }
        }

        @Override // th.b
        public void dispose() {
            if (this.f51821m) {
                return;
            }
            this.f51821m = true;
            f();
            if (getAndIncrement() == 0) {
                this.f51810b.clear();
            }
        }

        @Override // io.reactivex.internal.operators.observable.i1.b
        public void e(d dVar) {
            this.f51811c.c(dVar);
            this.f51818j.decrementAndGet();
            g();
        }

        void f() {
            this.f51811c.dispose();
        }

        /* JADX WARN: Multi-variable type inference failed */
        void g() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.internal.queue.b<?> bVar = this.f51810b;
            io.reactivex.r<? super R> rVar = this.f51809a;
            int i9 = 1;
            while (!this.f51821m) {
                if (this.f51814f.get() != null) {
                    bVar.clear();
                    f();
                    h(rVar);
                    return;
                }
                boolean z10 = this.f51818j.get() == 0;
                Integer num = (Integer) bVar.poll();
                boolean z11 = num == null;
                if (z10 && z11) {
                    for (ei.d<TRight> dVar : this.f51812d.values()) {
                        dVar.onComplete();
                    }
                    this.f51812d.clear();
                    this.f51813e.clear();
                    this.f51811c.dispose();
                    rVar.onComplete();
                    return;
                } else if (z11) {
                    i9 = addAndGet(-i9);
                    if (i9 == 0) {
                        return;
                    }
                } else {
                    Object poll = bVar.poll();
                    if (num == f51805n) {
                        ei.d<TRight> d10 = ei.d.d();
                        int i10 = this.f51819k;
                        this.f51819k = i10 + 1;
                        this.f51812d.put(Integer.valueOf(i10), d10);
                        try {
                            io.reactivex.p pVar = (io.reactivex.p) xh.b.e(this.f51815g.apply(poll), "The leftEnd returned a null ObservableSource");
                            c cVar = new c(this, true, i10);
                            this.f51811c.b(cVar);
                            pVar.subscribe(cVar);
                            if (this.f51814f.get() != null) {
                                bVar.clear();
                                f();
                                h(rVar);
                                return;
                            }
                            try {
                                rVar.onNext((Object) xh.b.e(this.f51817i.apply(poll, d10), "The resultSelector returned a null value"));
                                for (TRight tright : this.f51813e.values()) {
                                    d10.onNext(tright);
                                }
                            } catch (Throwable th2) {
                                i(th2, rVar, bVar);
                                return;
                            }
                        } catch (Throwable th3) {
                            i(th3, rVar, bVar);
                            return;
                        }
                    } else if (num == f51806o) {
                        int i11 = this.f51820l;
                        this.f51820l = i11 + 1;
                        this.f51813e.put(Integer.valueOf(i11), poll);
                        try {
                            io.reactivex.p pVar2 = (io.reactivex.p) xh.b.e(this.f51816h.apply(poll), "The rightEnd returned a null ObservableSource");
                            c cVar2 = new c(this, false, i11);
                            this.f51811c.b(cVar2);
                            pVar2.subscribe(cVar2);
                            if (this.f51814f.get() != null) {
                                bVar.clear();
                                f();
                                h(rVar);
                                return;
                            }
                            for (ei.d<TRight> dVar2 : this.f51812d.values()) {
                                dVar2.onNext(poll);
                            }
                        } catch (Throwable th4) {
                            i(th4, rVar, bVar);
                            return;
                        }
                    } else if (num == f51807p) {
                        c cVar3 = (c) poll;
                        ei.d<TRight> remove = this.f51812d.remove(Integer.valueOf(cVar3.f51824c));
                        this.f51811c.a(cVar3);
                        if (remove != null) {
                            remove.onComplete();
                        }
                    } else if (num == f51808q) {
                        c cVar4 = (c) poll;
                        this.f51813e.remove(Integer.valueOf(cVar4.f51824c));
                        this.f51811c.a(cVar4);
                    }
                }
            }
            bVar.clear();
        }

        void h(io.reactivex.r<?> rVar) {
            Throwable b10 = io.reactivex.internal.util.f.b(this.f51814f);
            for (ei.d<TRight> dVar : this.f51812d.values()) {
                dVar.onError(b10);
            }
            this.f51812d.clear();
            this.f51813e.clear();
            rVar.onError(b10);
        }

        void i(Throwable th2, io.reactivex.r<?> rVar, io.reactivex.internal.queue.b<?> bVar) {
            io.reactivex.exceptions.a.b(th2);
            io.reactivex.internal.util.f.a(this.f51814f, th2);
            bVar.clear();
            f();
            h(rVar);
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51821m;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public interface b {
        void a(boolean z10, Object obj);

        void b(Throwable th2);

        void c(boolean z10, c cVar);

        void d(Throwable th2);

        void e(d dVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class c extends AtomicReference<th.b> implements io.reactivex.r<Object>, th.b {
        private static final long serialVersionUID = 1883890389173668373L;

        /* renamed from: a  reason: collision with root package name */
        final b f51822a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f51823b;

        /* renamed from: c  reason: collision with root package name */
        final int f51824c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(b bVar, boolean z10, int i9) {
            this.f51822a = bVar;
            this.f51823b = z10;
            this.f51824c = i9;
        }

        @Override // th.b
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // th.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f51822a.c(this.f51823b, this);
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f51822a.d(th2);
        }

        @Override // io.reactivex.r
        public void onNext(Object obj) {
            if (DisposableHelper.dispose(this)) {
                this.f51822a.c(this.f51823b, this);
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }
    }

    /* loaded from: classes7.dex */
    static final class d extends AtomicReference<th.b> implements io.reactivex.r<Object>, th.b {
        private static final long serialVersionUID = 1883890389173668373L;

        /* renamed from: a  reason: collision with root package name */
        final b f51825a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f51826b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public d(b bVar, boolean z10) {
            this.f51825a = bVar;
            this.f51826b = z10;
        }

        @Override // th.b
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // th.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f51825a.e(this);
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f51825a.b(th2);
        }

        @Override // io.reactivex.r
        public void onNext(Object obj) {
            this.f51825a.a(this.f51826b, obj);
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }
    }

    public i1(io.reactivex.p<TLeft> pVar, io.reactivex.p<? extends TRight> pVar2, vh.o<? super TLeft, ? extends io.reactivex.p<TLeftEnd>> oVar, vh.o<? super TRight, ? extends io.reactivex.p<TRightEnd>> oVar2, vh.c<? super TLeft, ? super io.reactivex.k<TRight>, ? extends R> cVar) {
        super(pVar);
        this.f51801b = pVar2;
        this.f51802c = oVar;
        this.f51803d = oVar2;
        this.f51804e = cVar;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super R> rVar) {
        a aVar = new a(rVar, this.f51802c, this.f51803d, this.f51804e);
        rVar.onSubscribe(aVar);
        d dVar = new d(aVar, true);
        aVar.f51811c.b(dVar);
        d dVar2 = new d(aVar, false);
        aVar.f51811c.b(dVar2);
        this.f51403a.subscribe(dVar);
        this.f51801b.subscribe(dVar2);
    }
}
