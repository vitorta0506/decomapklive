package io.reactivex.internal.operators.observable;

import io.reactivex.internal.operators.observable.i1;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class p1<TLeft, TRight, TLeftEnd, TRightEnd, R> extends io.reactivex.internal.operators.observable.a<TLeft, R> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.p<? extends TRight> f52151b;

    /* renamed from: c  reason: collision with root package name */
    final vh.o<? super TLeft, ? extends io.reactivex.p<TLeftEnd>> f52152c;

    /* renamed from: d  reason: collision with root package name */
    final vh.o<? super TRight, ? extends io.reactivex.p<TRightEnd>> f52153d;

    /* renamed from: e  reason: collision with root package name */
    final vh.c<? super TLeft, ? super TRight, ? extends R> f52154e;

    /* loaded from: classes7.dex */
    static final class a<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AtomicInteger implements th.b, i1.b {

        /* renamed from: n  reason: collision with root package name */
        static final Integer f52155n = 1;

        /* renamed from: o  reason: collision with root package name */
        static final Integer f52156o = 2;

        /* renamed from: p  reason: collision with root package name */
        static final Integer f52157p = 3;

        /* renamed from: q  reason: collision with root package name */
        static final Integer f52158q = 4;
        private static final long serialVersionUID = -6071216598687999801L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super R> f52159a;

        /* renamed from: g  reason: collision with root package name */
        final vh.o<? super TLeft, ? extends io.reactivex.p<TLeftEnd>> f52165g;

        /* renamed from: h  reason: collision with root package name */
        final vh.o<? super TRight, ? extends io.reactivex.p<TRightEnd>> f52166h;

        /* renamed from: i  reason: collision with root package name */
        final vh.c<? super TLeft, ? super TRight, ? extends R> f52167i;

        /* renamed from: k  reason: collision with root package name */
        int f52169k;

        /* renamed from: l  reason: collision with root package name */
        int f52170l;

        /* renamed from: m  reason: collision with root package name */
        volatile boolean f52171m;

        /* renamed from: c  reason: collision with root package name */
        final th.a f52161c = new th.a();

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.internal.queue.b<Object> f52160b = new io.reactivex.internal.queue.b<>(io.reactivex.k.bufferSize());

        /* renamed from: d  reason: collision with root package name */
        final Map<Integer, TLeft> f52162d = new LinkedHashMap();

        /* renamed from: e  reason: collision with root package name */
        final Map<Integer, TRight> f52163e = new LinkedHashMap();

        /* renamed from: f  reason: collision with root package name */
        final AtomicReference<Throwable> f52164f = new AtomicReference<>();

        /* renamed from: j  reason: collision with root package name */
        final AtomicInteger f52168j = new AtomicInteger(2);

        a(io.reactivex.r<? super R> rVar, vh.o<? super TLeft, ? extends io.reactivex.p<TLeftEnd>> oVar, vh.o<? super TRight, ? extends io.reactivex.p<TRightEnd>> oVar2, vh.c<? super TLeft, ? super TRight, ? extends R> cVar) {
            this.f52159a = rVar;
            this.f52165g = oVar;
            this.f52166h = oVar2;
            this.f52167i = cVar;
        }

        @Override // io.reactivex.internal.operators.observable.i1.b
        public void a(boolean z10, Object obj) {
            synchronized (this) {
                this.f52160b.l(z10 ? f52155n : f52156o, obj);
            }
            g();
        }

        @Override // io.reactivex.internal.operators.observable.i1.b
        public void b(Throwable th2) {
            if (io.reactivex.internal.util.f.a(this.f52164f, th2)) {
                this.f52168j.decrementAndGet();
                g();
                return;
            }
            ci.a.s(th2);
        }

        @Override // io.reactivex.internal.operators.observable.i1.b
        public void c(boolean z10, i1.c cVar) {
            synchronized (this) {
                this.f52160b.l(z10 ? f52157p : f52158q, cVar);
            }
            g();
        }

        @Override // io.reactivex.internal.operators.observable.i1.b
        public void d(Throwable th2) {
            if (io.reactivex.internal.util.f.a(this.f52164f, th2)) {
                g();
            } else {
                ci.a.s(th2);
            }
        }

        @Override // th.b
        public void dispose() {
            if (this.f52171m) {
                return;
            }
            this.f52171m = true;
            f();
            if (getAndIncrement() == 0) {
                this.f52160b.clear();
            }
        }

        @Override // io.reactivex.internal.operators.observable.i1.b
        public void e(i1.d dVar) {
            this.f52161c.c(dVar);
            this.f52168j.decrementAndGet();
            g();
        }

        void f() {
            this.f52161c.dispose();
        }

        /* JADX WARN: Multi-variable type inference failed */
        void g() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.internal.queue.b<?> bVar = this.f52160b;
            io.reactivex.r<? super R> rVar = this.f52159a;
            int i9 = 1;
            while (!this.f52171m) {
                if (this.f52164f.get() != null) {
                    bVar.clear();
                    f();
                    h(rVar);
                    return;
                }
                boolean z10 = this.f52168j.get() == 0;
                Integer num = (Integer) bVar.poll();
                boolean z11 = num == null;
                if (z10 && z11) {
                    this.f52162d.clear();
                    this.f52163e.clear();
                    this.f52161c.dispose();
                    rVar.onComplete();
                    return;
                } else if (z11) {
                    i9 = addAndGet(-i9);
                    if (i9 == 0) {
                        return;
                    }
                } else {
                    Object poll = bVar.poll();
                    if (num == f52155n) {
                        int i10 = this.f52169k;
                        this.f52169k = i10 + 1;
                        this.f52162d.put(Integer.valueOf(i10), poll);
                        try {
                            io.reactivex.p pVar = (io.reactivex.p) xh.b.e(this.f52165g.apply(poll), "The leftEnd returned a null ObservableSource");
                            i1.c cVar = new i1.c(this, true, i10);
                            this.f52161c.b(cVar);
                            pVar.subscribe(cVar);
                            if (this.f52164f.get() != null) {
                                bVar.clear();
                                f();
                                h(rVar);
                                return;
                            }
                            for (TRight tright : this.f52163e.values()) {
                                try {
                                    rVar.onNext((Object) xh.b.e(this.f52167i.apply(poll, tright), "The resultSelector returned a null value"));
                                } catch (Throwable th2) {
                                    i(th2, rVar, bVar);
                                    return;
                                }
                            }
                            continue;
                        } catch (Throwable th3) {
                            i(th3, rVar, bVar);
                            return;
                        }
                    } else if (num == f52156o) {
                        int i11 = this.f52170l;
                        this.f52170l = i11 + 1;
                        this.f52163e.put(Integer.valueOf(i11), poll);
                        try {
                            io.reactivex.p pVar2 = (io.reactivex.p) xh.b.e(this.f52166h.apply(poll), "The rightEnd returned a null ObservableSource");
                            i1.c cVar2 = new i1.c(this, false, i11);
                            this.f52161c.b(cVar2);
                            pVar2.subscribe(cVar2);
                            if (this.f52164f.get() != null) {
                                bVar.clear();
                                f();
                                h(rVar);
                                return;
                            }
                            for (TLeft tleft : this.f52162d.values()) {
                                try {
                                    rVar.onNext((Object) xh.b.e(this.f52167i.apply(tleft, poll), "The resultSelector returned a null value"));
                                } catch (Throwable th4) {
                                    i(th4, rVar, bVar);
                                    return;
                                }
                            }
                            continue;
                        } catch (Throwable th5) {
                            i(th5, rVar, bVar);
                            return;
                        }
                    } else if (num == f52157p) {
                        i1.c cVar3 = (i1.c) poll;
                        this.f52162d.remove(Integer.valueOf(cVar3.f51824c));
                        this.f52161c.a(cVar3);
                    } else {
                        i1.c cVar4 = (i1.c) poll;
                        this.f52163e.remove(Integer.valueOf(cVar4.f51824c));
                        this.f52161c.a(cVar4);
                    }
                }
            }
            bVar.clear();
        }

        void h(io.reactivex.r<?> rVar) {
            Throwable b10 = io.reactivex.internal.util.f.b(this.f52164f);
            this.f52162d.clear();
            this.f52163e.clear();
            rVar.onError(b10);
        }

        void i(Throwable th2, io.reactivex.r<?> rVar, io.reactivex.internal.queue.b<?> bVar) {
            io.reactivex.exceptions.a.b(th2);
            io.reactivex.internal.util.f.a(this.f52164f, th2);
            bVar.clear();
            f();
            h(rVar);
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52171m;
        }
    }

    public p1(io.reactivex.p<TLeft> pVar, io.reactivex.p<? extends TRight> pVar2, vh.o<? super TLeft, ? extends io.reactivex.p<TLeftEnd>> oVar, vh.o<? super TRight, ? extends io.reactivex.p<TRightEnd>> oVar2, vh.c<? super TLeft, ? super TRight, ? extends R> cVar) {
        super(pVar);
        this.f52151b = pVar2;
        this.f52152c = oVar;
        this.f52153d = oVar2;
        this.f52154e = cVar;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super R> rVar) {
        a aVar = new a(rVar, this.f52152c, this.f52153d, this.f52154e);
        rVar.onSubscribe(aVar);
        i1.d dVar = new i1.d(aVar, true);
        aVar.f52161c.b(dVar);
        i1.d dVar2 = new i1.d(aVar, false);
        aVar.f52161c.b(dVar2);
        this.f51403a.subscribe(dVar);
        this.f52151b.subscribe(dVar2);
    }
}
