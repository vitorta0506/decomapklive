package io.reactivex;

import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import io.reactivex.internal.observers.ForEachWhileObserver;
import io.reactivex.internal.observers.LambdaObserver;
import io.reactivex.internal.operators.observable.ObservableGroupBy;
import io.reactivex.internal.operators.observable.ObservableScalarXMap;
import io.reactivex.internal.operators.observable.a0;
import io.reactivex.internal.operators.observable.a1;
import io.reactivex.internal.operators.observable.a2;
import io.reactivex.internal.operators.observable.a3;
import io.reactivex.internal.operators.observable.a4;
import io.reactivex.internal.operators.observable.b0;
import io.reactivex.internal.operators.observable.b1;
import io.reactivex.internal.operators.observable.b2;
import io.reactivex.internal.operators.observable.b3;
import io.reactivex.internal.operators.observable.b4;
import io.reactivex.internal.operators.observable.c0;
import io.reactivex.internal.operators.observable.c1;
import io.reactivex.internal.operators.observable.c2;
import io.reactivex.internal.operators.observable.c3;
import io.reactivex.internal.operators.observable.c4;
import io.reactivex.internal.operators.observable.d0;
import io.reactivex.internal.operators.observable.d1;
import io.reactivex.internal.operators.observable.d2;
import io.reactivex.internal.operators.observable.d3;
import io.reactivex.internal.operators.observable.d4;
import io.reactivex.internal.operators.observable.e0;
import io.reactivex.internal.operators.observable.e1;
import io.reactivex.internal.operators.observable.e2;
import io.reactivex.internal.operators.observable.e3;
import io.reactivex.internal.operators.observable.e4;
import io.reactivex.internal.operators.observable.f0;
import io.reactivex.internal.operators.observable.f1;
import io.reactivex.internal.operators.observable.f3;
import io.reactivex.internal.operators.observable.f4;
import io.reactivex.internal.operators.observable.g0;
import io.reactivex.internal.operators.observable.g1;
import io.reactivex.internal.operators.observable.g3;
import io.reactivex.internal.operators.observable.g4;
import io.reactivex.internal.operators.observable.h0;
import io.reactivex.internal.operators.observable.h1;
import io.reactivex.internal.operators.observable.h2;
import io.reactivex.internal.operators.observable.h3;
import io.reactivex.internal.operators.observable.h4;
import io.reactivex.internal.operators.observable.i0;
import io.reactivex.internal.operators.observable.i1;
import io.reactivex.internal.operators.observable.i2;
import io.reactivex.internal.operators.observable.i3;
import io.reactivex.internal.operators.observable.i4;
import io.reactivex.internal.operators.observable.j0;
import io.reactivex.internal.operators.observable.j1;
import io.reactivex.internal.operators.observable.j2;
import io.reactivex.internal.operators.observable.j3;
import io.reactivex.internal.operators.observable.j4;
import io.reactivex.internal.operators.observable.k0;
import io.reactivex.internal.operators.observable.k1;
import io.reactivex.internal.operators.observable.k2;
import io.reactivex.internal.operators.observable.k3;
import io.reactivex.internal.operators.observable.k4;
import io.reactivex.internal.operators.observable.l0;
import io.reactivex.internal.operators.observable.l1;
import io.reactivex.internal.operators.observable.l2;
import io.reactivex.internal.operators.observable.l3;
import io.reactivex.internal.operators.observable.l4;
import io.reactivex.internal.operators.observable.m0;
import io.reactivex.internal.operators.observable.m1;
import io.reactivex.internal.operators.observable.m2;
import io.reactivex.internal.operators.observable.m3;
import io.reactivex.internal.operators.observable.n0;
import io.reactivex.internal.operators.observable.n1;
import io.reactivex.internal.operators.observable.n3;
import io.reactivex.internal.operators.observable.o0;
import io.reactivex.internal.operators.observable.o1;
import io.reactivex.internal.operators.observable.o2;
import io.reactivex.internal.operators.observable.o3;
import io.reactivex.internal.operators.observable.p1;
import io.reactivex.internal.operators.observable.p2;
import io.reactivex.internal.operators.observable.p3;
import io.reactivex.internal.operators.observable.q0;
import io.reactivex.internal.operators.observable.q1;
import io.reactivex.internal.operators.observable.q2;
import io.reactivex.internal.operators.observable.q3;
import io.reactivex.internal.operators.observable.r0;
import io.reactivex.internal.operators.observable.r1;
import io.reactivex.internal.operators.observable.r2;
import io.reactivex.internal.operators.observable.r3;
import io.reactivex.internal.operators.observable.s0;
import io.reactivex.internal.operators.observable.s1;
import io.reactivex.internal.operators.observable.s2;
import io.reactivex.internal.operators.observable.s3;
import io.reactivex.internal.operators.observable.t0;
import io.reactivex.internal.operators.observable.t1;
import io.reactivex.internal.operators.observable.t2;
import io.reactivex.internal.operators.observable.t3;
import io.reactivex.internal.operators.observable.u0;
import io.reactivex.internal.operators.observable.u1;
import io.reactivex.internal.operators.observable.u2;
import io.reactivex.internal.operators.observable.u3;
import io.reactivex.internal.operators.observable.v0;
import io.reactivex.internal.operators.observable.v1;
import io.reactivex.internal.operators.observable.v2;
import io.reactivex.internal.operators.observable.v3;
import io.reactivex.internal.operators.observable.w;
import io.reactivex.internal.operators.observable.w1;
import io.reactivex.internal.operators.observable.w2;
import io.reactivex.internal.operators.observable.w3;
import io.reactivex.internal.operators.observable.x;
import io.reactivex.internal.operators.observable.x0;
import io.reactivex.internal.operators.observable.x1;
import io.reactivex.internal.operators.observable.x2;
import io.reactivex.internal.operators.observable.x3;
import io.reactivex.internal.operators.observable.y;
import io.reactivex.internal.operators.observable.y0;
import io.reactivex.internal.operators.observable.y1;
import io.reactivex.internal.operators.observable.y2;
import io.reactivex.internal.operators.observable.y3;
import io.reactivex.internal.operators.observable.z0;
import io.reactivex.internal.operators.observable.z1;
import io.reactivex.internal.operators.observable.z3;
import io.reactivex.internal.util.ArrayListSupplier;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.internal.util.HashMapSupplier;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
/* loaded from: classes7.dex */
public abstract class k<T> implements p<T> {

