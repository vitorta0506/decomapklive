package xh;

import io.reactivex.exceptions.OnErrorNotImplementedException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
/* loaded from: classes7.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    static final vh.o<Object, Object> f59910a = new v();

    /* renamed from: b  reason: collision with root package name */
    public static final Runnable f59911b = new q();

    /* renamed from: c  reason: collision with root package name */
    public static final vh.a f59912c = new n();

    /* renamed from: d  reason: collision with root package name */
    static final vh.g<Object> f59913d = new o();

    /* renamed from: e  reason: collision with root package name */
    public static final vh.g<Throwable> f59914e = new s();

    /* renamed from: f  reason: collision with root package name */
    public static final vh.g<Throwable> f59915f = new f0();

    /* renamed from: g  reason: collision with root package name */
    public static final vh.p f59916g = new p();

    /* renamed from: h  reason: collision with root package name */
    static final vh.q<Object> f59917h = new k0();

    /* renamed from: i  reason: collision with root package name */
    static final vh.q<Object> f59918i = new t();

    /* renamed from: j  reason: collision with root package name */
    static final Callable<Object> f59919j = new e0();

    /* renamed from: k  reason: collision with root package name */
    static final Comparator<Object> f59920k = new a0();

    /* renamed from: l  reason: collision with root package name */
    public static final vh.g<il.c> f59921l = new y();

    /* renamed from: xh.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    static final class C0693a<T> implements vh.g<T> {

        /* renamed from: a  reason: collision with root package name */
        final vh.a f59922a;

        C0693a(vh.a aVar) {
            this.f59922a = aVar;
        }

        @Override // vh.g
        public void accept(T t10) throws Exception {
            this.f59922a.run();
        }
    }

    /* loaded from: classes7.dex */
    static final class a0 implements Comparator<Object> {
        a0() {
        }

        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            return ((Comparable) obj).compareTo(obj2);
        }
    }

    /* loaded from: classes7.dex */
    static final class b<T1, T2, R> implements vh.o<Object[], R> {

        /* renamed from: a  reason: collision with root package name */
        final vh.c<? super T1, ? super T2, ? extends R> f59923a;

        b(vh.c<? super T1, ? super T2, ? extends R> cVar) {
            this.f59923a = cVar;
        }

        @Override // vh.o
        /* renamed from: a */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 2) {
                return this.f59923a.apply(objArr[0], objArr[1]);
            }
            throw new IllegalArgumentException("Array of size 2 expected but got " + objArr.length);
        }
    }

    /* loaded from: classes7.dex */
    static final class b0<T> implements vh.a {

        /* renamed from: a  reason: collision with root package name */
        final vh.g<? super io.reactivex.j<T>> f59924a;

        b0(vh.g<? super io.reactivex.j<T>> gVar) {
            this.f59924a = gVar;
        }

        @Override // vh.a
        public void run() throws Exception {
            this.f59924a.accept(io.reactivex.j.a());
        }
    }

    /* loaded from: classes7.dex */
    static final class c<T1, T2, T3, R> implements vh.o<Object[], R> {

        /* renamed from: a  reason: collision with root package name */
        final vh.h<T1, T2, T3, R> f59925a;

        c(vh.h<T1, T2, T3, R> hVar) {
            this.f59925a = hVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // vh.o
        /* renamed from: a */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 3) {
                return (R) this.f59925a.a(objArr[0], objArr[1], objArr[2]);
            }
            throw new IllegalArgumentException("Array of size 3 expected but got " + objArr.length);
        }
    }

    /* loaded from: classes7.dex */
    static final class c0<T> implements vh.g<Throwable> {

        /* renamed from: a  reason: collision with root package name */
        final vh.g<? super io.reactivex.j<T>> f59926a;

        c0(vh.g<? super io.reactivex.j<T>> gVar) {
            this.f59926a = gVar;
        }

        @Override // vh.g
        /* renamed from: a */
        public void accept(Throwable th2) throws Exception {
            this.f59926a.accept(io.reactivex.j.b(th2));
        }
    }

    /* loaded from: classes7.dex */
    static final class d<T1, T2, T3, T4, R> implements vh.o<Object[], R> {

        /* renamed from: a  reason: collision with root package name */
        final vh.i<T1, T2, T3, T4, R> f59927a;

        d(vh.i<T1, T2, T3, T4, R> iVar) {
            this.f59927a = iVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // vh.o
        /* renamed from: a */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 4) {
                return (R) this.f59927a.a(objArr[0], objArr[1], objArr[2], objArr[3]);
            }
            throw new IllegalArgumentException("Array of size 4 expected but got " + objArr.length);
        }
    }

    /* loaded from: classes7.dex */
    static final class d0<T> implements vh.g<T> {

        /* renamed from: a  reason: collision with root package name */
        final vh.g<? super io.reactivex.j<T>> f59928a;

        d0(vh.g<? super io.reactivex.j<T>> gVar) {
            this.f59928a = gVar;
        }

        @Override // vh.g
        public void accept(T t10) throws Exception {
            this.f59928a.accept(io.reactivex.j.c(t10));
        }
    }

    /* loaded from: classes7.dex */
    static final class e<T1, T2, T3, T4, T5, R> implements vh.o<Object[], R> {

        /* renamed from: a  reason: collision with root package name */
        private final vh.j<T1, T2, T3, T4, T5, R> f59929a;

        e(vh.j<T1, T2, T3, T4, T5, R> jVar) {
            this.f59929a = jVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // vh.o
        /* renamed from: a */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 5) {
                return (R) this.f59929a.a(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4]);
            }
            throw new IllegalArgumentException("Array of size 5 expected but got " + objArr.length);
        }
    }

    /* loaded from: classes7.dex */
    static final class e0 implements Callable<Object> {
        e0() {
        }

        @Override // java.util.concurrent.Callable
        public Object call() {
            return null;
        }
    }

    /* loaded from: classes7.dex */
    static final class f<T1, T2, T3, T4, T5, T6, R> implements vh.o<Object[], R> {

        /* renamed from: a  reason: collision with root package name */
        final vh.k<T1, T2, T3, T4, T5, T6, R> f59930a;

        f(vh.k<T1, T2, T3, T4, T5, T6, R> kVar) {
            this.f59930a = kVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // vh.o
        /* renamed from: a */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 6) {
                return (R) this.f59930a.a(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5]);
            }
            throw new IllegalArgumentException("Array of size 6 expected but got " + objArr.length);
        }
    }

    /* loaded from: classes7.dex */
    static final class f0 implements vh.g<Throwable> {
        f0() {
        }

        @Override // vh.g
        /* renamed from: a */
        public void accept(Throwable th2) {
            ci.a.s(new OnErrorNotImplementedException(th2));
        }
    }

    /* loaded from: classes7.dex */
    static final class g<T1, T2, T3, T4, T5, T6, T7, R> implements vh.o<Object[], R> {

        /* renamed from: a  reason: collision with root package name */
        final vh.l<T1, T2, T3, T4, T5, T6, T7, R> f59931a;

        g(vh.l<T1, T2, T3, T4, T5, T6, T7, R> lVar) {
            this.f59931a = lVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // vh.o
        /* renamed from: a */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 7) {
                return (R) this.f59931a.a(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6]);
            }
            throw new IllegalArgumentException("Array of size 7 expected but got " + objArr.length);
        }
    }

    /* loaded from: classes7.dex */
    static final class g0<T> implements vh.o<T, di.b<T>> {

        /* renamed from: a  reason: collision with root package name */
        final TimeUnit f59932a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.s f59933b;

        g0(TimeUnit timeUnit, io.reactivex.s sVar) {
            this.f59932a = timeUnit;
            this.f59933b = sVar;
        }

        @Override // vh.o
        /* renamed from: a */
        public di.b<T> apply(T t10) throws Exception {
            return new di.b<>(t10, this.f59933b.c(this.f59932a), this.f59932a);
        }
    }

    /* loaded from: classes7.dex */
    static final class h<T1, T2, T3, T4, T5, T6, T7, T8, R> implements vh.o<Object[], R> {

        /* renamed from: a  reason: collision with root package name */
        final vh.m<T1, T2, T3, T4, T5, T6, T7, T8, R> f59934a;

        h(vh.m<T1, T2, T3, T4, T5, T6, T7, T8, R> mVar) {
            this.f59934a = mVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // vh.o
        /* renamed from: a */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 8) {
                return (R) this.f59934a.a(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6], objArr[7]);
            }
            throw new IllegalArgumentException("Array of size 8 expected but got " + objArr.length);
        }
    }

    /* loaded from: classes7.dex */
    static final class h0<K, T> implements vh.b<Map<K, T>, T> {

        /* renamed from: a  reason: collision with root package name */
        private final vh.o<? super T, ? extends K> f59935a;

        h0(vh.o<? super T, ? extends K> oVar) {
            this.f59935a = oVar;
        }

        @Override // vh.b
        /* renamed from: a */
        public void accept(Map<K, T> map, T t10) throws Exception {
            map.put(this.f59935a.apply(t10), t10);
        }
    }

    /* loaded from: classes7.dex */
    static final class i<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> implements vh.o<Object[], R> {

        /* renamed from: a  reason: collision with root package name */
        final vh.n<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> f59936a;

        i(vh.n<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> nVar) {
            this.f59936a = nVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // vh.o
        /* renamed from: a */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 9) {
                return (R) this.f59936a.a(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6], objArr[7], objArr[8]);
            }
            throw new IllegalArgumentException("Array of size 9 expected but got " + objArr.length);
        }
    }

    /* loaded from: classes7.dex */
    static final class i0<K, V, T> implements vh.b<Map<K, V>, T> {

        /* renamed from: a  reason: collision with root package name */
        private final vh.o<? super T, ? extends V> f59937a;

        /* renamed from: b  reason: collision with root package name */
        private final vh.o<? super T, ? extends K> f59938b;

        i0(vh.o<? super T, ? extends V> oVar, vh.o<? super T, ? extends K> oVar2) {
            this.f59937a = oVar;
            this.f59938b = oVar2;
        }

        @Override // vh.b
        /* renamed from: a */
        public void accept(Map<K, V> map, T t10) throws Exception {
            map.put(this.f59938b.apply(t10), this.f59937a.apply(t10));
        }
    }

    /* loaded from: classes7.dex */
    static final class j<T> implements Callable<List<T>> {

        /* renamed from: a  reason: collision with root package name */
        final int f59939a;

        j(int i9) {
            this.f59939a = i9;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public List<T> call() throws Exception {
            return new ArrayList(this.f59939a);
        }
    }

    /* loaded from: classes7.dex */
    static final class j0<K, V, T> implements vh.b<Map<K, Collection<V>>, T> {

        /* renamed from: a  reason: collision with root package name */
        private final vh.o<? super K, ? extends Collection<? super V>> f59940a;

        /* renamed from: b  reason: collision with root package name */
        private final vh.o<? super T, ? extends V> f59941b;

        /* renamed from: c  reason: collision with root package name */
        private final vh.o<? super T, ? extends K> f59942c;

        j0(vh.o<? super K, ? extends Collection<? super V>> oVar, vh.o<? super T, ? extends V> oVar2, vh.o<? super T, ? extends K> oVar3) {
            this.f59940a = oVar;
            this.f59941b = oVar2;
            this.f59942c = oVar3;
        }

        @Override // vh.b
        /* renamed from: a */
        public void accept(Map<K, Collection<V>> map, T t10) throws Exception {
            K apply = this.f59942c.apply(t10);
            Collection<? super V> collection = map.get(apply);
            if (collection == null) {
                collection = this.f59940a.apply(apply);
                map.put(apply, collection);
            }
            collection.add(this.f59941b.apply(t10));
        }
    }

    /* loaded from: classes7.dex */
    static final class k<T> implements vh.q<T> {

        /* renamed from: a  reason: collision with root package name */
        final vh.e f59943a;

        k(vh.e eVar) {
            this.f59943a = eVar;
        }

        @Override // vh.q
        public boolean test(T t10) throws Exception {
            return !this.f59943a.a();
        }
    }

    /* loaded from: classes7.dex */
    static final class k0 implements vh.q<Object> {
        k0() {
        }

        @Override // vh.q
        public boolean test(Object obj) {
            return true;
        }
    }

    /* loaded from: classes7.dex */
    static final class l<T, U> implements vh.o<T, U> {

        /* renamed from: a  reason: collision with root package name */
        final Class<U> f59944a;

        l(Class<U> cls) {
            this.f59944a = cls;
        }

        @Override // vh.o
        public U apply(T t10) throws Exception {
            return this.f59944a.cast(t10);
        }
    }

    /* loaded from: classes7.dex */
    static final class m<T, U> implements vh.q<T> {

        /* renamed from: a  reason: collision with root package name */
        final Class<U> f59945a;

        m(Class<U> cls) {
            this.f59945a = cls;
        }

        @Override // vh.q
        public boolean test(T t10) throws Exception {
            return this.f59945a.isInstance(t10);
        }
    }

    /* loaded from: classes7.dex */
    static final class n implements vh.a {
        n() {
        }

        @Override // vh.a
        public void run() {
        }

        public String toString() {
            return "EmptyAction";
        }
    }

    /* loaded from: classes7.dex */
    static final class o implements vh.g<Object> {
        o() {
        }

        @Override // vh.g
        public void accept(Object obj) {
        }

        public String toString() {
            return "EmptyConsumer";
        }
    }

    /* loaded from: classes7.dex */
    static final class p implements vh.p {
        p() {
        }
    }

    /* loaded from: classes7.dex */
    static final class q implements Runnable {
        q() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }

        public String toString() {
            return "EmptyRunnable";
        }
    }

    /* loaded from: classes7.dex */
    static final class r<T> implements vh.q<T> {

        /* renamed from: a  reason: collision with root package name */
        final T f59946a;

        r(T t10) {
            this.f59946a = t10;
        }

        @Override // vh.q
        public boolean test(T t10) throws Exception {
            return xh.b.c(t10, this.f59946a);
        }
    }

    /* loaded from: classes7.dex */
    static final class s implements vh.g<Throwable> {
        s() {
        }

        @Override // vh.g
        /* renamed from: a */
        public void accept(Throwable th2) {
            ci.a.s(th2);
        }
    }

    /* loaded from: classes7.dex */
    static final class t implements vh.q<Object> {
        t() {
        }

        @Override // vh.q
        public boolean test(Object obj) {
            return false;
        }
    }

    /* loaded from: classes7.dex */
    enum u implements Callable<Set<Object>> {
        INSTANCE;

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Set<Object> call() throws Exception {
            return new HashSet();
        }
    }

    /* loaded from: classes7.dex */
    static final class v implements vh.o<Object, Object> {
        v() {
        }

        @Override // vh.o
        public Object apply(Object obj) {
            return obj;
        }

        public String toString() {
            return "IdentityFunction";
        }
    }

    /* loaded from: classes7.dex */
    static final class w<T, U> implements Callable<U>, vh.o<T, U> {

        /* renamed from: a  reason: collision with root package name */
        final U f59949a;

        w(U u10) {
            this.f59949a = u10;
        }

        @Override // vh.o
        public U apply(T t10) throws Exception {
            return this.f59949a;
        }

        @Override // java.util.concurrent.Callable
        public U call() throws Exception {
            return this.f59949a;
        }
    }

    /* loaded from: classes7.dex */
    static final class x<T> implements vh.o<List<T>, List<T>> {

        /* renamed from: a  reason: collision with root package name */
        final Comparator<? super T> f59950a;

        x(Comparator<? super T> comparator) {
            this.f59950a = comparator;
        }

        @Override // vh.o
        /* renamed from: a */
        public List<T> apply(List<T> list) {
            Collections.sort(list, this.f59950a);
            return list;
        }
    }

    /* loaded from: classes7.dex */
    static final class y implements vh.g<il.c> {
        y() {
        }

        @Override // vh.g
        /* renamed from: a */
        public void accept(il.c cVar) throws Exception {
            cVar.request(Long.MAX_VALUE);
        }
    }

    /* loaded from: classes7.dex */
    enum z implements Comparator<Object> {
        INSTANCE;

        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            return ((Comparable) obj).compareTo(obj2);
        }
    }

    public static <T1, T2, T3, T4, T5, T6, T7, R> vh.o<Object[], R> A(vh.l<T1, T2, T3, T4, T5, T6, T7, R> lVar) {
        xh.b.e(lVar, "f is null");
        return new g(lVar);
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> vh.o<Object[], R> B(vh.m<T1, T2, T3, T4, T5, T6, T7, T8, R> mVar) {
        xh.b.e(mVar, "f is null");
        return new h(mVar);
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> vh.o<Object[], R> C(vh.n<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> nVar) {
        xh.b.e(nVar, "f is null");
        return new i(nVar);
    }

    public static <T, K> vh.b<Map<K, T>, T> D(vh.o<? super T, ? extends K> oVar) {
        return new h0(oVar);
    }

    public static <T, K, V> vh.b<Map<K, V>, T> E(vh.o<? super T, ? extends K> oVar, vh.o<? super T, ? extends V> oVar2) {
        return new i0(oVar2, oVar);
    }

    public static <T, K, V> vh.b<Map<K, Collection<V>>, T> F(vh.o<? super T, ? extends K> oVar, vh.o<? super T, ? extends V> oVar2, vh.o<? super K, ? extends Collection<? super V>> oVar3) {
        return new j0(oVar3, oVar2, oVar);
    }

    public static <T> vh.g<T> a(vh.a aVar) {
        return new C0693a(aVar);
    }

    public static <T> vh.q<T> b() {
        return (vh.q<T>) f59918i;
    }

    public static <T> vh.q<T> c() {
        return (vh.q<T>) f59917h;
    }

    public static <T, U> vh.o<T, U> d(Class<U> cls) {
        return new l(cls);
    }

    public static <T> Callable<List<T>> e(int i9) {
        return new j(i9);
    }

    public static <T> Callable<Set<T>> f() {
        return u.INSTANCE;
    }

    public static <T> vh.g<T> g() {
        return (vh.g<T>) f59913d;
    }

    public static <T> vh.q<T> h(T t10) {
        return new r(t10);
    }

    public static <T> vh.o<T, T> i() {
        return (vh.o<T, T>) f59910a;
    }

    public static <T, U> vh.q<T> j(Class<U> cls) {
        return new m(cls);
    }

    public static <T> Callable<T> k(T t10) {
        return new w(t10);
    }

    public static <T, U> vh.o<T, U> l(U u10) {
        return new w(u10);
    }

    public static <T> vh.o<List<T>, List<T>> m(Comparator<? super T> comparator) {
        return new x(comparator);
    }

    public static <T> Comparator<T> n() {
        return z.INSTANCE;
    }

    public static <T> Comparator<T> o() {
        return (Comparator<T>) f59920k;
    }

    public static <T> vh.a p(vh.g<? super io.reactivex.j<T>> gVar) {
        return new b0(gVar);
    }

    public static <T> vh.g<Throwable> q(vh.g<? super io.reactivex.j<T>> gVar) {
        return new c0(gVar);
    }

    public static <T> vh.g<T> r(vh.g<? super io.reactivex.j<T>> gVar) {
        return new d0(gVar);
    }

    public static <T> Callable<T> s() {
        return (Callable<T>) f59919j;
    }

    public static <T> vh.q<T> t(vh.e eVar) {
        return new k(eVar);
    }

    public static <T> vh.o<T, di.b<T>> u(TimeUnit timeUnit, io.reactivex.s sVar) {
        return new g0(timeUnit, sVar);
    }

    public static <T1, T2, R> vh.o<Object[], R> v(vh.c<? super T1, ? super T2, ? extends R> cVar) {
        xh.b.e(cVar, "f is null");
        return new b(cVar);
    }

    public static <T1, T2, T3, R> vh.o<Object[], R> w(vh.h<T1, T2, T3, R> hVar) {
        xh.b.e(hVar, "f is null");
        return new c(hVar);
    }

    public static <T1, T2, T3, T4, R> vh.o<Object[], R> x(vh.i<T1, T2, T3, T4, R> iVar) {
        xh.b.e(iVar, "f is null");
        return new d(iVar);
    }

    public static <T1, T2, T3, T4, T5, R> vh.o<Object[], R> y(vh.j<T1, T2, T3, T4, T5, R> jVar) {
        xh.b.e(jVar, "f is null");
        return new e(jVar);
    }

    public static <T1, T2, T3, T4, T5, T6, R> vh.o<Object[], R> z(vh.k<T1, T2, T3, T4, T5, T6, R> kVar) {
        xh.b.e(kVar, "f is null");
        return new f(kVar);
    }
}
