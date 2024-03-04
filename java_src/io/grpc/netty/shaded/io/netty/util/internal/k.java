package io.grpc.netty.shaded.io.netty.util.internal;

import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.util.Arrays;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes5.dex */
public final class k extends g0 {

    /* renamed from: i  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f45077i;

    /* renamed from: j  reason: collision with root package name */
    private static final ThreadLocal<k> f45078j;

    /* renamed from: k  reason: collision with root package name */
    private static final AtomicInteger f45079k;

    /* renamed from: l  reason: collision with root package name */
    private static final int f45080l;

    /* renamed from: m  reason: collision with root package name */
    private static final int f45081m;

    /* renamed from: n  reason: collision with root package name */
    public static final Object f45082n;

    /* renamed from: a  reason: collision with root package name */
    private Object[] f45083a = i();

    /* renamed from: b  reason: collision with root package name */
    private int f45084b;

    /* renamed from: c  reason: collision with root package name */
    private Map<Class<?>, Boolean> f45085c;

    /* renamed from: d  reason: collision with root package name */
    private ThreadLocalRandom f45086d;

    /* renamed from: e  reason: collision with root package name */
    private Map<Class<?>, f0> f45087e;

    /* renamed from: f  reason: collision with root package name */
    private Map<Class<?>, Map<String, f0>> f45088f;

    /* renamed from: g  reason: collision with root package name */
    private StringBuilder f45089g;

    /* renamed from: h  reason: collision with root package name */
    private Map<Charset, CharsetEncoder> f45090h;

    static {
        io.grpc.netty.shaded.io.netty.util.internal.logging.b b10 = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(k.class);
        f45077i = b10;
        f45078j = new ThreadLocal<>();
        f45079k = new AtomicInteger();
        f45082n = new Object();
        int e10 = c0.e("io.grpc.netty.shaded.io.netty.threadLocalMap.stringBuilder.initialSize", 1024);
        f45080l = e10;
        b10.debug("-Dio.netty.threadLocalMap.stringBuilder.initialSize: {}", Integer.valueOf(e10));
        int e11 = c0.e("io.grpc.netty.shaded.io.netty.threadLocalMap.stringBuilder.maxSize", 4096);
        f45081m = e11;
        b10.debug("-Dio.netty.threadLocalMap.stringBuilder.maxSize: {}", Integer.valueOf(e11));
    }

    private k() {
    }

    private void b(int i9, Object obj) {
        Object[] objArr = this.f45083a;
        int length = objArr.length;
        int i10 = (i9 >>> 1) | i9;
        int i11 = i10 | (i10 >>> 2);
        int i12 = i11 | (i11 >>> 4);
        int i13 = i12 | (i12 >>> 8);
        Object[] copyOf = Arrays.copyOf(objArr, (i13 | (i13 >>> 16)) + 1);
        Arrays.fill(copyOf, length, copyOf.length, f45082n);
        copyOf[i9] = obj;
        this.f45083a = copyOf;
    }

    private static k c(ug.p pVar) {
        k c10 = pVar.c();
        if (c10 == null) {
            k kVar = new k();
            pVar.b(kVar);
            return kVar;
        }
        return c10;
    }

    public static k e() {
        Thread currentThread = Thread.currentThread();
        if (currentThread instanceof ug.p) {
            return c((ug.p) currentThread);
        }
        return p();
    }

    public static k f() {
        Thread currentThread = Thread.currentThread();
        if (currentThread instanceof ug.p) {
            return ((ug.p) currentThread).c();
        }
        return f45078j.get();
    }

    private static Object[] i() {
        Object[] objArr = new Object[32];
        Arrays.fill(objArr, f45082n);
        return objArr;
    }

    public static int j() {
        AtomicInteger atomicInteger = f45079k;
        int andIncrement = atomicInteger.getAndIncrement();
        if (andIncrement >= 0) {
            return andIncrement;
        }
        atomicInteger.decrementAndGet();
        throw new IllegalStateException("too many thread-local indexed variables");
    }

    public static void l() {
        Thread currentThread = Thread.currentThread();
        if (currentThread instanceof ug.p) {
            ((ug.p) currentThread).b(null);
        } else {
            f45078j.remove();
        }
    }

    private static k p() {
        ThreadLocal<k> threadLocal = f45078j;
        k kVar = threadLocal.get();
        if (kVar == null) {
            k kVar2 = new k();
            threadLocal.set(kVar2);
            return kVar2;
        }
        return kVar;
    }

    public Map<Charset, CharsetEncoder> a() {
        Map<Charset, CharsetEncoder> map = this.f45090h;
        if (map == null) {
            IdentityHashMap identityHashMap = new IdentityHashMap();
            this.f45090h = identityHashMap;
            return identityHashMap;
        }
        return map;
    }

    public int d() {
        return this.f45084b;
    }

    public Map<Class<?>, Boolean> g() {
        Map<Class<?>, Boolean> map = this.f45085c;
        if (map == null) {
            WeakHashMap weakHashMap = new WeakHashMap(4);
            this.f45085c = weakHashMap;
            return weakHashMap;
        }
        return map;
    }

    public Object h(int i9) {
        Object[] objArr = this.f45083a;
        return i9 < objArr.length ? objArr[i9] : f45082n;
    }

    public ThreadLocalRandom k() {
        ThreadLocalRandom threadLocalRandom = this.f45086d;
        if (threadLocalRandom == null) {
            ThreadLocalRandom threadLocalRandom2 = new ThreadLocalRandom();
            this.f45086d = threadLocalRandom2;
            return threadLocalRandom2;
        }
        return threadLocalRandom;
    }

    public Object m(int i9) {
        Object[] objArr = this.f45083a;
        if (i9 < objArr.length) {
            Object obj = objArr[i9];
            objArr[i9] = f45082n;
            return obj;
        }
        return f45082n;
    }

    public void n(int i9) {
        this.f45084b = i9;
    }

    public boolean o(int i9, Object obj) {
        Object[] objArr = this.f45083a;
        if (i9 < objArr.length) {
            Object obj2 = objArr[i9];
            objArr[i9] = obj;
            return obj2 == f45082n;
        }
        b(i9, obj);
        return true;
    }

    public StringBuilder q() {
        StringBuilder sb2 = this.f45089g;
        if (sb2 == null) {
            StringBuilder sb3 = new StringBuilder(f45080l);
            this.f45089g = sb3;
            return sb3;
        }
        if (sb2.capacity() > f45081m) {
            sb2.setLength(f45080l);
            sb2.trimToSize();
        }
        sb2.setLength(0);
        return sb2;
    }

    public Map<Class<?>, Map<String, f0>> r() {
        Map<Class<?>, Map<String, f0>> map = this.f45088f;
        if (map == null) {
            IdentityHashMap identityHashMap = new IdentityHashMap();
            this.f45088f = identityHashMap;
            return identityHashMap;
        }
        return map;
    }

    public Map<Class<?>, f0> s() {
        Map<Class<?>, f0> map = this.f45087e;
        if (map == null) {
            IdentityHashMap identityHashMap = new IdentityHashMap();
            this.f45087e = identityHashMap;
            return identityHashMap;
        }
        return map;
    }
}