    /* loaded from: classes7.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f52765a;

        static {
            int[] iArr = new int[BackpressureStrategy.values().length];
            f52765a = iArr;
            try {
                iArr[BackpressureStrategy.DROP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f52765a[BackpressureStrategy.LATEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f52765a[BackpressureStrategy.MISSING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f52765a[BackpressureStrategy.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static <T> k<T> amb(Iterable<? extends p<? extends T>> iterable) {
        xh.b.e(iterable, "sources is null");
        return ci.a.o(new io.reactivex.internal.operators.observable.h(null, iterable));
    }

    public static <T> k<T> ambArray(p<? extends T>... pVarArr) {
        xh.b.e(pVarArr, "sources is null");
        int length = pVarArr.length;
        if (length == 0) {
            return empty();
        }
        if (length == 1) {
            return wrap(pVarArr[0]);
        }
        return ci.a.o(new io.reactivex.internal.operators.observable.h(pVarArr, null));
    }

    public static int bufferSize() {
        return e.b();
    }

    public static <T, R> k<R> combineLatest(vh.o<? super Object[], ? extends R> oVar, int i9, p<? extends T>... pVarArr) {
        return combineLatest(pVarArr, oVar, i9);
    }

    public static <T, R> k<R> combineLatestDelayError(p<? extends T>[] pVarArr, vh.o<? super Object[], ? extends R> oVar) {
        return combineLatestDelayError(pVarArr, oVar, bufferSize());
    }

    public static <T> k<T> concat(Iterable<? extends p<? extends T>> iterable) {
        xh.b.e(iterable, "sources is null");
        return fromIterable(iterable).concatMapDelayError(xh.a.i(), bufferSize(), false);
    }

    public static <T> k<T> concatArray(p<? extends T>... pVarArr) {
        if (pVarArr.length == 0) {
            return empty();
        }
        if (pVarArr.length == 1) {
            return wrap(pVarArr[0]);
        }
        return ci.a.o(new io.reactivex.internal.operators.observable.u(fromArray(pVarArr), xh.a.i(), bufferSize(), ErrorMode.BOUNDARY));
    }

    public static <T> k<T> concatArrayDelayError(p<? extends T>... pVarArr) {
        if (pVarArr.length == 0) {
            return empty();
        }
        if (pVarArr.length == 1) {
            return wrap(pVarArr[0]);
        }
        return concatDelayError(fromArray(pVarArr));
    }

    public static <T> k<T> concatArrayEager(p<? extends T>... pVarArr) {
        return concatArrayEager(bufferSize(), bufferSize(), pVarArr);
    }

    public static <T> k<T> concatArrayEagerDelayError(p<? extends T>... pVarArr) {
        return concatArrayEagerDelayError(bufferSize(), bufferSize(), pVarArr);
    }

    public static <T> k<T> concatDelayError(Iterable<? extends p<? extends T>> iterable) {
        xh.b.e(iterable, "sources is null");
        return concatDelayError(fromIterable(iterable));
    }

    public static <T> k<T> concatEager(p<? extends p<? extends T>> pVar) {
        return concatEager(pVar, bufferSize(), bufferSize());
    }

    public static <T> k<T> create(n<T> nVar) {
        xh.b.e(nVar, "source is null");
        return ci.a.o(new b0(nVar));
    }

    public static <T> k<T> defer(Callable<? extends p<? extends T>> callable) {
        xh.b.e(callable, "supplier is null");
        return ci.a.o(new e0(callable));
    }

    private k<T> doOnEach(vh.g<? super T> gVar, vh.g<? super Throwable> gVar2, vh.a aVar, vh.a aVar2) {
        xh.b.e(gVar, "onNext is null");
        xh.b.e(gVar2, "onError is null");
        xh.b.e(aVar, "onComplete is null");
        xh.b.e(aVar2, "onAfterTerminate is null");
        return ci.a.o(new n0(this, gVar, gVar2, aVar, aVar2));
    }

    public static <T> k<T> empty() {
        return ci.a.o(s0.f52305a);
    }

    public static <T> k<T> error(Callable<? extends Throwable> callable) {
        xh.b.e(callable, "errorSupplier is null");
        return ci.a.o(new t0(callable));
    }

    public static <T> k<T> fromArray(T... tArr) {
        xh.b.e(tArr, "items is null");
        if (tArr.length == 0) {
            return empty();
        }
        if (tArr.length == 1) {
            return just(tArr[0]);
        }
        return ci.a.o(new b1(tArr));
    }

    public static <T> k<T> fromCallable(Callable<? extends T> callable) {
        xh.b.e(callable, "supplier is null");
        return ci.a.o(new c1(callable));
    }

    public static <T> k<T> fromFuture(Future<? extends T> future) {
        xh.b.e(future, "future is null");
        return ci.a.o(new d1(future, 0L, null));
    }

    public static <T> k<T> fromIterable(Iterable<? extends T> iterable) {
        xh.b.e(iterable, "source is null");
        return ci.a.o(new e1(iterable));
    }

    public static <T> k<T> fromPublisher(il.a<? extends T> aVar) {
        xh.b.e(aVar, "publisher is null");
        return ci.a.o(new f1(aVar));
    }

    public static <T> k<T> generate(vh.g<d<T>> gVar) {
        xh.b.e(gVar, "generator is null");
        return generate(xh.a.s(), m1.m(gVar), xh.a.g());
    }

    public static k<Long> interval(long j10, long j11, TimeUnit timeUnit) {
        return interval(j10, j11, timeUnit, di.a.a());
    }

    public static k<Long> intervalRange(long j10, long j11, long j12, long j13, TimeUnit timeUnit) {
        return intervalRange(j10, j11, j12, j13, timeUnit, di.a.a());
    }

    public static <T> k<T> just(T t10) {
        xh.b.e(t10, "item is null");
        return ci.a.o(new q1(t10));
    }

    public static <T> k<T> merge(Iterable<? extends p<? extends T>> iterable, int i9, int i10) {
        return fromIterable(iterable).flatMap(xh.a.i(), false, i9, i10);
    }

    public static <T> k<T> mergeArray(int i9, int i10, p<? extends T>... pVarArr) {
        return fromArray(pVarArr).flatMap(xh.a.i(), false, i9, i10);
    }

    public static <T> k<T> mergeArrayDelayError(int i9, int i10, p<? extends T>... pVarArr) {
        return fromArray(pVarArr).flatMap(xh.a.i(), true, i9, i10);
    }

    public static <T> k<T> mergeDelayError(Iterable<? extends p<? extends T>> iterable) {
        return fromIterable(iterable).flatMap(xh.a.i(), true);
    }

    public static <T> k<T> never() {
        return ci.a.o(a2.f51412a);
    }

    public static k<Integer> range(int i9, int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("count >= 0 required but it was " + i10);
        } else if (i10 == 0) {
            return empty();
        } else {
            if (i10 == 1) {
                return just(Integer.valueOf(i9));
            }
            if (i9 + (i10 - 1) <= 2147483647L) {
                return ci.a.o(new i2(i9, i10));
            }
            throw new IllegalArgumentException("Integer overflow");
        }
    }

    public static k<Long> rangeLong(long j10, long j11) {
        int i9 = (j11 > 0L ? 1 : (j11 == 0L ? 0 : -1));
        if (i9 < 0) {
            throw new IllegalArgumentException("count >= 0 required but it was " + j11);
        } else if (i9 == 0) {
            return empty();
        } else {
            if (j11 == 1) {
                return just(Long.valueOf(j10));
            }
            long j12 = (j11 - 1) + j10;
            if (j10 > 0 && j12 < 0) {
                throw new IllegalArgumentException("Overflow! start + count is bigger than Long.MAX_VALUE");
            }
            return ci.a.o(new j2(j10, j11));
        }
    }

    public static <T> t<Boolean> sequenceEqual(p<? extends T> pVar, p<? extends T> pVar2) {
        return sequenceEqual(pVar, pVar2, xh.b.d(), bufferSize());
    }

    public static <T> k<T> switchOnNext(p<? extends p<? extends T>> pVar, int i9) {
        xh.b.e(pVar, "sources is null");
        xh.b.f(i9, "bufferSize");
        return ci.a.o(new l3(pVar, xh.a.i(), i9, false));
    }

    public static <T> k<T> switchOnNextDelayError(p<? extends p<? extends T>> pVar) {
        return switchOnNextDelayError(pVar, bufferSize());
    }

    private k<T> timeout0(long j10, TimeUnit timeUnit, p<? extends T> pVar, s sVar) {
        xh.b.e(timeUnit, "timeUnit is null");
        xh.b.e(sVar, "scheduler is null");
        return ci.a.o(new x3(this, j10, timeUnit, sVar, pVar));
    }

    public static k<Long> timer(long j10, TimeUnit timeUnit) {
        return timer(j10, timeUnit, di.a.a());
    }

    public static <T> k<T> unsafeCreate(p<T> pVar) {
        xh.b.e(pVar, "onSubscribe is null");
        if (!(pVar instanceof k)) {
            return ci.a.o(new g1(pVar));
        }
        throw new IllegalArgumentException("unsafeCreate(Observable) should be upgraded");
    }

    public static <T, D> k<T> using(Callable<? extends D> callable, vh.o<? super D, ? extends p<? extends T>> oVar, vh.g<? super D> gVar) {
        return using(callable, oVar, gVar, true);
    }

    public static <T> k<T> wrap(p<T> pVar) {
        xh.b.e(pVar, "source is null");
        if (pVar instanceof k) {
            return ci.a.o((k) pVar);
        }
        return ci.a.o(new g1(pVar));
    }

    public static <T, R> k<R> zip(Iterable<? extends p<? extends T>> iterable, vh.o<? super Object[], ? extends R> oVar) {
        xh.b.e(oVar, "zipper is null");
        xh.b.e(iterable, "sources is null");
        return ci.a.o(new k4(null, iterable, oVar, bufferSize(), false));
    }

    public static <T, R> k<R> zipArray(vh.o<? super Object[], ? extends R> oVar, boolean z10, int i9, p<? extends T>... pVarArr) {
        if (pVarArr.length == 0) {
            return empty();
        }
        xh.b.e(oVar, "zipper is null");
        xh.b.f(i9, "bufferSize");
        return ci.a.o(new k4(pVarArr, null, oVar, i9, z10));
    }

    public static <T, R> k<R> zipIterable(Iterable<? extends p<? extends T>> iterable, vh.o<? super Object[], ? extends R> oVar, boolean z10, int i9) {
        xh.b.e(oVar, "zipper is null");
        xh.b.e(iterable, "sources is null");
        xh.b.f(i9, "bufferSize");
        return ci.a.o(new k4(null, iterable, oVar, i9, z10));
    }

    public final t<Boolean> all(vh.q<? super T> qVar) {
        xh.b.e(qVar, "predicate is null");
        return ci.a.p(new io.reactivex.internal.operators.observable.g(this, qVar));
    }

    public final k<T> ambWith(p<? extends T> pVar) {
        xh.b.e(pVar, "other is null");
        return ambArray(this, pVar);
    }

    public final t<Boolean> any(vh.q<? super T> qVar) {
        xh.b.e(qVar, "predicate is null");
        return ci.a.p(new io.reactivex.internal.operators.observable.j(this, qVar));
    }

    public final <R> R as(l<T, ? extends R> lVar) {
        return (R) ((l) xh.b.e(lVar, "converter is null")).a(this);
    }

    public final T blockingFirst() {
        io.reactivex.internal.observers.d dVar = new io.reactivex.internal.observers.d();
        subscribe(dVar);
        T a10 = dVar.a();
        if (a10 != null) {
            return a10;
        }
        throw new NoSuchElementException();
    }

    public final void blockingForEach(vh.g<? super T> gVar) {
        Iterator<T> it = blockingIterable().iterator();
        while (it.hasNext()) {
            try {
                gVar.accept(it.next());
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                ((th.b) it).dispose();
                throw io.reactivex.internal.util.f.d(th2);
            }
        }
    }

    public final Iterable<T> blockingIterable() {
        return blockingIterable(bufferSize());
    }

    public final T blockingLast() {
        io.reactivex.internal.observers.e eVar = new io.reactivex.internal.observers.e();
        subscribe(eVar);
        T a10 = eVar.a();
        if (a10 != null) {
            return a10;
        }
        throw new NoSuchElementException();
    }

    public final Iterable<T> blockingLatest() {
        return new io.reactivex.internal.operators.observable.c(this);
    }

    public final Iterable<T> blockingMostRecent(T t10) {
        return new io.reactivex.internal.operators.observable.d(this, t10);
    }

    public final Iterable<T> blockingNext() {
        return new io.reactivex.internal.operators.observable.e(this);
    }

    public final T blockingSingle() {
        T c10 = singleElement().c();
        if (c10 != null) {
            return c10;
        }
        throw new NoSuchElementException();
    }

    public final void blockingSubscribe() {
        io.reactivex.internal.operators.observable.k.a(this);
    }

    public final k<List<T>> buffer(int i9) {
        return buffer(i9, i9);
    }

    public final k<T> cache() {
        return cacheWithInitialCapacity(16);
    }

    public final k<T> cacheWithInitialCapacity(int i9) {
        xh.b.f(i9, "initialCapacity");
        return ci.a.o(new io.reactivex.internal.operators.observable.q(this, i9));
    }

    public final <U> k<U> cast(Class<U> cls) {
        xh.b.e(cls, "clazz is null");
        return (k<U>) map(xh.a.d(cls));
    }

    public final <U> t<U> collect(Callable<? extends U> callable, vh.b<? super U, ? super T> bVar) {
        xh.b.e(callable, "initialValueSupplier is null");
        xh.b.e(bVar, "collector is null");
        return ci.a.p(new io.reactivex.internal.operators.observable.s(this, callable, bVar));
    }

    public final <U> t<U> collectInto(U u10, vh.b<? super U, ? super T> bVar) {
        xh.b.e(u10, "initialValue is null");
        return collect(xh.a.k(u10), bVar);
    }

    public final <R> k<R> compose(q<? super T, ? extends R> qVar) {
        return wrap(((q) xh.b.e(qVar, "composer is null")).a(this));
    }

    public final <R> k<R> concatMap(vh.o<? super T, ? extends p<? extends R>> oVar) {
        return concatMap(oVar, 2);
    }

    public final io.reactivex.a concatMapCompletable(vh.o<? super T, ? extends c> oVar) {
        return concatMapCompletable(oVar, 2);
    }

    public final io.reactivex.a concatMapCompletableDelayError(vh.o<? super T, ? extends c> oVar) {
        return concatMapCompletableDelayError(oVar, true, 2);
    }

    public final <R> k<R> concatMapDelayError(vh.o<? super T, ? extends p<? extends R>> oVar) {
        return concatMapDelayError(oVar, bufferSize(), true);
    }

    public final <R> k<R> concatMapEager(vh.o<? super T, ? extends p<? extends R>> oVar) {
        return concatMapEager(oVar, Integer.MAX_VALUE, bufferSize());
    }

    public final <R> k<R> concatMapEagerDelayError(vh.o<? super T, ? extends p<? extends R>> oVar, boolean z10) {
        return concatMapEagerDelayError(oVar, Integer.MAX_VALUE, bufferSize(), z10);
    }

    public final <U> k<U> concatMapIterable(vh.o<? super T, ? extends Iterable<? extends U>> oVar) {
        xh.b.e(oVar, "mapper is null");
        return ci.a.o(new a1(this, oVar));
    }

    public final <R> k<R> concatMapMaybe(vh.o<? super T, ? extends i<? extends R>> oVar) {
        return concatMapMaybe(oVar, 2);
    }

    public final <R> k<R> concatMapMaybeDelayError(vh.o<? super T, ? extends i<? extends R>> oVar) {
        return concatMapMaybeDelayError(oVar, true, 2);
    }

    public final <R> k<R> concatMapSingle(vh.o<? super T, ? extends v<? extends R>> oVar) {
        return concatMapSingle(oVar, 2);
    }

    public final <R> k<R> concatMapSingleDelayError(vh.o<? super T, ? extends v<? extends R>> oVar) {
        return concatMapSingleDelayError(oVar, true, 2);
    }

    public final k<T> concatWith(p<? extends T> pVar) {
        xh.b.e(pVar, "other is null");
        return concat(this, pVar);
    }

    public final t<Boolean> contains(Object obj) {
        xh.b.e(obj, "element is null");
        return any(xh.a.h(obj));
    }

    public final t<Long> count() {
        return ci.a.p(new a0(this));
    }

    public final <U> k<T> debounce(vh.o<? super T, ? extends p<U>> oVar) {
        xh.b.e(oVar, "debounceSelector is null");
        return ci.a.o(new c0(this, oVar));
    }

    public final k<T> defaultIfEmpty(T t10) {
        xh.b.e(t10, "defaultItem is null");
        return switchIfEmpty(just(t10));
    }

    public final <U> k<T> delay(vh.o<? super T, ? extends p<U>> oVar) {
        xh.b.e(oVar, "itemDelay is null");
        return (k<T>) flatMap(m1.c(oVar));
    }

    public final <U> k<T> delaySubscription(p<U> pVar) {
        xh.b.e(pVar, "other is null");
        return ci.a.o(new g0(this, pVar));
    }

    @Deprecated
    public final <T2> k<T2> dematerialize() {
        return ci.a.o(new h0(this, xh.a.i()));
    }

    public final k<T> distinct() {
        return distinct(xh.a.i(), xh.a.f());
    }

    public final k<T> distinctUntilChanged() {
        return distinctUntilChanged(xh.a.i());
    }

    public final k<T> doAfterNext(vh.g<? super T> gVar) {
        xh.b.e(gVar, "onAfterNext is null");
        return ci.a.o(new l0(this, gVar));
    }

    public final k<T> doAfterTerminate(vh.a aVar) {
        xh.b.e(aVar, "onFinally is null");
        return doOnEach(xh.a.g(), xh.a.g(), xh.a.f59912c, aVar);
    }

    public final k<T> doFinally(vh.a aVar) {
        xh.b.e(aVar, "onFinally is null");
        return ci.a.o(new m0(this, aVar));
    }

    public final k<T> doOnComplete(vh.a aVar) {
        return doOnEach(xh.a.g(), xh.a.g(), aVar, xh.a.f59912c);
    }

    public final k<T> doOnDispose(vh.a aVar) {
        return doOnLifecycle(xh.a.g(), aVar);
    }

    public final k<T> doOnError(vh.g<? super Throwable> gVar) {
        vh.g<? super T> g10 = xh.a.g();
        vh.a aVar = xh.a.f59912c;
        return doOnEach(g10, gVar, aVar, aVar);
    }

    public final k<T> doOnLifecycle(vh.g<? super th.b> gVar, vh.a aVar) {
        xh.b.e(gVar, "onSubscribe is null");
        xh.b.e(aVar, "onDispose is null");
        return ci.a.o(new o0(this, gVar, aVar));
    }

    public final k<T> doOnNext(vh.g<? super T> gVar) {
        vh.g<? super Throwable> g10 = xh.a.g();
        vh.a aVar = xh.a.f59912c;
        return doOnEach(gVar, g10, aVar, aVar);
    }

    public final k<T> doOnSubscribe(vh.g<? super th.b> gVar) {
        return doOnLifecycle(gVar, xh.a.f59912c);
    }

    public final k<T> doOnTerminate(vh.a aVar) {
        xh.b.e(aVar, "onTerminate is null");
        return doOnEach(xh.a.g(), xh.a.a(aVar), aVar, xh.a.f59912c);
    }

    public final g<T> elementAt(long j10) {
        if (j10 >= 0) {
            return ci.a.n(new q0(this, j10));
        }
        throw new IndexOutOfBoundsException("index >= 0 required but it was " + j10);
    }

    public final t<T> elementAtOrError(long j10) {
        if (j10 >= 0) {
            return ci.a.p(new r0(this, j10, null));
        }
        throw new IndexOutOfBoundsException("index >= 0 required but it was " + j10);
    }

    public final k<T> filter(vh.q<? super T> qVar) {
        xh.b.e(qVar, "predicate is null");
        return ci.a.o(new u0(this, qVar));
    }

    public final t<T> first(T t10) {
        return elementAt(0L, t10);
    }

    public final g<T> firstElement() {
        return elementAt(0L);
    }

    public final t<T> firstOrError() {
        return elementAtOrError(0L);
    }

    public final <R> k<R> flatMap(vh.o<? super T, ? extends p<? extends R>> oVar) {
        return flatMap((vh.o) oVar, false);
    }

    public final io.reactivex.a flatMapCompletable(vh.o<? super T, ? extends c> oVar) {
        return flatMapCompletable(oVar, false);
    }

    public final <U> k<U> flatMapIterable(vh.o<? super T, ? extends Iterable<? extends U>> oVar) {
        xh.b.e(oVar, "mapper is null");
        return ci.a.o(new a1(this, oVar));
    }

    public final <R> k<R> flatMapMaybe(vh.o<? super T, ? extends i<? extends R>> oVar) {
        return flatMapMaybe(oVar, false);
    }

    public final <R> k<R> flatMapSingle(vh.o<? super T, ? extends v<? extends R>> oVar) {
        return flatMapSingle(oVar, false);
    }

    public final th.b forEach(vh.g<? super T> gVar) {
        return subscribe(gVar);
    }

    public final th.b forEachWhile(vh.q<? super T> qVar) {
        return forEachWhile(qVar, xh.a.f59915f, xh.a.f59912c);
    }

    public final <K> k<bi.b<K, T>> groupBy(vh.o<? super T, ? extends K> oVar) {
        return (k<bi.b<K, T>>) groupBy(oVar, xh.a.i(), false, bufferSize());
    }

    public final <TRight, TLeftEnd, TRightEnd, R> k<R> groupJoin(p<? extends TRight> pVar, vh.o<? super T, ? extends p<TLeftEnd>> oVar, vh.o<? super TRight, ? extends p<TRightEnd>> oVar2, vh.c<? super T, ? super k<TRight>, ? extends R> cVar) {
        xh.b.e(pVar, "other is null");
        xh.b.e(oVar, "leftEnd is null");
        xh.b.e(oVar2, "rightEnd is null");
        xh.b.e(cVar, "resultSelector is null");
        return ci.a.o(new i1(this, pVar, oVar, oVar2, cVar));
    }

    public final k<T> hide() {
        return ci.a.o(new j1(this));
    }

    public final io.reactivex.a ignoreElements() {
        return ci.a.l(new l1(this));
    }

    public final t<Boolean> isEmpty() {
        return all(xh.a.b());
    }

    public final <TRight, TLeftEnd, TRightEnd, R> k<R> join(p<? extends TRight> pVar, vh.o<? super T, ? extends p<TLeftEnd>> oVar, vh.o<? super TRight, ? extends p<TRightEnd>> oVar2, vh.c<? super T, ? super TRight, ? extends R> cVar) {
        xh.b.e(pVar, "other is null");
        xh.b.e(oVar, "leftEnd is null");
        xh.b.e(oVar2, "rightEnd is null");
        xh.b.e(cVar, "resultSelector is null");
        return ci.a.o(new p1(this, pVar, oVar, oVar2, cVar));
    }

    public final t<T> last(T t10) {
        xh.b.e(t10, "defaultItem is null");
        return ci.a.p(new s1(this, t10));
    }

    public final g<T> lastElement() {
        return ci.a.n(new r1(this));
    }

    public final t<T> lastOrError() {
        return ci.a.p(new s1(this, null));
    }

    public final <R> k<R> lift(o<? extends R, ? super T> oVar) {
        xh.b.e(oVar, "lifter is null");
        return ci.a.o(new t1(this, oVar));
    }

    public final <R> k<R> map(vh.o<? super T, ? extends R> oVar) {
        xh.b.e(oVar, "mapper is null");
        return ci.a.o(new u1(this, oVar));
    }

    public final k<j<T>> materialize() {
        return ci.a.o(new w1(this));
    }

    public final k<T> mergeWith(p<? extends T> pVar) {
        xh.b.e(pVar, "other is null");
        return merge(this, pVar);
    }

    public final k<T> observeOn(s sVar) {
        return observeOn(sVar, false, bufferSize());
    }

    public final <U> k<U> ofType(Class<U> cls) {
        xh.b.e(cls, "clazz is null");
        return filter(xh.a.j(cls)).cast(cls);
    }

    public final k<T> onErrorResumeNext(vh.o<? super Throwable, ? extends p<? extends T>> oVar) {
        xh.b.e(oVar, "resumeFunction is null");
        return ci.a.o(new c2(this, oVar, false));
    }

    public final k<T> onErrorReturn(vh.o<? super Throwable, ? extends T> oVar) {
        xh.b.e(oVar, "valueSupplier is null");
        return ci.a.o(new d2(this, oVar));
    }

    public final k<T> onErrorReturnItem(T t10) {
        xh.b.e(t10, "item is null");
        return onErrorReturn(xh.a.l(t10));
    }

    public final k<T> onExceptionResumeNext(p<? extends T> pVar) {
        xh.b.e(pVar, "next is null");
        return ci.a.o(new c2(this, xh.a.l(pVar), true));
    }

    public final k<T> onTerminateDetach() {
        return ci.a.o(new i0(this));
    }

    public final bi.a<T> publish() {
        return e2.f(this);
    }

    public final g<T> reduce(vh.c<T, T, T> cVar) {
        xh.b.e(cVar, "reducer is null");
        return ci.a.n(new k2(this, cVar));
    }

    public final <R> t<R> reduceWith(Callable<R> callable, vh.c<R, ? super T, R> cVar) {
        xh.b.e(callable, "seedSupplier is null");
        xh.b.e(cVar, "reducer is null");
        return ci.a.p(new m2(this, callable, cVar));
    }

    public final k<T> repeat() {
        return repeat(Long.MAX_VALUE);
    }

    public final k<T> repeatUntil(vh.e eVar) {
        xh.b.e(eVar, "stop is null");
        return ci.a.o(new p2(this, eVar));
    }

    public final k<T> repeatWhen(vh.o<? super k<Object>, ? extends p<?>> oVar) {
        xh.b.e(oVar, "handler is null");
        return ci.a.o(new q2(this, oVar));
    }

    public final bi.a<T> replay() {
        return r2.j(this);
    }

    public final k<T> retry() {
        return retry(Long.MAX_VALUE, xh.a.c());
    }

    public final k<T> retryUntil(vh.e eVar) {
        xh.b.e(eVar, "stop is null");
        return retry(Long.MAX_VALUE, xh.a.t(eVar));
    }

    public final k<T> retryWhen(vh.o<? super k<Throwable>, ? extends p<?>> oVar) {
        xh.b.e(oVar, "handler is null");
        return ci.a.o(new u2(this, oVar));
    }

    public final void safeSubscribe(r<? super T> rVar) {
        xh.b.e(rVar, "observer is null");
        if (rVar instanceof io.reactivex.observers.c) {
            subscribe(rVar);
        } else {
            subscribe(new io.reactivex.observers.c(rVar));
        }
    }

    public final k<T> sample(long j10, TimeUnit timeUnit) {
        return sample(j10, timeUnit, di.a.a());
    }

    public final k<T> scan(vh.c<T, T, T> cVar) {
        xh.b.e(cVar, "accumulator is null");
        return ci.a.o(new x2(this, cVar));
    }

    public final <R> k<R> scanWith(Callable<R> callable, vh.c<R, ? super T, R> cVar) {
        xh.b.e(callable, "seedSupplier is null");
        xh.b.e(cVar, "accumulator is null");
        return ci.a.o(new y2(this, callable, cVar));
    }

    public final k<T> serialize() {
        return ci.a.o(new b3(this));
    }

    public final k<T> share() {
        return publish().e();
    }

    public final t<T> single(T t10) {
        xh.b.e(t10, "defaultItem is null");
        return ci.a.p(new d3(this, t10));
    }

    public final g<T> singleElement() {
        return ci.a.n(new c3(this));
    }

    public final t<T> singleOrError() {
        return ci.a.p(new d3(this, null));
    }

    public final k<T> skip(long j10) {
        if (j10 <= 0) {
            return ci.a.o(this);
        }
        return ci.a.o(new e3(this, j10));
    }

    public final k<T> skipLast(int i9) {
        if (i9 >= 0) {
            if (i9 == 0) {
                return ci.a.o(this);
            }
            return ci.a.o(new f3(this, i9));
        }
        throw new IndexOutOfBoundsException("count >= 0 required but it was " + i9);
    }

    public final <U> k<T> skipUntil(p<U> pVar) {
        xh.b.e(pVar, "other is null");
        return ci.a.o(new h3(this, pVar));
    }

    public final k<T> skipWhile(vh.q<? super T> qVar) {
        xh.b.e(qVar, "predicate is null");
        return ci.a.o(new i3(this, qVar));
    }

    public final k<T> sorted() {
        return toList().f().map(xh.a.m(xh.a.n())).flatMapIterable(xh.a.i());
    }

    public final k<T> startWith(Iterable<? extends T> iterable) {
        return concatArray(fromIterable(iterable), this);
    }

    public final k<T> startWithArray(T... tArr) {
        k fromArray = fromArray(tArr);
        if (fromArray == empty()) {
            return ci.a.o(this);
        }
        return concatArray(fromArray, this);
    }

    public final th.b subscribe() {
        return subscribe(xh.a.g(), xh.a.f59915f, xh.a.f59912c, xh.a.g());
    }

    protected abstract void subscribeActual(r<? super T> rVar);

    public final k<T> subscribeOn(s sVar) {
        xh.b.e(sVar, "scheduler is null");
        return ci.a.o(new j3(this, sVar));
    }

    public final <E extends r<? super T>> E subscribeWith(E e10) {
        subscribe(e10);
        return e10;
    }

    public final k<T> switchIfEmpty(p<? extends T> pVar) {
        xh.b.e(pVar, "other is null");
        return ci.a.o(new k3(this, pVar));
    }

    public final <R> k<R> switchMap(vh.o<? super T, ? extends p<? extends R>> oVar) {
        return switchMap(oVar, bufferSize());
    }

    public final io.reactivex.a switchMapCompletable(vh.o<? super T, ? extends c> oVar) {
        xh.b.e(oVar, "mapper is null");
        return ci.a.l(new zh.d(this, oVar, false));
    }

    public final io.reactivex.a switchMapCompletableDelayError(vh.o<? super T, ? extends c> oVar) {
        xh.b.e(oVar, "mapper is null");
        return ci.a.l(new zh.d(this, oVar, true));
    }

    public final <R> k<R> switchMapDelayError(vh.o<? super T, ? extends p<? extends R>> oVar) {
        return switchMapDelayError(oVar, bufferSize());
    }

    public final <R> k<R> switchMapMaybe(vh.o<? super T, ? extends i<? extends R>> oVar) {
        xh.b.e(oVar, "mapper is null");
        return ci.a.o(new zh.e(this, oVar, false));
    }

    public final <R> k<R> switchMapMaybeDelayError(vh.o<? super T, ? extends i<? extends R>> oVar) {
        xh.b.e(oVar, "mapper is null");
        return ci.a.o(new zh.e(this, oVar, true));
    }

    public final <R> k<R> switchMapSingle(vh.o<? super T, ? extends v<? extends R>> oVar) {
        xh.b.e(oVar, "mapper is null");
        return ci.a.o(new zh.f(this, oVar, false));
    }

    public final <R> k<R> switchMapSingleDelayError(vh.o<? super T, ? extends v<? extends R>> oVar) {
        xh.b.e(oVar, "mapper is null");
        return ci.a.o(new zh.f(this, oVar, true));
    }

    public final k<T> take(long j10) {
        if (j10 >= 0) {
            return ci.a.o(new m3(this, j10));
        }
        throw new IllegalArgumentException("count >= 0 required but it was " + j10);
    }

    public final k<T> takeLast(int i9) {
        if (i9 < 0) {
            throw new IndexOutOfBoundsException("count >= 0 required but it was " + i9);
        } else if (i9 == 0) {
            return ci.a.o(new k1(this));
        } else {
            if (i9 == 1) {
                return ci.a.o(new o3(this));
            }
            return ci.a.o(new n3(this, i9));
        }
    }

    public final <U> k<T> takeUntil(p<U> pVar) {
        xh.b.e(pVar, "other is null");
        return ci.a.o(new q3(this, pVar));
    }

    public final k<T> takeWhile(vh.q<? super T> qVar) {
        xh.b.e(qVar, "predicate is null");
        return ci.a.o(new s3(this, qVar));
    }

    public final io.reactivex.observers.e<T> test() {
        io.reactivex.observers.e<T> eVar = new io.reactivex.observers.e<>();
        subscribe(eVar);
        return eVar;
    }

    public final k<T> throttleFirst(long j10, TimeUnit timeUnit) {
        return throttleFirst(j10, timeUnit, di.a.a());
    }

    public final k<T> throttleLast(long j10, TimeUnit timeUnit) {
        return sample(j10, timeUnit);
    }

    public final k<T> throttleLatest(long j10, TimeUnit timeUnit) {
        return throttleLatest(j10, timeUnit, di.a.a(), false);
    }

    public final k<T> throttleWithTimeout(long j10, TimeUnit timeUnit) {
        return debounce(j10, timeUnit);
    }

    public final k<di.b<T>> timeInterval() {
        return timeInterval(TimeUnit.MILLISECONDS, di.a.a());
    }

    public final <V> k<T> timeout(vh.o<? super T, ? extends p<V>> oVar) {
        return timeout0(null, oVar, null);
    }

    public final k<di.b<T>> timestamp() {
        return timestamp(TimeUnit.MILLISECONDS, di.a.a());
    }

    public final <R> R to(vh.o<? super k<T>, R> oVar) {
        try {
            return (R) ((vh.o) xh.b.e(oVar, "converter is null")).apply(this);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            throw io.reactivex.internal.util.f.d(th2);
        }
    }

    public final e<T> toFlowable(BackpressureStrategy backpressureStrategy) {
        io.reactivex.internal.operators.flowable.b bVar = new io.reactivex.internal.operators.flowable.b(this);
        int i9 = a.f52765a[backpressureStrategy.ordinal()];
        if (i9 != 1) {
            if (i9 != 2) {
                if (i9 != 3) {
                    if (i9 != 4) {
                        return bVar.c();
                    }
                    return ci.a.m(new io.reactivex.internal.operators.flowable.g(bVar));
                }
                return bVar;
            }
            return bVar.f();
        }
        return bVar.e();
    }

    public final Future<T> toFuture() {
        return (Future) subscribeWith(new io.reactivex.internal.observers.h());
    }

    public final t<List<T>> toList() {
        return toList(16);
    }

    public final <K> t<Map<K, T>> toMap(vh.o<? super T, ? extends K> oVar) {
        xh.b.e(oVar, "keySelector is null");
        return (t<Map<K, T>>) collect(HashMapSupplier.asCallable(), xh.a.D(oVar));
    }

    public final <K> t<Map<K, Collection<T>>> toMultimap(vh.o<? super T, ? extends K> oVar) {
        return (t<Map<K, Collection<T>>>) toMultimap(oVar, xh.a.i(), HashMapSupplier.asCallable(), ArrayListSupplier.asFunction());
    }

    public final t<List<T>> toSortedList() {
        return toSortedList(xh.a.o());
    }

    public final k<T> unsubscribeOn(s sVar) {
        xh.b.e(sVar, "scheduler is null");
        return ci.a.o(new b4(this, sVar));
    }

    public final k<k<T>> window(long j10) {
        return window(j10, j10, bufferSize());
    }

    public final <U, R> k<R> withLatestFrom(p<? extends U> pVar, vh.c<? super T, ? super U, ? extends R> cVar) {
        xh.b.e(pVar, "other is null");
        xh.b.e(cVar, "combiner is null");
        return ci.a.o(new i4(this, cVar, pVar));
    }

    public final <U, R> k<R> zipWith(Iterable<U> iterable, vh.c<? super T, ? super U, ? extends R> cVar) {
        xh.b.e(iterable, "other is null");
        xh.b.e(cVar, "zipper is null");
        return ci.a.o(new l4(this, iterable, cVar));
    }

    public static <T, R> k<R> combineLatest(Iterable<? extends p<? extends T>> iterable, vh.o<? super Object[], ? extends R> oVar) {
        return combineLatest(iterable, oVar, bufferSize());
    }

    public static <T, R> k<R> combineLatestDelayError(vh.o<? super Object[], ? extends R> oVar, int i9, p<? extends T>... pVarArr) {
        return combineLatestDelayError(pVarArr, oVar, i9);
    }

    public static <T> k<T> concatArrayEager(int i9, int i10, p<? extends T>... pVarArr) {
        return fromArray(pVarArr).concatMapEagerDelayError(xh.a.i(), i9, i10, false);
    }

    public static <T> k<T> concatArrayEagerDelayError(int i9, int i10, p<? extends T>... pVarArr) {
        return fromArray(pVarArr).concatMapEagerDelayError(xh.a.i(), i9, i10, true);
    }

    public static <T> k<T> concatEager(p<? extends p<? extends T>> pVar, int i9, int i10) {
        return wrap(pVar).concatMapEager(xh.a.i(), i9, i10);
    }

    public static k<Long> interval(long j10, long j11, TimeUnit timeUnit, s sVar) {
        xh.b.e(timeUnit, "unit is null");
        xh.b.e(sVar, "scheduler is null");
        return ci.a.o(new n1(Math.max(0L, j10), Math.max(0L, j11), timeUnit, sVar));
    }

    public static k<Long> intervalRange(long j10, long j11, long j12, long j13, TimeUnit timeUnit, s sVar) {
        int i9 = (j11 > 0L ? 1 : (j11 == 0L ? 0 : -1));
        if (i9 < 0) {
            throw new IllegalArgumentException("count >= 0 required but it was " + j11);
        } else if (i9 == 0) {
            return empty().delay(j12, timeUnit, sVar);
        } else {
            long j14 = j10 + (j11 - 1);
            if (j10 > 0 && j14 < 0) {
                throw new IllegalArgumentException("Overflow! start + count is bigger than Long.MAX_VALUE");
            }
            xh.b.e(timeUnit, "unit is null");
            xh.b.e(sVar, "scheduler is null");
            return ci.a.o(new o1(j10, j14, Math.max(0L, j12), Math.max(0L, j13), timeUnit, sVar));
        }
    }

    public static <T> k<T> merge(Iterable<? extends p<? extends T>> iterable) {
        return fromIterable(iterable).flatMap(xh.a.i());
    }

    public static <T> k<T> mergeArray(p<? extends T>... pVarArr) {
        return fromArray(pVarArr).flatMap(xh.a.i(), pVarArr.length);
    }

    public static <T> k<T> mergeArrayDelayError(p<? extends T>... pVarArr) {
        return fromArray(pVarArr).flatMap(xh.a.i(), true, pVarArr.length);
    }

    public static <T> k<T> mergeDelayError(Iterable<? extends p<? extends T>> iterable, int i9, int i10) {
        return fromIterable(iterable).flatMap(xh.a.i(), true, i9, i10);
    }

    public static <T> t<Boolean> sequenceEqual(p<? extends T> pVar, p<? extends T> pVar2, vh.d<? super T, ? super T> dVar) {
        return sequenceEqual(pVar, pVar2, dVar, bufferSize());
    }

    public static <T> k<T> switchOnNextDelayError(p<? extends p<? extends T>> pVar, int i9) {
        xh.b.e(pVar, "sources is null");
        xh.b.f(i9, "prefetch");
        return ci.a.o(new l3(pVar, xh.a.i(), i9, true));
    }

    public static k<Long> timer(long j10, TimeUnit timeUnit, s sVar) {
        xh.b.e(timeUnit, "unit is null");
        xh.b.e(sVar, "scheduler is null");
        return ci.a.o(new y3(Math.max(j10, 0L), timeUnit, sVar));
    }

    public static <T, D> k<T> using(Callable<? extends D> callable, vh.o<? super D, ? extends p<? extends T>> oVar, vh.g<? super D> gVar, boolean z10) {
        xh.b.e(callable, "resourceSupplier is null");
        xh.b.e(oVar, "sourceSupplier is null");
        xh.b.e(gVar, "disposer is null");
        return ci.a.o(new c4(callable, oVar, gVar, z10));
    }

    public final Iterable<T> blockingIterable(int i9) {
        xh.b.f(i9, "bufferSize");
        return new io.reactivex.internal.operators.observable.b(this, i9);
    }

    public final void blockingSubscribe(vh.g<? super T> gVar) {
        io.reactivex.internal.operators.observable.k.c(this, gVar, xh.a.f59915f, xh.a.f59912c);
    }

    public final k<List<T>> buffer(int i9, int i10) {
        return (k<List<T>>) buffer(i9, i10, ArrayListSupplier.asCallable());
    }

    public final <R> k<R> concatMap(vh.o<? super T, ? extends p<? extends R>> oVar, int i9) {
        xh.b.e(oVar, "mapper is null");
        xh.b.f(i9, "prefetch");
        if (this instanceof yh.e) {
            Object call = ((yh.e) this).call();
            if (call == null) {
                return empty();
            }
            return ObservableScalarXMap.a(call, oVar);
        }
        return ci.a.o(new io.reactivex.internal.operators.observable.u(this, oVar, i9, ErrorMode.IMMEDIATE));
    }

    public final io.reactivex.a concatMapCompletable(vh.o<? super T, ? extends c> oVar, int i9) {
        xh.b.e(oVar, "mapper is null");
        xh.b.f(i9, "capacityHint");
        return ci.a.l(new zh.a(this, oVar, ErrorMode.IMMEDIATE, i9));
    }

    public final io.reactivex.a concatMapCompletableDelayError(vh.o<? super T, ? extends c> oVar, boolean z10) {
        return concatMapCompletableDelayError(oVar, z10, 2);
    }

    public final <R> k<R> concatMapDelayError(vh.o<? super T, ? extends p<? extends R>> oVar, int i9, boolean z10) {
        xh.b.e(oVar, "mapper is null");
        xh.b.f(i9, "prefetch");
        if (this instanceof yh.e) {
            Object call = ((yh.e) this).call();
            if (call == null) {
                return empty();
            }
            return ObservableScalarXMap.a(call, oVar);
        }
        return ci.a.o(new io.reactivex.internal.operators.observable.u(this, oVar, i9, z10 ? ErrorMode.END : ErrorMode.BOUNDARY));
    }

    public final <R> k<R> concatMapEager(vh.o<? super T, ? extends p<? extends R>> oVar, int i9, int i10) {
        xh.b.e(oVar, "mapper is null");
        xh.b.f(i9, "maxConcurrency");
        xh.b.f(i10, "prefetch");
        return ci.a.o(new io.reactivex.internal.operators.observable.v(this, oVar, ErrorMode.IMMEDIATE, i9, i10));
    }

    public final <R> k<R> concatMapEagerDelayError(vh.o<? super T, ? extends p<? extends R>> oVar, int i9, int i10, boolean z10) {
        xh.b.e(oVar, "mapper is null");
        xh.b.f(i9, "maxConcurrency");
        xh.b.f(i10, "prefetch");
        return ci.a.o(new io.reactivex.internal.operators.observable.v(this, oVar, z10 ? ErrorMode.END : ErrorMode.BOUNDARY, i9, i10));
    }

    public final <R> k<R> concatMapMaybe(vh.o<? super T, ? extends i<? extends R>> oVar, int i9) {
        xh.b.e(oVar, "mapper is null");
        xh.b.f(i9, "prefetch");
        return ci.a.o(new zh.b(this, oVar, ErrorMode.IMMEDIATE, i9));
    }

    public final <R> k<R> concatMapMaybeDelayError(vh.o<? super T, ? extends i<? extends R>> oVar, boolean z10) {
        return concatMapMaybeDelayError(oVar, z10, 2);
    }

    public final <R> k<R> concatMapSingle(vh.o<? super T, ? extends v<? extends R>> oVar, int i9) {
        xh.b.e(oVar, "mapper is null");
        xh.b.f(i9, "prefetch");
        return ci.a.o(new zh.c(this, oVar, ErrorMode.IMMEDIATE, i9));
    }

    public final <R> k<R> concatMapSingleDelayError(vh.o<? super T, ? extends v<? extends R>> oVar, boolean z10) {
        return concatMapSingleDelayError(oVar, z10, 2);
    }

    public final <R> k<R> dematerialize(vh.o<? super T, j<R>> oVar) {
        xh.b.e(oVar, "selector is null");
        return ci.a.o(new h0(this, oVar));
    }

    public final <K> k<T> distinct(vh.o<? super T, K> oVar) {
        return distinct(oVar, xh.a.f());
    }

    public final <K> k<T> distinctUntilChanged(vh.o<? super T, K> oVar) {
        xh.b.e(oVar, "keySelector is null");
        return ci.a.o(new k0(this, oVar, xh.b.d()));
    }

    public final <R> k<R> flatMap(vh.o<? super T, ? extends p<? extends R>> oVar, boolean z10) {
        return flatMap(oVar, z10, Integer.MAX_VALUE);
    }

    public final io.reactivex.a flatMapCompletable(vh.o<? super T, ? extends c> oVar, boolean z10) {
        xh.b.e(oVar, "mapper is null");
        return ci.a.l(new x0(this, oVar, z10));
    }

    public final <R> k<R> flatMapMaybe(vh.o<? super T, ? extends i<? extends R>> oVar, boolean z10) {
        xh.b.e(oVar, "mapper is null");
        return ci.a.o(new y0(this, oVar, z10));
    }

    public final <R> k<R> flatMapSingle(vh.o<? super T, ? extends v<? extends R>> oVar, boolean z10) {
        xh.b.e(oVar, "mapper is null");
        return ci.a.o(new z0(this, oVar, z10));
    }

    public final th.b forEachWhile(vh.q<? super T> qVar, vh.g<? super Throwable> gVar) {
        return forEachWhile(qVar, gVar, xh.a.f59912c);
    }

    public final <K> k<bi.b<K, T>> groupBy(vh.o<? super T, ? extends K> oVar, boolean z10) {
        return (k<bi.b<K, T>>) groupBy(oVar, xh.a.i(), z10, bufferSize());
    }

    public final k<T> observeOn(s sVar, boolean z10) {
        return observeOn(sVar, z10, bufferSize());
    }

    public final <R> k<R> publish(vh.o<? super k<T>, ? extends p<R>> oVar) {
        xh.b.e(oVar, "selector is null");
        return ci.a.o(new h2(this, oVar));
    }

    public final k<T> repeat(long j10) {
        int i9 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        if (i9 >= 0) {
            if (i9 == 0) {
                return empty();
            }
            return ci.a.o(new o2(this, j10));
        }
        throw new IllegalArgumentException("times >= 0 required but it was " + j10);
    }

    public final <R> k<R> replay(vh.o<? super k<T>, ? extends p<R>> oVar) {
        xh.b.e(oVar, "selector is null");
        return r2.k(m1.g(this), oVar);
    }

    public final k<T> retry(vh.d<? super Integer, ? super Throwable> dVar) {
        xh.b.e(dVar, "predicate is null");
        return ci.a.o(new s2(this, dVar));
    }

    public final k<T> sample(long j10, TimeUnit timeUnit, boolean z10) {
        return sample(j10, timeUnit, di.a.a(), z10);
    }

    public final k<T> sorted(Comparator<? super T> comparator) {
        xh.b.e(comparator, "sortFunction is null");
        return toList().f().map(xh.a.m(comparator)).flatMapIterable(xh.a.i());
    }

    public final k<T> startWith(p<? extends T> pVar) {
        xh.b.e(pVar, "other is null");
        return concatArray(pVar, this);
    }

    public final th.b subscribe(vh.g<? super T> gVar) {
        return subscribe(gVar, xh.a.f59915f, xh.a.f59912c, xh.a.g());
    }

    public final <R> k<R> switchMap(vh.o<? super T, ? extends p<? extends R>> oVar, int i9) {
        xh.b.e(oVar, "mapper is null");
        xh.b.f(i9, "bufferSize");
        if (this instanceof yh.e) {
            Object call = ((yh.e) this).call();
            if (call == null) {
                return empty();
            }
            return ObservableScalarXMap.a(call, oVar);
        }
        return ci.a.o(new l3(this, oVar, i9, false));
    }

    public final <R> k<R> switchMapDelayError(vh.o<? super T, ? extends p<? extends R>> oVar, int i9) {
        xh.b.e(oVar, "mapper is null");
        xh.b.f(i9, "bufferSize");
        if (this instanceof yh.e) {
            Object call = ((yh.e) this).call();
            if (call == null) {
                return empty();
            }
            return ObservableScalarXMap.a(call, oVar);
        }
        return ci.a.o(new l3(this, oVar, i9, true));
    }

    public final k<T> throttleFirst(long j10, TimeUnit timeUnit, s sVar) {
        xh.b.e(timeUnit, "unit is null");
        xh.b.e(sVar, "scheduler is null");
        return ci.a.o(new t3(this, j10, timeUnit, sVar));
    }

    public final k<T> throttleLast(long j10, TimeUnit timeUnit, s sVar) {
        return sample(j10, timeUnit, sVar);
    }

    public final k<T> throttleLatest(long j10, TimeUnit timeUnit, boolean z10) {
        return throttleLatest(j10, timeUnit, di.a.a(), z10);
    }

    public final k<T> throttleWithTimeout(long j10, TimeUnit timeUnit, s sVar) {
        return debounce(j10, timeUnit, sVar);
    }

    public final k<di.b<T>> timeInterval(s sVar) {
        return timeInterval(TimeUnit.MILLISECONDS, sVar);
    }

    public final <V> k<T> timeout(vh.o<? super T, ? extends p<V>> oVar, p<? extends T> pVar) {
        xh.b.e(pVar, "other is null");
        return timeout0(null, oVar, pVar);
    }

    public final k<di.b<T>> timestamp(s sVar) {
        return timestamp(TimeUnit.MILLISECONDS, sVar);
    }

    public final t<List<T>> toList(int i9) {
        xh.b.f(i9, "capacityHint");
        return ci.a.p(new a4(this, i9));
    }

    public final t<List<T>> toSortedList(Comparator<? super T> comparator) {
        xh.b.e(comparator, "comparator is null");
        return (t<List<T>>) toList().d(xh.a.m(comparator));
    }

    public final k<k<T>> window(long j10, long j11) {
        return window(j10, j11, bufferSize());
    }

    public static <T, R> k<R> combineLatest(Iterable<? extends p<? extends T>> iterable, vh.o<? super Object[], ? extends R> oVar, int i9) {
        xh.b.e(iterable, "sources is null");
        xh.b.e(oVar, "combiner is null");
        xh.b.f(i9, "bufferSize");
        return ci.a.o(new io.reactivex.internal.operators.observable.t(null, iterable, oVar, i9 << 1, false));
    }

    public static <T, R> k<R> combineLatestDelayError(p<? extends T>[] pVarArr, vh.o<? super Object[], ? extends R> oVar, int i9) {
        xh.b.f(i9, "bufferSize");
        xh.b.e(oVar, "combiner is null");
        if (pVarArr.length == 0) {
            return empty();
        }
        return ci.a.o(new io.reactivex.internal.operators.observable.t(pVarArr, null, oVar, i9 << 1, true));
    }

    public static <T> k<T> concat(p<? extends p<? extends T>> pVar) {
        return concat(pVar, bufferSize());
    }

    public static <T> k<T> concatDelayError(p<? extends p<? extends T>> pVar) {
        return concatDelayError(pVar, bufferSize(), true);
    }

    public static <T> k<T> concatEager(Iterable<? extends p<? extends T>> iterable) {
        return concatEager(iterable, bufferSize(), bufferSize());
    }

    public static <T> k<T> error(Throwable th2) {
        xh.b.e(th2, "exception is null");
        return error(xh.a.k(th2));
    }

    public static <T> k<T> fromFuture(Future<? extends T> future, long j10, TimeUnit timeUnit) {
        xh.b.e(future, "future is null");
        xh.b.e(timeUnit, "unit is null");
        return ci.a.o(new d1(future, j10, timeUnit));
    }

    public static <T> k<T> just(T t10, T t11) {
        xh.b.e(t10, "item1 is null");
        xh.b.e(t11, "item2 is null");
        return fromArray(t10, t11);
    }

    public static <T> k<T> merge(Iterable<? extends p<? extends T>> iterable, int i9) {
        return fromIterable(iterable).flatMap(xh.a.i(), i9);
    }

    public static <T> k<T> mergeDelayError(Iterable<? extends p<? extends T>> iterable, int i9) {
        return fromIterable(iterable).flatMap(xh.a.i(), true, i9);
    }

    public static <T> t<Boolean> sequenceEqual(p<? extends T> pVar, p<? extends T> pVar2, vh.d<? super T, ? super T> dVar, int i9) {
        xh.b.e(pVar, "source1 is null");
        xh.b.e(pVar2, "source2 is null");
        xh.b.e(dVar, "isEqual is null");
        xh.b.f(i9, "bufferSize");
        return ci.a.p(new a3(pVar, pVar2, dVar, i9));
    }

    public final T blockingSingle(T t10) {
        return single(t10).c();
    }

    public final void blockingSubscribe(vh.g<? super T> gVar, vh.g<? super Throwable> gVar2) {
        io.reactivex.internal.operators.observable.k.c(this, gVar, gVar2, xh.a.f59912c);
    }

    public final <U extends Collection<? super T>> k<U> buffer(int i9, int i10, Callable<U> callable) {
        xh.b.f(i9, AnimatedPasterJsonConfig.CONFIG_COUNT);
        xh.b.f(i10, "skip");
        xh.b.e(callable, "bufferSupplier is null");
        return ci.a.o(new io.reactivex.internal.operators.observable.l(this, i9, i10, callable));
    }

    public final io.reactivex.a concatMapCompletableDelayError(vh.o<? super T, ? extends c> oVar, boolean z10, int i9) {
        xh.b.e(oVar, "mapper is null");
        xh.b.f(i9, "prefetch");
        return ci.a.l(new zh.a(this, oVar, z10 ? ErrorMode.END : ErrorMode.BOUNDARY, i9));
    }

    public final <U> k<U> concatMapIterable(vh.o<? super T, ? extends Iterable<? extends U>> oVar, int i9) {
        xh.b.e(oVar, "mapper is null");
        xh.b.f(i9, "prefetch");
        return (k<U>) concatMap(m1.a(oVar), i9);
    }

    public final <R> k<R> concatMapMaybeDelayError(vh.o<? super T, ? extends i<? extends R>> oVar, boolean z10, int i9) {
        xh.b.e(oVar, "mapper is null");
        xh.b.f(i9, "prefetch");
        return ci.a.o(new zh.b(this, oVar, z10 ? ErrorMode.END : ErrorMode.BOUNDARY, i9));
    }

    public final <R> k<R> concatMapSingleDelayError(vh.o<? super T, ? extends v<? extends R>> oVar, boolean z10, int i9) {
        xh.b.e(oVar, "mapper is null");
        xh.b.f(i9, "prefetch");
        return ci.a.o(new zh.c(this, oVar, z10 ? ErrorMode.END : ErrorMode.BOUNDARY, i9));
    }

    public final k<T> concatWith(v<? extends T> vVar) {
        xh.b.e(vVar, "other is null");
        return ci.a.o(new y(this, vVar));
    }

    public final k<T> debounce(long j10, TimeUnit timeUnit) {
        return debounce(j10, timeUnit, di.a.a());
    }

    public final k<T> delay(long j10, TimeUnit timeUnit) {
        return delay(j10, timeUnit, di.a.a(), false);
    }

    public final k<T> delaySubscription(long j10, TimeUnit timeUnit) {
        return delaySubscription(j10, timeUnit, di.a.a());
    }

    public final <K> k<T> distinct(vh.o<? super T, K> oVar, Callable<? extends Collection<? super K>> callable) {
        xh.b.e(oVar, "keySelector is null");
        xh.b.e(callable, "collectionSupplier is null");
        return ci.a.o(new j0(this, oVar, callable));
    }

    public final t<T> elementAt(long j10, T t10) {
        if (j10 >= 0) {
            xh.b.e(t10, "defaultItem is null");
            return ci.a.p(new r0(this, j10, t10));
        }
        throw new IndexOutOfBoundsException("index >= 0 required but it was " + j10);
    }

    public final <R> k<R> flatMap(vh.o<? super T, ? extends p<? extends R>> oVar, boolean z10, int i9) {
        return flatMap(oVar, z10, i9, bufferSize());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <U, V> k<V> flatMapIterable(vh.o<? super T, ? extends Iterable<? extends U>> oVar, vh.c<? super T, ? super U, ? extends V> cVar) {
        xh.b.e(oVar, "mapper is null");
        xh.b.e(cVar, "resultSelector is null");
        return (k<V>) flatMap(m1.a(oVar), cVar, false, bufferSize(), bufferSize());
    }

    public final th.b forEachWhile(vh.q<? super T> qVar, vh.g<? super Throwable> gVar, vh.a aVar) {
        xh.b.e(qVar, "onNext is null");
        xh.b.e(gVar, "onError is null");
        xh.b.e(aVar, "onComplete is null");
        ForEachWhileObserver forEachWhileObserver = new ForEachWhileObserver(qVar, gVar, aVar);
        subscribe(forEachWhileObserver);
        return forEachWhileObserver;
    }

    public final <K, V> k<bi.b<K, V>> groupBy(vh.o<? super T, ? extends K> oVar, vh.o<? super T, ? extends V> oVar2) {
        return groupBy(oVar, oVar2, false, bufferSize());
    }

    public final k<T> mergeWith(v<? extends T> vVar) {
        xh.b.e(vVar, "other is null");
        return ci.a.o(new z1(this, vVar));
    }

    public final k<T> observeOn(s sVar, boolean z10, int i9) {
        xh.b.e(sVar, "scheduler is null");
        xh.b.f(i9, "bufferSize");
        return ci.a.o(new b2(this, sVar, z10, i9));
    }

    public final k<T> onErrorResumeNext(p<? extends T> pVar) {
        xh.b.e(pVar, "next is null");
        return onErrorResumeNext(xh.a.l(pVar));
    }

    public final <R> t<R> reduce(R r10, vh.c<R, ? super T, R> cVar) {
        xh.b.e(r10, "seed is null");
        xh.b.e(cVar, "reducer is null");
        return ci.a.p(new l2(this, r10, cVar));
    }

    public final k<T> sample(long j10, TimeUnit timeUnit, s sVar) {
        xh.b.e(timeUnit, "unit is null");
        xh.b.e(sVar, "scheduler is null");
        return ci.a.o(new v2(this, j10, timeUnit, sVar, false));
    }

    public final <R> k<R> scan(R r10, vh.c<R, ? super T, R> cVar) {
        xh.b.e(r10, "initialValue is null");
        return scanWith(xh.a.k(r10), cVar);
    }

    public final k<T> skip(long j10, TimeUnit timeUnit) {
        return skipUntil(timer(j10, timeUnit));
    }

    public final th.b subscribe(vh.g<? super T> gVar, vh.g<? super Throwable> gVar2) {
        return subscribe(gVar, gVar2, xh.a.f59912c, xh.a.g());
    }

    public final k<T> take(long j10, TimeUnit timeUnit) {
        return takeUntil(timer(j10, timeUnit));
    }

    public final k<T> takeUntil(vh.q<? super T> qVar) {
        xh.b.e(qVar, "stopPredicate is null");
        return ci.a.o(new r3(this, qVar));
    }

    public final io.reactivex.observers.e<T> test(boolean z10) {
        io.reactivex.observers.e<T> eVar = new io.reactivex.observers.e<>();
        if (z10) {
            eVar.dispose();
        }
        subscribe(eVar);
        return eVar;
    }

    public final k<T> throttleLatest(long j10, TimeUnit timeUnit, s sVar) {
        return throttleLatest(j10, timeUnit, sVar, false);
    }

    public final k<di.b<T>> timeInterval(TimeUnit timeUnit) {
        return timeInterval(timeUnit, di.a.a());
    }

    public final k<di.b<T>> timestamp(TimeUnit timeUnit) {
        return timestamp(timeUnit, di.a.a());
    }

    public final <K, V> t<Map<K, V>> toMap(vh.o<? super T, ? extends K> oVar, vh.o<? super T, ? extends V> oVar2) {
        xh.b.e(oVar, "keySelector is null");
        xh.b.e(oVar2, "valueSelector is null");
        return (t<Map<K, V>>) collect(HashMapSupplier.asCallable(), xh.a.E(oVar, oVar2));
    }

    public final k<k<T>> window(long j10, long j11, int i9) {
        xh.b.g(j10, AnimatedPasterJsonConfig.CONFIG_COUNT);
        xh.b.g(j11, "skip");
        xh.b.f(i9, "bufferSize");
        return ci.a.o(new d4(this, j10, j11, i9));
    }

    public static <T> k<T> concat(p<? extends p<? extends T>> pVar, int i9) {
        xh.b.e(pVar, "sources is null");
        xh.b.f(i9, "prefetch");
        return ci.a.o(new io.reactivex.internal.operators.observable.u(pVar, xh.a.i(), i9, ErrorMode.IMMEDIATE));
    }

    public static <T> k<T> concatDelayError(p<? extends p<? extends T>> pVar, int i9, boolean z10) {
        xh.b.e(pVar, "sources is null");
        xh.b.f(i9, "prefetch is null");
        return ci.a.o(new io.reactivex.internal.operators.observable.u(pVar, xh.a.i(), i9, z10 ? ErrorMode.END : ErrorMode.BOUNDARY));
    }

    public static <T> k<T> concatEager(Iterable<? extends p<? extends T>> iterable, int i9, int i10) {
        return fromIterable(iterable).concatMapEagerDelayError(xh.a.i(), i9, i10, false);
    }

    public static <T> k<T> merge(p<? extends p<? extends T>> pVar) {
        xh.b.e(pVar, "sources is null");
        return ci.a.o(new v0(pVar, xh.a.i(), false, Integer.MAX_VALUE, bufferSize()));
    }

    public static <T> k<T> mergeDelayError(p<? extends p<? extends T>> pVar) {
        xh.b.e(pVar, "sources is null");
        return ci.a.o(new v0(pVar, xh.a.i(), true, Integer.MAX_VALUE, bufferSize()));
    }

    public static <T> k<T> switchOnNext(p<? extends p<? extends T>> pVar) {
        return switchOnNext(pVar, bufferSize());
    }

    private <U, V> k<T> timeout0(p<U> pVar, vh.o<? super T, ? extends p<V>> oVar, p<? extends T> pVar2) {
        xh.b.e(oVar, "itemTimeoutIndicator is null");
        return ci.a.o(new w3(this, pVar, oVar, pVar2));
    }

    public static <T, R> k<R> zip(p<? extends p<? extends T>> pVar, vh.o<? super Object[], ? extends R> oVar) {
        xh.b.e(oVar, "zipper is null");
        xh.b.e(pVar, "sources is null");
        return ci.a.o(new z3(pVar, 16).flatMap(m1.n(oVar)));
    }

    public final void blockingSubscribe(vh.g<? super T> gVar, vh.g<? super Throwable> gVar2, vh.a aVar) {
        io.reactivex.internal.operators.observable.k.c(this, gVar, gVar2, aVar);
    }

    public final k<T> debounce(long j10, TimeUnit timeUnit, s sVar) {
        xh.b.e(timeUnit, "unit is null");
        xh.b.e(sVar, "scheduler is null");
        return ci.a.o(new d0(this, j10, timeUnit, sVar));
    }

    public final k<T> delay(long j10, TimeUnit timeUnit, boolean z10) {
        return delay(j10, timeUnit, di.a.a(), z10);
    }

    public final k<T> delaySubscription(long j10, TimeUnit timeUnit, s sVar) {
        return delaySubscription(timer(j10, timeUnit, sVar));
    }

    public final k<T> distinctUntilChanged(vh.d<? super T, ? super T> dVar) {
        xh.b.e(dVar, "comparer is null");
        return ci.a.o(new k0(this, xh.a.i(), dVar));
    }

    public final <R> k<R> flatMap(vh.o<? super T, ? extends p<? extends R>> oVar, boolean z10, int i9, int i10) {
        xh.b.e(oVar, "mapper is null");
        xh.b.f(i9, "maxConcurrency");
        xh.b.f(i10, "bufferSize");
        if (this instanceof yh.e) {
            Object call = ((yh.e) this).call();
            if (call == null) {
                return empty();
            }
            return ObservableScalarXMap.a(call, oVar);
        }
        return ci.a.o(new v0(this, oVar, z10, i9, i10));
    }

    public final <K, V> k<bi.b<K, V>> groupBy(vh.o<? super T, ? extends K> oVar, vh.o<? super T, ? extends V> oVar2, boolean z10) {
        return groupBy(oVar, oVar2, z10, bufferSize());
    }

    public final <R> k<R> replay(vh.o<? super k<T>, ? extends p<R>> oVar, int i9) {
        xh.b.e(oVar, "selector is null");
        xh.b.f(i9, "bufferSize");
        return r2.k(m1.h(this, i9), oVar);
    }

    public final k<T> retry(long j10) {
        return retry(j10, xh.a.c());
    }

    public final k<T> skip(long j10, TimeUnit timeUnit, s sVar) {
        return skipUntil(timer(j10, timeUnit, sVar));
    }

    public final k<T> skipLast(long j10, TimeUnit timeUnit) {
        return skipLast(j10, timeUnit, di.a.c(), false, bufferSize());
    }

    public final k<T> startWith(T t10) {
        xh.b.e(t10, "item is null");
        return concatArray(just(t10), this);
    }

    public final th.b subscribe(vh.g<? super T> gVar, vh.g<? super Throwable> gVar2, vh.a aVar) {
        return subscribe(gVar, gVar2, aVar, xh.a.g());
    }

    public final k<T> take(long j10, TimeUnit timeUnit, s sVar) {
        return takeUntil(timer(j10, timeUnit, sVar));
    }

    public final k<T> throttleLatest(long j10, TimeUnit timeUnit, s sVar, boolean z10) {
        xh.b.e(timeUnit, "unit is null");
        xh.b.e(sVar, "scheduler is null");
        return ci.a.o(new u3(this, j10, timeUnit, sVar, z10));
    }

    public final k<di.b<T>> timeInterval(TimeUnit timeUnit, s sVar) {
        xh.b.e(timeUnit, "unit is null");
        xh.b.e(sVar, "scheduler is null");
        return ci.a.o(new v3(this, timeUnit, sVar));
    }

    public final k<T> timeout(long j10, TimeUnit timeUnit) {
        return timeout0(j10, timeUnit, null, di.a.a());
    }

    public final k<di.b<T>> timestamp(TimeUnit timeUnit, s sVar) {
        xh.b.e(timeUnit, "unit is null");
        xh.b.e(sVar, "scheduler is null");
        return (k<di.b<T>>) map(xh.a.u(timeUnit, sVar));
    }

    public final <U extends Collection<? super T>> t<U> toList(Callable<U> callable) {
        xh.b.e(callable, "collectionSupplier is null");
        return ci.a.p(new a4(this, callable));
    }

    public final t<List<T>> toSortedList(Comparator<? super T> comparator, int i9) {
        xh.b.e(comparator, "comparator is null");
        return (t<List<T>>) toList(i9).d(xh.a.m(comparator));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T1, T2, R> k<R> withLatestFrom(p<T1> pVar, p<T2> pVar2, vh.h<? super T, ? super T1, ? super T2, R> hVar) {
        xh.b.e(pVar, "o1 is null");
        xh.b.e(pVar2, "o2 is null");
        xh.b.e(hVar, "combiner is null");
        return withLatestFrom(new p[]{pVar, pVar2}, xh.a.w(hVar));
    }

    public final <U, R> k<R> zipWith(p<? extends U> pVar, vh.c<? super T, ? super U, ? extends R> cVar) {
        xh.b.e(pVar, "other is null");
        return zip(this, pVar, cVar);
    }

    public static <T, S> k<T> generate(Callable<S> callable, vh.b<S, d<T>> bVar) {
        xh.b.e(bVar, "generator is null");
        return generate(callable, m1.l(bVar), xh.a.g());
    }

    public static k<Long> interval(long j10, TimeUnit timeUnit) {
        return interval(j10, j10, timeUnit, di.a.a());
    }

    public final T blockingFirst(T t10) {
        io.reactivex.internal.observers.d dVar = new io.reactivex.internal.observers.d();
        subscribe(dVar);
        T a10 = dVar.a();
        return a10 != null ? a10 : t10;
    }

    public final T blockingLast(T t10) {
        io.reactivex.internal.observers.e eVar = new io.reactivex.internal.observers.e();
        subscribe(eVar);
        T a10 = eVar.a();
        return a10 != null ? a10 : t10;
    }

    public final void blockingSubscribe(r<? super T> rVar) {
        io.reactivex.internal.operators.observable.k.b(this, rVar);
    }

    public final k<T> concatWith(i<? extends T> iVar) {
        xh.b.e(iVar, "other is null");
        return ci.a.o(new x(this, iVar));
    }

    public final k<T> delay(long j10, TimeUnit timeUnit, s sVar) {
        return delay(j10, timeUnit, sVar, false);
    }

    public final <K, V> k<bi.b<K, V>> groupBy(vh.o<? super T, ? extends K> oVar, vh.o<? super T, ? extends V> oVar2, boolean z10, int i9) {
        xh.b.e(oVar, "keySelector is null");
        xh.b.e(oVar2, "valueSelector is null");
        xh.b.f(i9, "bufferSize");
        return ci.a.o(new ObservableGroupBy(this, oVar, oVar2, i9, z10));
    }

    public final k<T> mergeWith(i<? extends T> iVar) {
        xh.b.e(iVar, "other is null");
        return ci.a.o(new y1(this, iVar));
    }

    public final k<T> retry(long j10, vh.q<? super Throwable> qVar) {
        if (j10 >= 0) {
            xh.b.e(qVar, "predicate is null");
            return ci.a.o(new t2(this, j10, qVar));
        }
        throw new IllegalArgumentException("times >= 0 required but it was " + j10);
    }

    public final k<T> skipLast(long j10, TimeUnit timeUnit, boolean z10) {
        return skipLast(j10, timeUnit, di.a.c(), z10, bufferSize());
    }

    public final th.b subscribe(vh.g<? super T> gVar, vh.g<? super Throwable> gVar2, vh.a aVar, vh.g<? super th.b> gVar3) {
        xh.b.e(gVar, "onNext is null");
        xh.b.e(gVar2, "onError is null");
        xh.b.e(aVar, "onComplete is null");
        xh.b.e(gVar3, "onSubscribe is null");
        LambdaObserver lambdaObserver = new LambdaObserver(gVar, gVar2, aVar, gVar3);
        subscribe(lambdaObserver);
        return lambdaObserver;
    }

    public final k<T> takeLast(long j10, long j11, TimeUnit timeUnit) {
        return takeLast(j10, j11, timeUnit, di.a.c(), false, bufferSize());
    }

    public final k<T> timeout(long j10, TimeUnit timeUnit, p<? extends T> pVar) {
        xh.b.e(pVar, "other is null");
        return timeout0(j10, timeUnit, pVar, di.a.a());
    }

    public final <K, V> t<Map<K, Collection<V>>> toMultimap(vh.o<? super T, ? extends K> oVar, vh.o<? super T, ? extends V> oVar2) {
        return toMultimap(oVar, oVar2, HashMapSupplier.asCallable(), ArrayListSupplier.asFunction());
    }

    public static <T> k<T> fromFuture(Future<? extends T> future, long j10, TimeUnit timeUnit, s sVar) {
        xh.b.e(sVar, "scheduler is null");
        return fromFuture(future, j10, timeUnit).subscribeOn(sVar);
    }

    public static k<Long> interval(long j10, TimeUnit timeUnit, s sVar) {
        return interval(j10, j10, timeUnit, sVar);
    }

    public static <T> k<T> just(T t10, T t11, T t12) {
        xh.b.e(t10, "item1 is null");
        xh.b.e(t11, "item2 is null");
        xh.b.e(t12, "item3 is null");
        return fromArray(t10, t11, t12);
    }

    public static <T> k<T> merge(p<? extends p<? extends T>> pVar, int i9) {
        xh.b.e(pVar, "sources is null");
        xh.b.f(i9, "maxConcurrency");
        return ci.a.o(new v0(pVar, xh.a.i(), false, i9, bufferSize()));
    }

    public static <T> k<T> mergeDelayError(p<? extends p<? extends T>> pVar, int i9) {
        xh.b.e(pVar, "sources is null");
        xh.b.f(i9, "maxConcurrency");
        return ci.a.o(new v0(pVar, xh.a.i(), true, i9, bufferSize()));
    }

    public final k<T> delay(long j10, TimeUnit timeUnit, s sVar, boolean z10) {
        xh.b.e(timeUnit, "unit is null");
        xh.b.e(sVar, "scheduler is null");
        return ci.a.o(new f0(this, j10, timeUnit, sVar, z10));
    }

    public final k<T> doOnEach(vh.g<? super j<T>> gVar) {
        xh.b.e(gVar, "onNotification is null");
        return doOnEach(xh.a.r(gVar), xh.a.q(gVar), xh.a.p(gVar), xh.a.f59912c);
    }

    public final k<T> sample(long j10, TimeUnit timeUnit, s sVar, boolean z10) {
        xh.b.e(timeUnit, "unit is null");
        xh.b.e(sVar, "scheduler is null");
        return ci.a.o(new v2(this, j10, timeUnit, sVar, z10));
    }

    public final k<T> skipLast(long j10, TimeUnit timeUnit, s sVar) {
        return skipLast(j10, timeUnit, sVar, false, bufferSize());
    }

    public final k<T> takeLast(long j10, long j11, TimeUnit timeUnit, s sVar) {
        return takeLast(j10, j11, timeUnit, sVar, false, bufferSize());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <K, V> t<Map<K, V>> toMap(vh.o<? super T, ? extends K> oVar, vh.o<? super T, ? extends V> oVar2, Callable<? extends Map<K, V>> callable) {
        xh.b.e(oVar, "keySelector is null");
        xh.b.e(oVar2, "valueSelector is null");
        xh.b.e(callable, "mapSupplier is null");
        return (t<Map<K, V>>) collect(callable, xh.a.E(oVar, oVar2));
    }

    public final t<List<T>> toSortedList(int i9) {
        return toSortedList(xh.a.o(), i9);
    }

    public final <U, R> k<R> zipWith(p<? extends U> pVar, vh.c<? super T, ? super U, ? extends R> cVar, boolean z10) {
        return zip(this, pVar, cVar, z10);
    }

    public static <T, R> k<R> combineLatest(p<? extends T>[] pVarArr, vh.o<? super Object[], ? extends R> oVar) {
        return combineLatest(pVarArr, oVar, bufferSize());
    }

    public static <T> k<T> concat(p<? extends T> pVar, p<? extends T> pVar2) {
        xh.b.e(pVar, "source1 is null");
        xh.b.e(pVar2, "source2 is null");
        return concatArray(pVar, pVar2);
    }

    public static <T, S> k<T> generate(Callable<S> callable, vh.b<S, d<T>> bVar, vh.g<? super S> gVar) {
        xh.b.e(bVar, "generator is null");
        return generate(callable, m1.l(bVar), gVar);
    }

    public final <U extends Collection<? super T>> k<U> buffer(int i9, Callable<U> callable) {
        return buffer(i9, i9, callable);
    }

    public final k<T> concatWith(c cVar) {
        xh.b.e(cVar, "other is null");
        return ci.a.o(new w(this, cVar));
    }

    public final k<T> mergeWith(c cVar) {
        xh.b.e(cVar, "other is null");
        return ci.a.o(new x1(this, cVar));
    }

    public final <R> k<R> replay(vh.o<? super k<T>, ? extends p<R>> oVar, int i9, long j10, TimeUnit timeUnit) {
        return replay(oVar, i9, j10, timeUnit, di.a.a());
    }

    public final k<T> skipLast(long j10, TimeUnit timeUnit, s sVar, boolean z10) {
        return skipLast(j10, timeUnit, sVar, z10, bufferSize());
    }

    public final k<T> takeLast(long j10, long j11, TimeUnit timeUnit, s sVar, boolean z10, int i9) {
        xh.b.e(timeUnit, "unit is null");
        xh.b.e(sVar, "scheduler is null");
        xh.b.f(i9, "bufferSize");
        if (j10 >= 0) {
            return ci.a.o(new p3(this, j10, j11, timeUnit, sVar, i9, z10));
        }
        throw new IndexOutOfBoundsException("count >= 0 required but it was " + j10);
    }

    public final k<T> timeout(long j10, TimeUnit timeUnit, s sVar, p<? extends T> pVar) {
        xh.b.e(pVar, "other is null");
        return timeout0(j10, timeUnit, pVar, sVar);
    }

    public final k<k<T>> window(long j10, long j11, TimeUnit timeUnit) {
        return window(j10, j11, timeUnit, di.a.a(), bufferSize());
    }

    public final <U, R> k<R> zipWith(p<? extends U> pVar, vh.c<? super T, ? super U, ? extends R> cVar, boolean z10, int i9) {
        return zip(this, pVar, cVar, z10, i9);
    }

    public static <T, R> k<R> combineLatest(p<? extends T>[] pVarArr, vh.o<? super Object[], ? extends R> oVar, int i9) {
        xh.b.e(pVarArr, "sources is null");
        if (pVarArr.length == 0) {
            return empty();
        }
        xh.b.e(oVar, "combiner is null");
        xh.b.f(i9, "bufferSize");
        return ci.a.o(new io.reactivex.internal.operators.observable.t(pVarArr, null, oVar, i9 << 1, false));
    }

    public static <T, R> k<R> combineLatestDelayError(Iterable<? extends p<? extends T>> iterable, vh.o<? super Object[], ? extends R> oVar) {
        return combineLatestDelayError(iterable, oVar, bufferSize());
    }

    public static <T> t<Boolean> sequenceEqual(p<? extends T> pVar, p<? extends T> pVar2, int i9) {
        return sequenceEqual(pVar, pVar2, xh.b.d(), i9);
    }

    public final k<List<T>> buffer(long j10, long j11, TimeUnit timeUnit) {
        return (k<List<T>>) buffer(j10, j11, timeUnit, di.a.a(), ArrayListSupplier.asCallable());
    }

    public final <R> k<R> replay(vh.o<? super k<T>, ? extends p<R>> oVar, int i9, long j10, TimeUnit timeUnit, s sVar) {
        xh.b.e(oVar, "selector is null");
        xh.b.f(i9, "bufferSize");
        xh.b.e(timeUnit, "unit is null");
        xh.b.e(sVar, "scheduler is null");
        return r2.k(m1.i(this, i9, j10, timeUnit, sVar), oVar);
    }

    public final k<T> retry(vh.q<? super Throwable> qVar) {
        return retry(Long.MAX_VALUE, qVar);
    }

    public final k<T> skipLast(long j10, TimeUnit timeUnit, s sVar, boolean z10, int i9) {
        xh.b.e(timeUnit, "unit is null");
        xh.b.e(sVar, "scheduler is null");
        xh.b.f(i9, "bufferSize");
        return ci.a.o(new g3(this, j10, timeUnit, sVar, i9 << 1, z10));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <K, V> t<Map<K, Collection<V>>> toMultimap(vh.o<? super T, ? extends K> oVar, vh.o<? super T, ? extends V> oVar2, Callable<? extends Map<K, Collection<V>>> callable, vh.o<? super K, ? extends Collection<? super V>> oVar3) {
        xh.b.e(oVar, "keySelector is null");
        xh.b.e(oVar2, "valueSelector is null");
        xh.b.e(callable, "mapSupplier is null");
        xh.b.e(oVar3, "collectionFactory is null");
        return (t<Map<K, Collection<V>>>) collect(callable, xh.a.F(oVar, oVar2, oVar3));
    }

    public final k<k<T>> window(long j10, long j11, TimeUnit timeUnit, s sVar) {
        return window(j10, j11, timeUnit, sVar, bufferSize());
    }

    public static <T, R> k<R> combineLatestDelayError(Iterable<? extends p<? extends T>> iterable, vh.o<? super Object[], ? extends R> oVar, int i9) {
        xh.b.e(iterable, "sources is null");
        xh.b.e(oVar, "combiner is null");
        xh.b.f(i9, "bufferSize");
        return ci.a.o(new io.reactivex.internal.operators.observable.t(null, iterable, oVar, i9 << 1, true));
    }

    public static <T> k<T> fromFuture(Future<? extends T> future, s sVar) {
        xh.b.e(sVar, "scheduler is null");
        return fromFuture(future).subscribeOn(sVar);
    }

    public static <T, S> k<T> generate(Callable<S> callable, vh.c<S, d<T>, S> cVar) {
        return generate(callable, cVar, xh.a.g());
    }

    public static <T> k<T> merge(p<? extends T> pVar, p<? extends T> pVar2) {
        xh.b.e(pVar, "source1 is null");
        xh.b.e(pVar2, "source2 is null");
        return fromArray(pVar, pVar2).flatMap(xh.a.i(), false, 2);
    }

    public static <T> k<T> mergeDelayError(p<? extends T> pVar, p<? extends T> pVar2) {
        xh.b.e(pVar, "source1 is null");
        xh.b.e(pVar2, "source2 is null");
        return fromArray(pVar, pVar2).flatMap(xh.a.i(), true, 2);
    }

    public static <T1, T2, R> k<R> zip(p<? extends T1> pVar, p<? extends T2> pVar2, vh.c<? super T1, ? super T2, ? extends R> cVar) {
        xh.b.e(pVar, "source1 is null");
        xh.b.e(pVar2, "source2 is null");
        return zipArray(xh.a.v(cVar), false, bufferSize(), pVar, pVar2);
    }

    public final k<List<T>> buffer(long j10, long j11, TimeUnit timeUnit, s sVar) {
        return (k<List<T>>) buffer(j10, j11, timeUnit, sVar, ArrayListSupplier.asCallable());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <U, V> k<T> delay(p<U> pVar, vh.o<? super T, ? extends p<V>> oVar) {
        return delaySubscription(pVar).delay(oVar);
    }

    public final <U> k<T> sample(p<U> pVar) {
        xh.b.e(pVar, "sampler is null");
        return ci.a.o(new w2(this, pVar, false));
    }

    public final k<T> timeout(long j10, TimeUnit timeUnit, s sVar) {
        return timeout0(j10, timeUnit, null, sVar);
    }

    public final k<k<T>> window(long j10, long j11, TimeUnit timeUnit, s sVar, int i9) {
        xh.b.g(j10, "timespan");
        xh.b.g(j11, "timeskip");
        xh.b.f(i9, "bufferSize");
        xh.b.e(sVar, "scheduler is null");
        xh.b.e(timeUnit, "unit is null");
        return ci.a.o(new h4(this, j10, j11, timeUnit, sVar, Long.MAX_VALUE, i9, false));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T1, T2, T3, R> k<R> withLatestFrom(p<T1> pVar, p<T2> pVar2, p<T3> pVar3, vh.i<? super T, ? super T1, ? super T2, ? super T3, R> iVar) {
        xh.b.e(pVar, "o1 is null");
        xh.b.e(pVar2, "o2 is null");
        xh.b.e(pVar3, "o3 is null");
        xh.b.e(iVar, "combiner is null");
        return withLatestFrom(new p[]{pVar, pVar2, pVar3}, xh.a.x(iVar));
    }

    public static <T> k<T> concat(p<? extends T> pVar, p<? extends T> pVar2, p<? extends T> pVar3) {
        xh.b.e(pVar, "source1 is null");
        xh.b.e(pVar2, "source2 is null");
        xh.b.e(pVar3, "source3 is null");
        return concatArray(pVar, pVar2, pVar3);
    }

    public static <T, S> k<T> generate(Callable<S> callable, vh.c<S, d<T>, S> cVar, vh.g<? super S> gVar) {
        xh.b.e(callable, "initialState is null");
        xh.b.e(cVar, "generator is null");
        xh.b.e(gVar, "disposeState is null");
        return ci.a.o(new h1(callable, cVar, gVar));
    }

    public static <T> k<T> just(T t10, T t11, T t12, T t13) {
        xh.b.e(t10, "item1 is null");
        xh.b.e(t11, "item2 is null");
        xh.b.e(t12, "item3 is null");
        xh.b.e(t13, "item4 is null");
        return fromArray(t10, t11, t12, t13);
    }

    public final <U extends Collection<? super T>> k<U> buffer(long j10, long j11, TimeUnit timeUnit, s sVar, Callable<U> callable) {
        xh.b.e(timeUnit, "unit is null");
        xh.b.e(sVar, "scheduler is null");
        xh.b.e(callable, "bufferSupplier is null");
        return ci.a.o(new io.reactivex.internal.operators.observable.p(this, j10, j11, timeUnit, sVar, callable, Integer.MAX_VALUE, false));
    }

    public final <U, V> k<T> timeout(p<U> pVar, vh.o<? super T, ? extends p<V>> oVar) {
        xh.b.e(pVar, "firstTimeoutIndicator is null");
        return timeout0(pVar, oVar, null);
    }

    public final k<T> doOnEach(r<? super T> rVar) {
        xh.b.e(rVar, "observer is null");
        return doOnEach(m1.f(rVar), m1.e(rVar), m1.d(rVar), xh.a.f59912c);
    }

    public final <U> k<T> sample(p<U> pVar, boolean z10) {
        xh.b.e(pVar, "sampler is null");
        return ci.a.o(new w2(this, pVar, z10));
    }

    @Override // io.reactivex.p
    public final void subscribe(r<? super T> rVar) {
        xh.b.e(rVar, "observer is null");
        try {
            r<? super T> y10 = ci.a.y(this, rVar);
            xh.b.e(y10, "The RxJavaPlugins.onSubscribe hook returned a null Observer. Please change the handler provided to RxJavaPlugins.setOnObservableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
            subscribeActual(y10);
        } catch (NullPointerException e10) {
            throw e10;
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            ci.a.s(th2);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th2);
            throw nullPointerException;
        }
    }

    public static <T> k<T> merge(p<? extends T> pVar, p<? extends T> pVar2, p<? extends T> pVar3) {
        xh.b.e(pVar, "source1 is null");
        xh.b.e(pVar2, "source2 is null");
        xh.b.e(pVar3, "source3 is null");
        return fromArray(pVar, pVar2, pVar3).flatMap(xh.a.i(), false, 3);
    }

    public static <T> k<T> mergeDelayError(p<? extends T> pVar, p<? extends T> pVar2, p<? extends T> pVar3) {
        xh.b.e(pVar, "source1 is null");
        xh.b.e(pVar2, "source2 is null");
        xh.b.e(pVar3, "source3 is null");
        return fromArray(pVar, pVar2, pVar3).flatMap(xh.a.i(), true, 3);
    }

    public static <T1, T2, R> k<R> zip(p<? extends T1> pVar, p<? extends T2> pVar2, vh.c<? super T1, ? super T2, ? extends R> cVar, boolean z10) {
        xh.b.e(pVar, "source1 is null");
        xh.b.e(pVar2, "source2 is null");
        return zipArray(xh.a.v(cVar), z10, bufferSize(), pVar, pVar2);
    }

    public final <R> k<R> flatMap(vh.o<? super T, ? extends p<? extends R>> oVar, vh.o<? super Throwable, ? extends p<? extends R>> oVar2, Callable<? extends p<? extends R>> callable) {
        xh.b.e(oVar, "onNextMapper is null");
        xh.b.e(oVar2, "onErrorMapper is null");
        xh.b.e(callable, "onCompleteSupplier is null");
        return merge(new v1(this, oVar, oVar2, callable));
    }

    public final k<T> takeLast(long j10, TimeUnit timeUnit) {
        return takeLast(j10, timeUnit, di.a.c(), false, bufferSize());
    }

    public final <U, V> k<T> timeout(p<U> pVar, vh.o<? super T, ? extends p<V>> oVar, p<? extends T> pVar2) {
        xh.b.e(pVar, "firstTimeoutIndicator is null");
        xh.b.e(pVar2, "other is null");
        return timeout0(pVar, oVar, pVar2);
    }

    public final k<T> takeLast(long j10, TimeUnit timeUnit, boolean z10) {
        return takeLast(j10, timeUnit, di.a.c(), z10, bufferSize());
    }

    public final <K, V> t<Map<K, Collection<V>>> toMultimap(vh.o<? super T, ? extends K> oVar, vh.o<? super T, ? extends V> oVar2, Callable<Map<K, Collection<V>>> callable) {
        return toMultimap(oVar, oVar2, callable, ArrayListSupplier.asFunction());
    }

    public static <T1, T2, R> k<R> combineLatest(p<? extends T1> pVar, p<? extends T2> pVar2, vh.c<? super T1, ? super T2, ? extends R> cVar) {
        xh.b.e(pVar, "source1 is null");
        xh.b.e(pVar2, "source2 is null");
        return combineLatest(xh.a.v(cVar), bufferSize(), pVar, pVar2);
    }

    public static <T> k<T> concat(p<? extends T> pVar, p<? extends T> pVar2, p<? extends T> pVar3, p<? extends T> pVar4) {
        xh.b.e(pVar, "source1 is null");
        xh.b.e(pVar2, "source2 is null");
        xh.b.e(pVar3, "source3 is null");
        xh.b.e(pVar4, "source4 is null");
        return concatArray(pVar, pVar2, pVar3, pVar4);
    }

    public final k<List<T>> buffer(long j10, TimeUnit timeUnit) {
        return buffer(j10, timeUnit, di.a.a(), Integer.MAX_VALUE);
    }

    public final <R> k<R> replay(vh.o<? super k<T>, ? extends p<R>> oVar, int i9, s sVar) {
        xh.b.e(oVar, "selector is null");
        xh.b.e(sVar, "scheduler is null");
        xh.b.f(i9, "bufferSize");
        return r2.k(m1.h(this, i9), m1.k(oVar, sVar));
    }

    public final k<T> takeLast(long j10, TimeUnit timeUnit, s sVar) {
        return takeLast(j10, timeUnit, sVar, false, bufferSize());
    }

    public static <T> k<T> just(T t10, T t11, T t12, T t13, T t14) {
        xh.b.e(t10, "item1 is null");
        xh.b.e(t11, "item2 is null");
        xh.b.e(t12, "item3 is null");
        xh.b.e(t13, "item4 is null");
        xh.b.e(t14, "item5 is null");
        return fromArray(t10, t11, t12, t13, t14);
    }

    public static <T1, T2, R> k<R> zip(p<? extends T1> pVar, p<? extends T2> pVar2, vh.c<? super T1, ? super T2, ? extends R> cVar, boolean z10, int i9) {
        xh.b.e(pVar, "source1 is null");
        xh.b.e(pVar2, "source2 is null");
        return zipArray(xh.a.v(cVar), z10, i9, pVar, pVar2);
    }

    public final k<List<T>> buffer(long j10, TimeUnit timeUnit, int i9) {
        return buffer(j10, timeUnit, di.a.a(), i9);
    }

    public final k<T> takeLast(long j10, TimeUnit timeUnit, s sVar, boolean z10) {
        return takeLast(j10, timeUnit, sVar, z10, bufferSize());
    }

    public final k<k<T>> window(long j10, TimeUnit timeUnit) {
        return window(j10, timeUnit, di.a.a(), Long.MAX_VALUE, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T1, T2, T3, T4, R> k<R> withLatestFrom(p<T1> pVar, p<T2> pVar2, p<T3> pVar3, p<T4> pVar4, vh.j<? super T, ? super T1, ? super T2, ? super T3, ? super T4, R> jVar) {
        xh.b.e(pVar, "o1 is null");
        xh.b.e(pVar2, "o2 is null");
        xh.b.e(pVar3, "o3 is null");
        xh.b.e(pVar4, "o4 is null");
        xh.b.e(jVar, "combiner is null");
        return withLatestFrom(new p[]{pVar, pVar2, pVar3, pVar4}, xh.a.y(jVar));
    }

    public static <T> k<T> merge(p<? extends T> pVar, p<? extends T> pVar2, p<? extends T> pVar3, p<? extends T> pVar4) {
        xh.b.e(pVar, "source1 is null");
        xh.b.e(pVar2, "source2 is null");
        xh.b.e(pVar3, "source3 is null");
        xh.b.e(pVar4, "source4 is null");
        return fromArray(pVar, pVar2, pVar3, pVar4).flatMap(xh.a.i(), false, 4);
    }

    public static <T> k<T> mergeDelayError(p<? extends T> pVar, p<? extends T> pVar2, p<? extends T> pVar3, p<? extends T> pVar4) {
        xh.b.e(pVar, "source1 is null");
        xh.b.e(pVar2, "source2 is null");
        xh.b.e(pVar3, "source3 is null");
        xh.b.e(pVar4, "source4 is null");
        return fromArray(pVar, pVar2, pVar3, pVar4).flatMap(xh.a.i(), true, 4);
    }

    public final k<List<T>> buffer(long j10, TimeUnit timeUnit, s sVar, int i9) {
        return (k<List<T>>) buffer(j10, timeUnit, sVar, i9, ArrayListSupplier.asCallable(), false);
    }

    public final <R> k<R> flatMap(vh.o<? super T, ? extends p<? extends R>> oVar, vh.o<Throwable, ? extends p<? extends R>> oVar2, Callable<? extends p<? extends R>> callable, int i9) {
        xh.b.e(oVar, "onNextMapper is null");
        xh.b.e(oVar2, "onErrorMapper is null");
        xh.b.e(callable, "onCompleteSupplier is null");
        return merge(new v1(this, oVar, oVar2, callable), i9);
    }

    public final k<T> takeLast(long j10, TimeUnit timeUnit, s sVar, boolean z10, int i9) {
        return takeLast(Long.MAX_VALUE, j10, timeUnit, sVar, z10, i9);
    }

    public final k<k<T>> window(long j10, TimeUnit timeUnit, long j11) {
        return window(j10, timeUnit, di.a.a(), j11, false);
    }

    public static <T1, T2, T3, R> k<R> combineLatest(p<? extends T1> pVar, p<? extends T2> pVar2, p<? extends T3> pVar3, vh.h<? super T1, ? super T2, ? super T3, ? extends R> hVar) {
        xh.b.e(pVar, "source1 is null");
        xh.b.e(pVar2, "source2 is null");
        xh.b.e(pVar3, "source3 is null");
        return combineLatest(xh.a.w(hVar), bufferSize(), pVar, pVar2, pVar3);
    }

    public final <U extends Collection<? super T>> k<U> buffer(long j10, TimeUnit timeUnit, s sVar, int i9, Callable<U> callable, boolean z10) {
        xh.b.e(timeUnit, "unit is null");
        xh.b.e(sVar, "scheduler is null");
        xh.b.e(callable, "bufferSupplier is null");
        xh.b.f(i9, AnimatedPasterJsonConfig.CONFIG_COUNT);
        return ci.a.o(new io.reactivex.internal.operators.observable.p(this, j10, j10, timeUnit, sVar, callable, i9, z10));
    }

    public final k<k<T>> window(long j10, TimeUnit timeUnit, long j11, boolean z10) {
        return window(j10, timeUnit, di.a.a(), j11, z10);
    }

    public static <T1, T2, T3, R> k<R> zip(p<? extends T1> pVar, p<? extends T2> pVar2, p<? extends T3> pVar3, vh.h<? super T1, ? super T2, ? super T3, ? extends R> hVar) {
        xh.b.e(pVar, "source1 is null");
        xh.b.e(pVar2, "source2 is null");
        xh.b.e(pVar3, "source3 is null");
        return zipArray(xh.a.w(hVar), false, bufferSize(), pVar, pVar2, pVar3);
    }

    public final k<k<T>> window(long j10, TimeUnit timeUnit, s sVar) {
        return window(j10, timeUnit, sVar, Long.MAX_VALUE, false);
    }

    public final k<k<T>> window(long j10, TimeUnit timeUnit, s sVar, long j11) {
        return window(j10, timeUnit, sVar, j11, false);
    }

    public final <R> k<R> flatMap(vh.o<? super T, ? extends p<? extends R>> oVar, int i9) {
        return flatMap((vh.o) oVar, false, i9, bufferSize());
    }

    public final <R> k<R> replay(vh.o<? super k<T>, ? extends p<R>> oVar, long j10, TimeUnit timeUnit) {
        return replay(oVar, j10, timeUnit, di.a.a());
    }

    public final k<k<T>> window(long j10, TimeUnit timeUnit, s sVar, long j11, boolean z10) {
        return window(j10, timeUnit, sVar, j11, z10, bufferSize());
    }

    public static <T1, T2, T3, T4, R> k<R> combineLatest(p<? extends T1> pVar, p<? extends T2> pVar2, p<? extends T3> pVar3, p<? extends T4> pVar4, vh.i<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> iVar) {
        xh.b.e(pVar, "source1 is null");
        xh.b.e(pVar2, "source2 is null");
        xh.b.e(pVar3, "source3 is null");
        xh.b.e(pVar4, "source4 is null");
        return combineLatest(xh.a.x(iVar), bufferSize(), pVar, pVar2, pVar3, pVar4);
    }

    public static <T> k<T> just(T t10, T t11, T t12, T t13, T t14, T t15) {
        xh.b.e(t10, "item1 is null");
        xh.b.e(t11, "item2 is null");
        xh.b.e(t12, "item3 is null");
        xh.b.e(t13, "item4 is null");
        xh.b.e(t14, "item5 is null");
        xh.b.e(t15, "item6 is null");
        return fromArray(t10, t11, t12, t13, t14, t15);
    }

    public final <U, R> k<R> flatMap(vh.o<? super T, ? extends p<? extends U>> oVar, vh.c<? super T, ? super U, ? extends R> cVar) {
        return flatMap(oVar, cVar, false, bufferSize(), bufferSize());
    }

    public final <R> k<R> replay(vh.o<? super k<T>, ? extends p<R>> oVar, long j10, TimeUnit timeUnit, s sVar) {
        xh.b.e(oVar, "selector is null");
        xh.b.e(timeUnit, "unit is null");
        xh.b.e(sVar, "scheduler is null");
        return r2.k(m1.j(this, j10, timeUnit, sVar), oVar);
    }

    public final k<k<T>> window(long j10, TimeUnit timeUnit, s sVar, long j11, boolean z10, int i9) {
        xh.b.f(i9, "bufferSize");
        xh.b.e(sVar, "scheduler is null");
        xh.b.e(timeUnit, "unit is null");
        xh.b.g(j11, AnimatedPasterJsonConfig.CONFIG_COUNT);
        return ci.a.o(new h4(this, j10, j10, timeUnit, sVar, j11, i9, z10));
    }

    public static <T1, T2, T3, T4, R> k<R> zip(p<? extends T1> pVar, p<? extends T2> pVar2, p<? extends T3> pVar3, p<? extends T4> pVar4, vh.i<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> iVar) {
        xh.b.e(pVar, "source1 is null");
        xh.b.e(pVar2, "source2 is null");
        xh.b.e(pVar3, "source3 is null");
        xh.b.e(pVar4, "source4 is null");
        return zipArray(xh.a.x(iVar), false, bufferSize(), pVar, pVar2, pVar3, pVar4);
    }

    public final k<List<T>> buffer(long j10, TimeUnit timeUnit, s sVar) {
        return (k<List<T>>) buffer(j10, timeUnit, sVar, Integer.MAX_VALUE, ArrayListSupplier.asCallable(), false);
    }

    public final <U, R> k<R> flatMap(vh.o<? super T, ? extends p<? extends U>> oVar, vh.c<? super T, ? super U, ? extends R> cVar, boolean z10) {
        return flatMap(oVar, cVar, z10, bufferSize(), bufferSize());
    }

    public final <R> k<R> withLatestFrom(p<?>[] pVarArr, vh.o<? super Object[], R> oVar) {
        xh.b.e(pVarArr, "others is null");
        xh.b.e(oVar, "combiner is null");
        return ci.a.o(new j4(this, pVarArr, oVar));
    }

    public final <TOpening, TClosing> k<List<T>> buffer(p<? extends TOpening> pVar, vh.o<? super TOpening, ? extends p<? extends TClosing>> oVar) {
        return (k<List<T>>) buffer(pVar, oVar, ArrayListSupplier.asCallable());
    }

    public final <U, R> k<R> flatMap(vh.o<? super T, ? extends p<? extends U>> oVar, vh.c<? super T, ? super U, ? extends R> cVar, boolean z10, int i9) {
        return flatMap(oVar, cVar, z10, i9, bufferSize());
    }

    public final <TOpening, TClosing, U extends Collection<? super T>> k<U> buffer(p<? extends TOpening> pVar, vh.o<? super TOpening, ? extends p<? extends TClosing>> oVar, Callable<U> callable) {
        xh.b.e(pVar, "openingIndicator is null");
        xh.b.e(oVar, "closingIndicator is null");
        xh.b.e(callable, "bufferSupplier is null");
        return ci.a.o(new io.reactivex.internal.operators.observable.m(this, pVar, oVar, callable));
    }

    public final <U, R> k<R> flatMap(vh.o<? super T, ? extends p<? extends U>> oVar, vh.c<? super T, ? super U, ? extends R> cVar, boolean z10, int i9, int i10) {
        xh.b.e(oVar, "mapper is null");
        xh.b.e(cVar, "combiner is null");
        return flatMap(m1.b(oVar, cVar), z10, i9, i10);
    }

    public final <R> k<R> replay(vh.o<? super k<T>, ? extends p<R>> oVar, s sVar) {
        xh.b.e(oVar, "selector is null");
        xh.b.e(sVar, "scheduler is null");
        return r2.k(m1.g(this), m1.k(oVar, sVar));
    }

    public final <R> k<R> withLatestFrom(Iterable<? extends p<?>> iterable, vh.o<? super Object[], R> oVar) {
        xh.b.e(iterable, "others is null");
        xh.b.e(oVar, "combiner is null");
        return ci.a.o(new j4(this, iterable, oVar));
    }

    public static <T1, T2, T3, T4, T5, R> k<R> combineLatest(p<? extends T1> pVar, p<? extends T2> pVar2, p<? extends T3> pVar3, p<? extends T4> pVar4, p<? extends T5> pVar5, vh.j<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> jVar) {
        xh.b.e(pVar, "source1 is null");
        xh.b.e(pVar2, "source2 is null");
        xh.b.e(pVar3, "source3 is null");
        xh.b.e(pVar4, "source4 is null");
        xh.b.e(pVar5, "source5 is null");
        return combineLatest(xh.a.y(jVar), bufferSize(), pVar, pVar2, pVar3, pVar4, pVar5);
    }

    public final <B> k<k<T>> window(p<B> pVar) {
        return window(pVar, bufferSize());
    }

    public static <T1, T2, T3, T4, T5, R> k<R> zip(p<? extends T1> pVar, p<? extends T2> pVar2, p<? extends T3> pVar3, p<? extends T4> pVar4, p<? extends T5> pVar5, vh.j<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> jVar) {
        xh.b.e(pVar, "source1 is null");
        xh.b.e(pVar2, "source2 is null");
        xh.b.e(pVar3, "source3 is null");
        xh.b.e(pVar4, "source4 is null");
        xh.b.e(pVar5, "source5 is null");
        return zipArray(xh.a.y(jVar), false, bufferSize(), pVar, pVar2, pVar3, pVar4, pVar5);
    }

    public final <U, R> k<R> flatMap(vh.o<? super T, ? extends p<? extends U>> oVar, vh.c<? super T, ? super U, ? extends R> cVar, int i9) {
        return flatMap(oVar, cVar, false, i9, bufferSize());
    }

    public final <B> k<k<T>> window(p<B> pVar, int i9) {
        xh.b.e(pVar, "boundary is null");
        xh.b.f(i9, "bufferSize");
        return ci.a.o(new e4(this, pVar, i9));
    }

    public static <T> k<T> just(T t10, T t11, T t12, T t13, T t14, T t15, T t16) {
        xh.b.e(t10, "item1 is null");
        xh.b.e(t11, "item2 is null");
        xh.b.e(t12, "item3 is null");
        xh.b.e(t13, "item4 is null");
        xh.b.e(t14, "item5 is null");
        xh.b.e(t15, "item6 is null");
        xh.b.e(t16, "item7 is null");
        return fromArray(t10, t11, t12, t13, t14, t15, t16);
    }

    public final <B> k<List<T>> buffer(p<B> pVar) {
        return (k<List<T>>) buffer(pVar, ArrayListSupplier.asCallable());
    }

    public final <B> k<List<T>> buffer(p<B> pVar, int i9) {
        xh.b.f(i9, "initialCapacity");
        return (k<List<T>>) buffer(pVar, xh.a.e(i9));
    }

    public final bi.a<T> replay(int i9) {
        xh.b.f(i9, "bufferSize");
        return r2.f(this, i9);
    }

    public final <U, V> k<k<T>> window(p<U> pVar, vh.o<? super U, ? extends p<V>> oVar) {
        return window(pVar, oVar, bufferSize());
    }

    public final <B, U extends Collection<? super T>> k<U> buffer(p<B> pVar, Callable<U> callable) {
        xh.b.e(pVar, "boundary is null");
        xh.b.e(callable, "bufferSupplier is null");
        return ci.a.o(new io.reactivex.internal.operators.observable.o(this, pVar, callable));
    }

    public final <U, V> k<k<T>> window(p<U> pVar, vh.o<? super U, ? extends p<V>> oVar, int i9) {
        xh.b.e(pVar, "openingIndicator is null");
        xh.b.e(oVar, "closingIndicator is null");
        xh.b.f(i9, "bufferSize");
        return ci.a.o(new f4(this, pVar, oVar, i9));
    }

    public static <T1, T2, T3, T4, T5, T6, R> k<R> combineLatest(p<? extends T1> pVar, p<? extends T2> pVar2, p<? extends T3> pVar3, p<? extends T4> pVar4, p<? extends T5> pVar5, p<? extends T6> pVar6, vh.k<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> kVar) {
        xh.b.e(pVar, "source1 is null");
        xh.b.e(pVar2, "source2 is null");
        xh.b.e(pVar3, "source3 is null");
        xh.b.e(pVar4, "source4 is null");
        xh.b.e(pVar5, "source5 is null");
        xh.b.e(pVar6, "source6 is null");
        return combineLatest(xh.a.z(kVar), bufferSize(), pVar, pVar2, pVar3, pVar4, pVar5, pVar6);
    }

    public final bi.a<T> replay(int i9, long j10, TimeUnit timeUnit) {
        return replay(i9, j10, timeUnit, di.a.a());
    }

    public static <T1, T2, T3, T4, T5, T6, R> k<R> zip(p<? extends T1> pVar, p<? extends T2> pVar2, p<? extends T3> pVar3, p<? extends T4> pVar4, p<? extends T5> pVar5, p<? extends T6> pVar6, vh.k<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> kVar) {
        xh.b.e(pVar, "source1 is null");
        xh.b.e(pVar2, "source2 is null");
        xh.b.e(pVar3, "source3 is null");
        xh.b.e(pVar4, "source4 is null");
        xh.b.e(pVar5, "source5 is null");
        xh.b.e(pVar6, "source6 is null");
        return zipArray(xh.a.z(kVar), false, bufferSize(), pVar, pVar2, pVar3, pVar4, pVar5, pVar6);
    }

    public final bi.a<T> replay(int i9, long j10, TimeUnit timeUnit, s sVar) {
        xh.b.f(i9, "bufferSize");
        xh.b.e(timeUnit, "unit is null");
        xh.b.e(sVar, "scheduler is null");
        return r2.h(this, j10, timeUnit, sVar, i9);
    }

    public final <B> k<List<T>> buffer(Callable<? extends p<B>> callable) {
        return (k<List<T>>) buffer(callable, ArrayListSupplier.asCallable());
    }

    public final <B, U extends Collection<? super T>> k<U> buffer(Callable<? extends p<B>> callable, Callable<U> callable2) {
        xh.b.e(callable, "boundarySupplier is null");
        xh.b.e(callable2, "bufferSupplier is null");
        return ci.a.o(new io.reactivex.internal.operators.observable.n(this, callable, callable2));
    }

    public final <B> k<k<T>> window(Callable<? extends p<B>> callable) {
        return window(callable, bufferSize());
    }

    public static <T> k<T> just(T t10, T t11, T t12, T t13, T t14, T t15, T t16, T t17) {
        xh.b.e(t10, "item1 is null");
        xh.b.e(t11, "item2 is null");
        xh.b.e(t12, "item3 is null");
        xh.b.e(t13, "item4 is null");
        xh.b.e(t14, "item5 is null");
        xh.b.e(t15, "item6 is null");
        xh.b.e(t16, "item7 is null");
        xh.b.e(t17, "item8 is null");
        return fromArray(t10, t11, t12, t13, t14, t15, t16, t17);
    }

    public final <B> k<k<T>> window(Callable<? extends p<B>> callable, int i9) {
        xh.b.e(callable, "boundary is null");
        xh.b.f(i9, "bufferSize");
        return ci.a.o(new g4(this, callable, i9));
    }

    public final bi.a<T> replay(int i9, s sVar) {
        xh.b.f(i9, "bufferSize");
        return r2.l(replay(i9), sVar);
    }

    public static <T1, T2, T3, T4, T5, T6, T7, R> k<R> combineLatest(p<? extends T1> pVar, p<? extends T2> pVar2, p<? extends T3> pVar3, p<? extends T4> pVar4, p<? extends T5> pVar5, p<? extends T6> pVar6, p<? extends T7> pVar7, vh.l<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> lVar) {
        xh.b.e(pVar, "source1 is null");
        xh.b.e(pVar2, "source2 is null");
        xh.b.e(pVar3, "source3 is null");
        xh.b.e(pVar4, "source4 is null");
        xh.b.e(pVar5, "source5 is null");
        xh.b.e(pVar6, "source6 is null");
        xh.b.e(pVar7, "source7 is null");
        return combineLatest(xh.a.A(lVar), bufferSize(), pVar, pVar2, pVar3, pVar4, pVar5, pVar6, pVar7);
    }

    public final bi.a<T> replay(long j10, TimeUnit timeUnit) {
        return replay(j10, timeUnit, di.a.a());
    }

    public static <T1, T2, T3, T4, T5, T6, T7, R> k<R> zip(p<? extends T1> pVar, p<? extends T2> pVar2, p<? extends T3> pVar3, p<? extends T4> pVar4, p<? extends T5> pVar5, p<? extends T6> pVar6, p<? extends T7> pVar7, vh.l<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> lVar) {
        xh.b.e(pVar, "source1 is null");
        xh.b.e(pVar2, "source2 is null");
        xh.b.e(pVar3, "source3 is null");
        xh.b.e(pVar4, "source4 is null");
        xh.b.e(pVar5, "source5 is null");
        xh.b.e(pVar6, "source6 is null");
        xh.b.e(pVar7, "source7 is null");
        return zipArray(xh.a.A(lVar), false, bufferSize(), pVar, pVar2, pVar3, pVar4, pVar5, pVar6, pVar7);
    }

    public final bi.a<T> replay(long j10, TimeUnit timeUnit, s sVar) {
        xh.b.e(timeUnit, "unit is null");
        xh.b.e(sVar, "scheduler is null");
        return r2.g(this, j10, timeUnit, sVar);
    }

    public final bi.a<T> replay(s sVar) {
        xh.b.e(sVar, "scheduler is null");
        return r2.l(replay(), sVar);
    }

    public static <T> k<T> just(T t10, T t11, T t12, T t13, T t14, T t15, T t16, T t17, T t18) {
        xh.b.e(t10, "item1 is null");
        xh.b.e(t11, "item2 is null");
        xh.b.e(t12, "item3 is null");
        xh.b.e(t13, "item4 is null");
        xh.b.e(t14, "item5 is null");
        xh.b.e(t15, "item6 is null");
        xh.b.e(t16, "item7 is null");
        xh.b.e(t17, "item8 is null");
        xh.b.e(t18, "item9 is null");
        return fromArray(t10, t11, t12, t13, t14, t15, t16, t17, t18);
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> k<R> combineLatest(p<? extends T1> pVar, p<? extends T2> pVar2, p<? extends T3> pVar3, p<? extends T4> pVar4, p<? extends T5> pVar5, p<? extends T6> pVar6, p<? extends T7> pVar7, p<? extends T8> pVar8, vh.m<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> mVar) {
        xh.b.e(pVar, "source1 is null");
        xh.b.e(pVar2, "source2 is null");
        xh.b.e(pVar3, "source3 is null");
        xh.b.e(pVar4, "source4 is null");
        xh.b.e(pVar5, "source5 is null");
        xh.b.e(pVar6, "source6 is null");
        xh.b.e(pVar7, "source7 is null");
        xh.b.e(pVar8, "source8 is null");
        return combineLatest(xh.a.B(mVar), bufferSize(), pVar, pVar2, pVar3, pVar4, pVar5, pVar6, pVar7, pVar8);
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> k<R> zip(p<? extends T1> pVar, p<? extends T2> pVar2, p<? extends T3> pVar3, p<? extends T4> pVar4, p<? extends T5> pVar5, p<? extends T6> pVar6, p<? extends T7> pVar7, p<? extends T8> pVar8, vh.m<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> mVar) {
        xh.b.e(pVar, "source1 is null");
        xh.b.e(pVar2, "source2 is null");
        xh.b.e(pVar3, "source3 is null");
        xh.b.e(pVar4, "source4 is null");
        xh.b.e(pVar5, "source5 is null");
        xh.b.e(pVar6, "source6 is null");
        xh.b.e(pVar7, "source7 is null");
        xh.b.e(pVar8, "source8 is null");
        return zipArray(xh.a.B(mVar), false, bufferSize(), pVar, pVar2, pVar3, pVar4, pVar5, pVar6, pVar7, pVar8);
    }

    public static <T> k<T> just(T t10, T t11, T t12, T t13, T t14, T t15, T t16, T t17, T t18, T t19) {
        xh.b.e(t10, "item1 is null");
        xh.b.e(t11, "item2 is null");
        xh.b.e(t12, "item3 is null");
        xh.b.e(t13, "item4 is null");
        xh.b.e(t14, "item5 is null");
        xh.b.e(t15, "item6 is null");
        xh.b.e(t16, "item7 is null");
        xh.b.e(t17, "item8 is null");
        xh.b.e(t18, "item9 is null");
        xh.b.e(t19, "item10 is null");
        return fromArray(t10, t11, t12, t13, t14, t15, t16, t17, t18, t19);
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> k<R> combineLatest(p<? extends T1> pVar, p<? extends T2> pVar2, p<? extends T3> pVar3, p<? extends T4> pVar4, p<? extends T5> pVar5, p<? extends T6> pVar6, p<? extends T7> pVar7, p<? extends T8> pVar8, p<? extends T9> pVar9, vh.n<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> nVar) {
        xh.b.e(pVar, "source1 is null");
        xh.b.e(pVar2, "source2 is null");
        xh.b.e(pVar3, "source3 is null");
        xh.b.e(pVar4, "source4 is null");
        xh.b.e(pVar5, "source5 is null");
        xh.b.e(pVar6, "source6 is null");
        xh.b.e(pVar7, "source7 is null");
        xh.b.e(pVar8, "source8 is null");
        xh.b.e(pVar9, "source9 is null");
        return combineLatest(xh.a.C(nVar), bufferSize(), pVar, pVar2, pVar3, pVar4, pVar5, pVar6, pVar7, pVar8, pVar9);
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> k<R> zip(p<? extends T1> pVar, p<? extends T2> pVar2, p<? extends T3> pVar3, p<? extends T4> pVar4, p<? extends T5> pVar5, p<? extends T6> pVar6, p<? extends T7> pVar7, p<? extends T8> pVar8, p<? extends T9> pVar9, vh.n<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> nVar) {
        xh.b.e(pVar, "source1 is null");
        xh.b.e(pVar2, "source2 is null");
        xh.b.e(pVar3, "source3 is null");
        xh.b.e(pVar4, "source4 is null");
        xh.b.e(pVar5, "source5 is null");
        xh.b.e(pVar6, "source6 is null");
        xh.b.e(pVar7, "source7 is null");
        xh.b.e(pVar8, "source8 is null");
        xh.b.e(pVar9, "source9 is null");
        return zipArray(xh.a.C(nVar), false, bufferSize(), pVar, pVar2, pVar3, pVar4, pVar5, pVar6, pVar7, pVar8, pVar9);
    }
}
