package io.reactivex.internal.operators.observable;

import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
/* loaded from: classes7.dex */
public final class m1 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class a<T> implements Callable<bi.a<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.k<T> f51998a;

        /* renamed from: b  reason: collision with root package name */
        private final int f51999b;

        a(io.reactivex.k<T> kVar, int i9) {
            this.f51998a = kVar;
            this.f51999b = i9;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public bi.a<T> call() {
            return this.f51998a.replay(this.f51999b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class b<T> implements Callable<bi.a<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.k<T> f52000a;

        /* renamed from: b  reason: collision with root package name */
        private final int f52001b;

        /* renamed from: c  reason: collision with root package name */
        private final long f52002c;

        /* renamed from: d  reason: collision with root package name */
        private final TimeUnit f52003d;

        /* renamed from: e  reason: collision with root package name */
        private final io.reactivex.s f52004e;

        b(io.reactivex.k<T> kVar, int i9, long j10, TimeUnit timeUnit, io.reactivex.s sVar) {
            this.f52000a = kVar;
            this.f52001b = i9;
            this.f52002c = j10;
            this.f52003d = timeUnit;
            this.f52004e = sVar;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public bi.a<T> call() {
            return this.f52000a.replay(this.f52001b, this.f52002c, this.f52003d, this.f52004e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class c<T, U> implements vh.o<T, io.reactivex.p<U>> {

        /* renamed from: a  reason: collision with root package name */
        private final vh.o<? super T, ? extends Iterable<? extends U>> f52005a;

        c(vh.o<? super T, ? extends Iterable<? extends U>> oVar) {
            this.f52005a = oVar;
        }

        @Override // vh.o
        /* renamed from: a */
        public io.reactivex.p<U> apply(T t10) throws Exception {
            return new e1((Iterable) xh.b.e(this.f52005a.apply(t10), "The mapper returned a null Iterable"));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class d<U, R, T> implements vh.o<U, R> {

        /* renamed from: a  reason: collision with root package name */
        private final vh.c<? super T, ? super U, ? extends R> f52006a;

        /* renamed from: b  reason: collision with root package name */
        private final T f52007b;

        d(vh.c<? super T, ? super U, ? extends R> cVar, T t10) {
            this.f52006a = cVar;
            this.f52007b = t10;
        }

        @Override // vh.o
        public R apply(U u10) throws Exception {
            return this.f52006a.apply((T) this.f52007b, u10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class e<T, R, U> implements vh.o<T, io.reactivex.p<R>> {

        /* renamed from: a  reason: collision with root package name */
        private final vh.c<? super T, ? super U, ? extends R> f52008a;

        /* renamed from: b  reason: collision with root package name */
        private final vh.o<? super T, ? extends io.reactivex.p<? extends U>> f52009b;

        e(vh.c<? super T, ? super U, ? extends R> cVar, vh.o<? super T, ? extends io.reactivex.p<? extends U>> oVar) {
            this.f52008a = cVar;
            this.f52009b = oVar;
        }

        @Override // vh.o
        /* renamed from: a */
        public io.reactivex.p<R> apply(T t10) throws Exception {
            return new u1((io.reactivex.p) xh.b.e(this.f52009b.apply(t10), "The mapper returned a null ObservableSource"), new d(this.f52008a, t10));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class f<T, U> implements vh.o<T, io.reactivex.p<T>> {

        /* renamed from: a  reason: collision with root package name */
        final vh.o<? super T, ? extends io.reactivex.p<U>> f52010a;

        f(vh.o<? super T, ? extends io.reactivex.p<U>> oVar) {
            this.f52010a = oVar;
        }

        @Override // vh.o
        /* renamed from: a */
        public io.reactivex.p<T> apply(T t10) throws Exception {
            return new m3((io.reactivex.p) xh.b.e(this.f52010a.apply(t10), "The itemDelay returned a null ObservableSource"), 1L).map(xh.a.l(t10)).defaultIfEmpty(t10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class g<T> implements vh.a {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<T> f52011a;

        g(io.reactivex.r<T> rVar) {
            this.f52011a = rVar;
        }

        @Override // vh.a
        public void run() throws Exception {
            this.f52011a.onComplete();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class h<T> implements vh.g<Throwable> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<T> f52012a;

        h(io.reactivex.r<T> rVar) {
            this.f52012a = rVar;
        }

        @Override // vh.g
        /* renamed from: a */
        public void accept(Throwable th2) throws Exception {
            this.f52012a.onError(th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class i<T> implements vh.g<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<T> f52013a;

        i(io.reactivex.r<T> rVar) {
            this.f52013a = rVar;
        }

        @Override // vh.g
        public void accept(T t10) throws Exception {
            this.f52013a.onNext(t10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class j<T> implements Callable<bi.a<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.k<T> f52014a;

        j(io.reactivex.k<T> kVar) {
            this.f52014a = kVar;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public bi.a<T> call() {
            return this.f52014a.replay();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class k<T, R> implements vh.o<io.reactivex.k<T>, io.reactivex.p<R>> {

        /* renamed from: a  reason: collision with root package name */
        private final vh.o<? super io.reactivex.k<T>, ? extends io.reactivex.p<R>> f52015a;

        /* renamed from: b  reason: collision with root package name */
        private final io.reactivex.s f52016b;

        k(vh.o<? super io.reactivex.k<T>, ? extends io.reactivex.p<R>> oVar, io.reactivex.s sVar) {
            this.f52015a = oVar;
            this.f52016b = sVar;
        }

        @Override // vh.o
        /* renamed from: a */
        public io.reactivex.p<R> apply(io.reactivex.k<T> kVar) throws Exception {
            return io.reactivex.k.wrap((io.reactivex.p) xh.b.e(this.f52015a.apply(kVar), "The selector returned a null ObservableSource")).observeOn(this.f52016b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class l<T, S> implements vh.c<S, io.reactivex.d<T>, S> {

        /* renamed from: a  reason: collision with root package name */
        final vh.b<S, io.reactivex.d<T>> f52017a;

        l(vh.b<S, io.reactivex.d<T>> bVar) {
            this.f52017a = bVar;
        }

        @Override // vh.c
        /* renamed from: a */
        public S apply(S s10, io.reactivex.d<T> dVar) throws Exception {
            this.f52017a.accept(s10, dVar);
            return s10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class m<T, S> implements vh.c<S, io.reactivex.d<T>, S> {

        /* renamed from: a  reason: collision with root package name */
        final vh.g<io.reactivex.d<T>> f52018a;

        m(vh.g<io.reactivex.d<T>> gVar) {
            this.f52018a = gVar;
        }

        @Override // vh.c
        /* renamed from: a */
        public S apply(S s10, io.reactivex.d<T> dVar) throws Exception {
            this.f52018a.accept(dVar);
            return s10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class n<T> implements Callable<bi.a<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.k<T> f52019a;

        /* renamed from: b  reason: collision with root package name */
        private final long f52020b;

        /* renamed from: c  reason: collision with root package name */
        private final TimeUnit f52021c;

        /* renamed from: d  reason: collision with root package name */
        private final io.reactivex.s f52022d;

        n(io.reactivex.k<T> kVar, long j10, TimeUnit timeUnit, io.reactivex.s sVar) {
            this.f52019a = kVar;
            this.f52020b = j10;
            this.f52021c = timeUnit;
            this.f52022d = sVar;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public bi.a<T> call() {
            return this.f52019a.replay(this.f52020b, this.f52021c, this.f52022d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class o<T, R> implements vh.o<List<io.reactivex.p<? extends T>>, io.reactivex.p<? extends R>> {

        /* renamed from: a  reason: collision with root package name */
        private final vh.o<? super Object[], ? extends R> f52023a;

        o(vh.o<? super Object[], ? extends R> oVar) {
            this.f52023a = oVar;
        }

        @Override // vh.o
        /* renamed from: a */
        public io.reactivex.p<? extends R> apply(List<io.reactivex.p<? extends T>> list) {
            return io.reactivex.k.zipIterable(list, this.f52023a, false, io.reactivex.k.bufferSize());
        }
    }

    public static <T, U> vh.o<T, io.reactivex.p<U>> a(vh.o<? super T, ? extends Iterable<? extends U>> oVar) {
        return new c(oVar);
    }

    public static <T, U, R> vh.o<T, io.reactivex.p<R>> b(vh.o<? super T, ? extends io.reactivex.p<? extends U>> oVar, vh.c<? super T, ? super U, ? extends R> cVar) {
        return new e(cVar, oVar);
    }

    public static <T, U> vh.o<T, io.reactivex.p<T>> c(vh.o<? super T, ? extends io.reactivex.p<U>> oVar) {
        return new f(oVar);
    }

    public static <T> vh.a d(io.reactivex.r<T> rVar) {
        return new g(rVar);
    }

    public static <T> vh.g<Throwable> e(io.reactivex.r<T> rVar) {
        return new h(rVar);
    }

    public static <T> vh.g<T> f(io.reactivex.r<T> rVar) {
        return new i(rVar);
    }

    public static <T> Callable<bi.a<T>> g(io.reactivex.k<T> kVar) {
        return new j(kVar);
    }

    public static <T> Callable<bi.a<T>> h(io.reactivex.k<T> kVar, int i9) {
        return new a(kVar, i9);
    }

    public static <T> Callable<bi.a<T>> i(io.reactivex.k<T> kVar, int i9, long j10, TimeUnit timeUnit, io.reactivex.s sVar) {
        return new b(kVar, i9, j10, timeUnit, sVar);
    }

    public static <T> Callable<bi.a<T>> j(io.reactivex.k<T> kVar, long j10, TimeUnit timeUnit, io.reactivex.s sVar) {
        return new n(kVar, j10, timeUnit, sVar);
    }

    public static <T, R> vh.o<io.reactivex.k<T>, io.reactivex.p<R>> k(vh.o<? super io.reactivex.k<T>, ? extends io.reactivex.p<R>> oVar, io.reactivex.s sVar) {
        return new k(oVar, sVar);
    }

    public static <T, S> vh.c<S, io.reactivex.d<T>, S> l(vh.b<S, io.reactivex.d<T>> bVar) {
        return new l(bVar);
    }

    public static <T, S> vh.c<S, io.reactivex.d<T>, S> m(vh.g<io.reactivex.d<T>> gVar) {
        return new m(gVar);
    }

    public static <T, R> vh.o<List<io.reactivex.p<? extends T>>, io.reactivex.p<? extends R>> n(vh.o<? super Object[], ? extends R> oVar) {
        return new o(oVar);
    }
}
