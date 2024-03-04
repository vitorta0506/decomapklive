package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.observers.InnerQueuedObserver;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ErrorMode;
import java.util.ArrayDeque;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes7.dex */
public final class v<T, R> extends io.reactivex.internal.operators.observable.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final vh.o<? super T, ? extends io.reactivex.p<? extends R>> f52419b;

    /* renamed from: c  reason: collision with root package name */
    final ErrorMode f52420c;

    /* renamed from: d  reason: collision with root package name */
    final int f52421d;

    /* renamed from: e  reason: collision with root package name */
    final int f52422e;

    /* loaded from: classes7.dex */
    static final class a<T, R> extends AtomicInteger implements io.reactivex.r<T>, th.b, io.reactivex.internal.observers.i<R> {
        private static final long serialVersionUID = 8080567949447303262L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super R> f52423a;

        /* renamed from: b  reason: collision with root package name */
        final vh.o<? super T, ? extends io.reactivex.p<? extends R>> f52424b;

        /* renamed from: c  reason: collision with root package name */
        final int f52425c;

        /* renamed from: d  reason: collision with root package name */
        final int f52426d;

        /* renamed from: e  reason: collision with root package name */
        final ErrorMode f52427e;

        /* renamed from: f  reason: collision with root package name */
        final AtomicThrowable f52428f = new AtomicThrowable();

        /* renamed from: g  reason: collision with root package name */
        final ArrayDeque<InnerQueuedObserver<R>> f52429g = new ArrayDeque<>();

        /* renamed from: h  reason: collision with root package name */
        yh.g<T> f52430h;

        /* renamed from: i  reason: collision with root package name */
        th.b f52431i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f52432j;

        /* renamed from: k  reason: collision with root package name */
        int f52433k;

        /* renamed from: l  reason: collision with root package name */
        volatile boolean f52434l;

        /* renamed from: m  reason: collision with root package name */
        InnerQueuedObserver<R> f52435m;

        /* renamed from: n  reason: collision with root package name */
        int f52436n;

        a(io.reactivex.r<? super R> rVar, vh.o<? super T, ? extends io.reactivex.p<? extends R>> oVar, int i9, int i10, ErrorMode errorMode) {
            this.f52423a = rVar;
            this.f52424b = oVar;
            this.f52425c = i9;
            this.f52426d = i10;
            this.f52427e = errorMode;
        }

        @Override // io.reactivex.internal.observers.i
        public void a() {
            R poll;
            boolean z10;
            if (getAndIncrement() != 0) {
                return;
            }
            yh.g<T> gVar = this.f52430h;
            ArrayDeque<InnerQueuedObserver<R>> arrayDeque = this.f52429g;
            io.reactivex.r<? super R> rVar = this.f52423a;
            ErrorMode errorMode = this.f52427e;
            int i9 = 1;
            while (true) {
                int i10 = this.f52436n;
                while (i10 != this.f52425c) {
                    if (this.f52434l) {
                        gVar.clear();
                        e();
                        return;
                    } else if (errorMode == ErrorMode.IMMEDIATE && this.f52428f.get() != null) {
                        gVar.clear();
                        e();
                        rVar.onError(this.f52428f.terminate());
                        return;
                    } else {
                        try {
                            T poll2 = gVar.poll();
                            if (poll2 == null) {
                                break;
                            }
                            io.reactivex.p pVar = (io.reactivex.p) xh.b.e(this.f52424b.apply(poll2), "The mapper returned a null ObservableSource");
                            InnerQueuedObserver<R> innerQueuedObserver = new InnerQueuedObserver<>(this, this.f52426d);
                            arrayDeque.offer(innerQueuedObserver);
                            pVar.subscribe(innerQueuedObserver);
                            i10++;
                        } catch (Throwable th2) {
                            io.reactivex.exceptions.a.b(th2);
                            this.f52431i.dispose();
                            gVar.clear();
                            e();
                            this.f52428f.addThrowable(th2);
                            rVar.onError(this.f52428f.terminate());
                            return;
                        }
                    }
                }
                this.f52436n = i10;
                if (this.f52434l) {
                    gVar.clear();
                    e();
                    return;
                } else if (errorMode == ErrorMode.IMMEDIATE && this.f52428f.get() != null) {
                    gVar.clear();
                    e();
                    rVar.onError(this.f52428f.terminate());
                    return;
                } else {
                    InnerQueuedObserver<R> innerQueuedObserver2 = this.f52435m;
                    if (innerQueuedObserver2 == null) {
                        if (errorMode == ErrorMode.BOUNDARY && this.f52428f.get() != null) {
                            gVar.clear();
                            e();
                            rVar.onError(this.f52428f.terminate());
                            return;
                        }
                        boolean z11 = this.f52432j;
                        InnerQueuedObserver<R> poll3 = arrayDeque.poll();
                        boolean z12 = poll3 == null;
                        if (z11 && z12) {
                            if (this.f52428f.get() != null) {
                                gVar.clear();
                                e();
                                rVar.onError(this.f52428f.terminate());
                                return;
                            }
                            rVar.onComplete();
                            return;
                        }
                        if (!z12) {
                            this.f52435m = poll3;
                        }
                        innerQueuedObserver2 = poll3;
                    }
                    if (innerQueuedObserver2 != null) {
                        yh.g<R> queue = innerQueuedObserver2.queue();
                        while (!this.f52434l) {
                            boolean isDone = innerQueuedObserver2.isDone();
                            if (errorMode == ErrorMode.IMMEDIATE && this.f52428f.get() != null) {
                                gVar.clear();
                                e();
                                rVar.onError(this.f52428f.terminate());
                                return;
                            }
                            try {
                                poll = queue.poll();
                                z10 = poll == null;
                            } catch (Throwable th3) {
                                io.reactivex.exceptions.a.b(th3);
                                this.f52428f.addThrowable(th3);
                                this.f52435m = null;
                                this.f52436n--;
                            }
                            if (isDone && z10) {
                                this.f52435m = null;
                                this.f52436n--;
                            } else if (!z10) {
                                rVar.onNext(poll);
                            }
                        }
                        gVar.clear();
                        e();
                        return;
                    }
                    i9 = addAndGet(-i9);
                    if (i9 == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.internal.observers.i
        public void b(InnerQueuedObserver<R> innerQueuedObserver, Throwable th2) {
            if (this.f52428f.addThrowable(th2)) {
                if (this.f52427e == ErrorMode.IMMEDIATE) {
                    this.f52431i.dispose();
                }
                innerQueuedObserver.setDone();
                a();
                return;
            }
            ci.a.s(th2);
        }

        @Override // io.reactivex.internal.observers.i
        public void c(InnerQueuedObserver<R> innerQueuedObserver) {
            innerQueuedObserver.setDone();
            a();
        }

        @Override // io.reactivex.internal.observers.i
        public void d(InnerQueuedObserver<R> innerQueuedObserver, R r10) {
            innerQueuedObserver.queue().offer(r10);
            a();
        }

        @Override // th.b
        public void dispose() {
            if (this.f52434l) {
                return;
            }
            this.f52434l = true;
            this.f52431i.dispose();
            f();
        }

        void e() {
            InnerQueuedObserver<R> innerQueuedObserver = this.f52435m;
            if (innerQueuedObserver != null) {
                innerQueuedObserver.dispose();
            }
            while (true) {
                InnerQueuedObserver<R> poll = this.f52429g.poll();
                if (poll == null) {
                    return;
                }
                poll.dispose();
            }
        }

        void f() {
            if (getAndIncrement() == 0) {
                do {
                    this.f52430h.clear();
                    e();
                } while (decrementAndGet() != 0);
            }
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52434l;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f52432j = true;
            a();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f52428f.addThrowable(th2)) {
                this.f52432j = true;
                a();
                return;
            }
            ci.a.s(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f52433k == 0) {
                this.f52430h.offer(t10);
            }
            a();
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f52431i, bVar)) {
                this.f52431i = bVar;
                if (bVar instanceof yh.b) {
                    yh.b bVar2 = (yh.b) bVar;
                    int requestFusion = bVar2.requestFusion(3);
                    if (requestFusion == 1) {
                        this.f52433k = requestFusion;
                        this.f52430h = bVar2;
                        this.f52432j = true;
                        this.f52423a.onSubscribe(this);
                        a();
                        return;
                    } else if (requestFusion == 2) {
                        this.f52433k = requestFusion;
                        this.f52430h = bVar2;
                        this.f52423a.onSubscribe(this);
                        return;
                    }
                }
                this.f52430h = new io.reactivex.internal.queue.b(this.f52426d);
                this.f52423a.onSubscribe(this);
            }
        }
    }

    public v(io.reactivex.p<T> pVar, vh.o<? super T, ? extends io.reactivex.p<? extends R>> oVar, ErrorMode errorMode, int i9, int i10) {
        super(pVar);
        this.f52419b = oVar;
        this.f52420c = errorMode;
        this.f52421d = i9;
        this.f52422e = i10;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super R> rVar) {
        this.f51403a.subscribe(new a(rVar, this.f52419b, this.f52421d, this.f52422e, this.f52420c));
    }
}
