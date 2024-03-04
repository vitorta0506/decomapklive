package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes7.dex */
public final class d4<T> extends io.reactivex.internal.operators.observable.a<T, io.reactivex.k<T>> {

    /* renamed from: b  reason: collision with root package name */
    final long f51543b;

    /* renamed from: c  reason: collision with root package name */
    final long f51544c;

    /* renamed from: d  reason: collision with root package name */
    final int f51545d;

    /* loaded from: classes7.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.r<T>, th.b, Runnable {
        private static final long serialVersionUID = -7481782523886138128L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super io.reactivex.k<T>> f51546a;

        /* renamed from: b  reason: collision with root package name */
        final long f51547b;

        /* renamed from: c  reason: collision with root package name */
        final int f51548c;

        /* renamed from: d  reason: collision with root package name */
        long f51549d;

        /* renamed from: e  reason: collision with root package name */
        th.b f51550e;

        /* renamed from: f  reason: collision with root package name */
        ei.d<T> f51551f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f51552g;

        a(io.reactivex.r<? super io.reactivex.k<T>> rVar, long j10, int i9) {
            this.f51546a = rVar;
            this.f51547b = j10;
            this.f51548c = i9;
        }

        @Override // th.b
        public void dispose() {
            this.f51552g = true;
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51552g;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            ei.d<T> dVar = this.f51551f;
            if (dVar != null) {
                this.f51551f = null;
                dVar.onComplete();
            }
            this.f51546a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            ei.d<T> dVar = this.f51551f;
            if (dVar != null) {
                this.f51551f = null;
                dVar.onError(th2);
            }
            this.f51546a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            ei.d<T> dVar = this.f51551f;
            if (dVar == null && !this.f51552g) {
                dVar = ei.d.f(this.f51548c, this);
                this.f51551f = dVar;
                this.f51546a.onNext(dVar);
            }
            if (dVar != null) {
                dVar.onNext(t10);
                long j10 = this.f51549d + 1;
                this.f51549d = j10;
                if (j10 >= this.f51547b) {
                    this.f51549d = 0L;
                    this.f51551f = null;
                    dVar.onComplete();
                    if (this.f51552g) {
                        this.f51550e.dispose();
                    }
                }
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f51550e, bVar)) {
                this.f51550e = bVar;
                this.f51546a.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f51552g) {
                this.f51550e.dispose();
            }
        }
    }

    /* loaded from: classes7.dex */
    static final class b<T> extends AtomicBoolean implements io.reactivex.r<T>, th.b, Runnable {
        private static final long serialVersionUID = 3366976432059579510L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super io.reactivex.k<T>> f51553a;

        /* renamed from: b  reason: collision with root package name */
        final long f51554b;

        /* renamed from: c  reason: collision with root package name */
        final long f51555c;

        /* renamed from: d  reason: collision with root package name */
        final int f51556d;

        /* renamed from: f  reason: collision with root package name */
        long f51558f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f51559g;

        /* renamed from: h  reason: collision with root package name */
        long f51560h;

        /* renamed from: i  reason: collision with root package name */
        th.b f51561i;

        /* renamed from: j  reason: collision with root package name */
        final AtomicInteger f51562j = new AtomicInteger();

        /* renamed from: e  reason: collision with root package name */
        final ArrayDeque<ei.d<T>> f51557e = new ArrayDeque<>();

        b(io.reactivex.r<? super io.reactivex.k<T>> rVar, long j10, long j11, int i9) {
            this.f51553a = rVar;
            this.f51554b = j10;
            this.f51555c = j11;
            this.f51556d = i9;
        }

        @Override // th.b
        public void dispose() {
            this.f51559g = true;
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51559g;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            ArrayDeque<ei.d<T>> arrayDeque = this.f51557e;
            while (!arrayDeque.isEmpty()) {
                arrayDeque.poll().onComplete();
            }
            this.f51553a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            ArrayDeque<ei.d<T>> arrayDeque = this.f51557e;
            while (!arrayDeque.isEmpty()) {
                arrayDeque.poll().onError(th2);
            }
            this.f51553a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            ArrayDeque<ei.d<T>> arrayDeque = this.f51557e;
            long j10 = this.f51558f;
            long j11 = this.f51555c;
            if (j10 % j11 == 0 && !this.f51559g) {
                this.f51562j.getAndIncrement();
                ei.d<T> f10 = ei.d.f(this.f51556d, this);
                arrayDeque.offer(f10);
                this.f51553a.onNext(f10);
            }
            long j12 = this.f51560h + 1;
            Iterator<ei.d<T>> it = arrayDeque.iterator();
            while (it.hasNext()) {
                it.next().onNext(t10);
            }
            if (j12 >= this.f51554b) {
                arrayDeque.poll().onComplete();
                if (arrayDeque.isEmpty() && this.f51559g) {
                    this.f51561i.dispose();
                    return;
                }
                this.f51560h = j12 - j11;
            } else {
                this.f51560h = j12;
            }
            this.f51558f = j10 + 1;
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f51561i, bVar)) {
                this.f51561i = bVar;
                this.f51553a.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f51562j.decrementAndGet() == 0 && this.f51559g) {
                this.f51561i.dispose();
            }
        }
    }

    public d4(io.reactivex.p<T> pVar, long j10, long j11, int i9) {
        super(pVar);
        this.f51543b = j10;
        this.f51544c = j11;
        this.f51545d = i9;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super io.reactivex.k<T>> rVar) {
        if (this.f51543b == this.f51544c) {
            this.f51403a.subscribe(new a(rVar, this.f51543b, this.f51545d));
        } else {
            this.f51403a.subscribe(new b(rVar, this.f51543b, this.f51544c, this.f51545d));
        }
    }
}
