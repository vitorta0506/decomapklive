package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class ObservableGroupBy<T, K, V> extends io.reactivex.internal.operators.observable.a<T, bi.b<K, V>> {

    /* renamed from: b  reason: collision with root package name */
    final vh.o<? super T, ? extends K> f51387b;

    /* renamed from: c  reason: collision with root package name */
    final vh.o<? super T, ? extends V> f51388c;

    /* renamed from: d  reason: collision with root package name */
    final int f51389d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f51390e;

    /* loaded from: classes7.dex */
    public static final class GroupByObserver<T, K, V> extends AtomicInteger implements io.reactivex.r<T>, th.b {
        static final Object NULL_KEY = new Object();
        private static final long serialVersionUID = -3688291656102519502L;
        final int bufferSize;
        final boolean delayError;
        final io.reactivex.r<? super bi.b<K, V>> downstream;
        final vh.o<? super T, ? extends K> keySelector;
        th.b upstream;
        final vh.o<? super T, ? extends V> valueSelector;
        final AtomicBoolean cancelled = new AtomicBoolean();
        final Map<Object, a<K, V>> groups = new ConcurrentHashMap();

        public GroupByObserver(io.reactivex.r<? super bi.b<K, V>> rVar, vh.o<? super T, ? extends K> oVar, vh.o<? super T, ? extends V> oVar2, int i9, boolean z10) {
            this.downstream = rVar;
            this.keySelector = oVar;
            this.valueSelector = oVar2;
            this.bufferSize = i9;
            this.delayError = z10;
            lazySet(1);
        }

        public void cancel(K k10) {
            if (k10 == null) {
                k10 = (K) NULL_KEY;
            }
            this.groups.remove(k10);
            if (decrementAndGet() == 0) {
                this.upstream.dispose();
            }
        }

        @Override // th.b
        public void dispose() {
            if (this.cancelled.compareAndSet(false, true) && decrementAndGet() == 0) {
                this.upstream.dispose();
            }
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.cancelled.get();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            ArrayList<a> arrayList = new ArrayList(this.groups.values());
            this.groups.clear();
            for (a aVar : arrayList) {
                aVar.onComplete();
            }
            this.downstream.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            ArrayList<a> arrayList = new ArrayList(this.groups.values());
            this.groups.clear();
            for (a aVar : arrayList) {
                aVar.onError(th2);
            }
            this.downstream.onError(th2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.r
        public void onNext(T t10) {
            try {
                K apply = this.keySelector.apply(t10);
                Object obj = apply != null ? apply : NULL_KEY;
                a<K, V> aVar = this.groups.get(obj);
                if (aVar == null) {
                    if (this.cancelled.get()) {
                        return;
                    }
                    aVar = a.c(apply, this.bufferSize, this, this.delayError);
                    this.groups.put(obj, aVar);
                    getAndIncrement();
                    this.downstream.onNext(aVar);
                }
                try {
                    aVar.onNext(xh.b.e(this.valueSelector.apply(t10), "The value supplied is null"));
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    this.upstream.dispose();
                    onError(th2);
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                this.upstream.dispose();
                onError(th3);
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.upstream, bVar)) {
                this.upstream = bVar;
                this.downstream.onSubscribe(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class a<K, T> extends bi.b<K, T> {

        /* renamed from: b  reason: collision with root package name */
        final b<T, K> f51391b;

        protected a(K k10, b<T, K> bVar) {
            super(k10);
            this.f51391b = bVar;
        }

        public static <T, K> a<K, T> c(K k10, int i9, GroupByObserver<?, K, T> groupByObserver, boolean z10) {
            return new a<>(k10, new b(i9, groupByObserver, k10, z10));
        }

        public void onComplete() {
            this.f51391b.c();
        }

        public void onError(Throwable th2) {
            this.f51391b.d(th2);
        }

        public void onNext(T t10) {
            this.f51391b.e(t10);
        }

        @Override // io.reactivex.k
        protected void subscribeActual(io.reactivex.r<? super T> rVar) {
            this.f51391b.subscribe(rVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class b<T, K> extends AtomicInteger implements th.b, io.reactivex.p<T> {
        private static final long serialVersionUID = -3852313036005250360L;

        /* renamed from: a  reason: collision with root package name */
        final K f51392a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.internal.queue.b<T> f51393b;

        /* renamed from: c  reason: collision with root package name */
        final GroupByObserver<?, K, T> f51394c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f51395d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f51396e;

        /* renamed from: f  reason: collision with root package name */
        Throwable f51397f;

        /* renamed from: g  reason: collision with root package name */
        final AtomicBoolean f51398g = new AtomicBoolean();

        /* renamed from: h  reason: collision with root package name */
        final AtomicBoolean f51399h = new AtomicBoolean();

        /* renamed from: i  reason: collision with root package name */
        final AtomicReference<io.reactivex.r<? super T>> f51400i = new AtomicReference<>();

        b(int i9, GroupByObserver<?, K, T> groupByObserver, K k10, boolean z10) {
            this.f51393b = new io.reactivex.internal.queue.b<>(i9);
            this.f51394c = groupByObserver;
            this.f51392a = k10;
            this.f51395d = z10;
        }

        boolean a(boolean z10, boolean z11, io.reactivex.r<? super T> rVar, boolean z12) {
            if (this.f51398g.get()) {
                this.f51393b.clear();
                this.f51394c.cancel(this.f51392a);
                this.f51400i.lazySet(null);
                return true;
            } else if (z10) {
                if (z12) {
                    if (z11) {
                        Throwable th2 = this.f51397f;
                        this.f51400i.lazySet(null);
                        if (th2 != null) {
                            rVar.onError(th2);
                        } else {
                            rVar.onComplete();
                        }
                        return true;
                    }
                    return false;
                }
                Throwable th3 = this.f51397f;
                if (th3 != null) {
                    this.f51393b.clear();
                    this.f51400i.lazySet(null);
                    rVar.onError(th3);
                    return true;
                } else if (z11) {
                    this.f51400i.lazySet(null);
                    rVar.onComplete();
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.internal.queue.b<T> bVar = this.f51393b;
            boolean z10 = this.f51395d;
            io.reactivex.r<? super T> rVar = this.f51400i.get();
            int i9 = 1;
            while (true) {
                if (rVar != null) {
                    while (true) {
                        boolean z11 = this.f51396e;
                        Object obj = (T) bVar.poll();
                        boolean z12 = obj == null;
                        if (a(z11, z12, rVar, z10)) {
                            return;
                        }
                        if (z12) {
                            break;
                        }
                        rVar.onNext(obj);
                    }
                }
                i9 = addAndGet(-i9);
                if (i9 == 0) {
                    return;
                }
                if (rVar == null) {
                    rVar = this.f51400i.get();
                }
            }
        }

        public void c() {
            this.f51396e = true;
            b();
        }

        public void d(Throwable th2) {
            this.f51397f = th2;
            this.f51396e = true;
            b();
        }

        @Override // th.b
        public void dispose() {
            if (this.f51398g.compareAndSet(false, true) && getAndIncrement() == 0) {
                this.f51400i.lazySet(null);
                this.f51394c.cancel(this.f51392a);
            }
        }

        public void e(T t10) {
            this.f51393b.offer(t10);
            b();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51398g.get();
        }

        @Override // io.reactivex.p
        public void subscribe(io.reactivex.r<? super T> rVar) {
            if (this.f51399h.compareAndSet(false, true)) {
                rVar.onSubscribe(this);
                this.f51400i.lazySet(rVar);
                if (this.f51398g.get()) {
                    this.f51400i.lazySet(null);
                    return;
                } else {
                    b();
                    return;
                }
            }
            EmptyDisposable.error(new IllegalStateException("Only one Observer allowed!"), rVar);
        }
    }

    public ObservableGroupBy(io.reactivex.p<T> pVar, vh.o<? super T, ? extends K> oVar, vh.o<? super T, ? extends V> oVar2, int i9, boolean z10) {
        super(pVar);
        this.f51387b = oVar;
        this.f51388c = oVar2;
        this.f51389d = i9;
        this.f51390e = z10;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super bi.b<K, V>> rVar) {
        this.f51403a.subscribe(new GroupByObserver(rVar, this.f51387b, this.f51388c, this.f51389d, this.f51390e));
    }
}
