package io.reactivex.internal.queue;

import io.reactivex.internal.util.j;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;
import yh.f;
/* loaded from: classes7.dex */
public final class b<T> implements f<T> {

    /* renamed from: i  reason: collision with root package name */
    static final int f52670i = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096).intValue();

    /* renamed from: j  reason: collision with root package name */
    private static final Object f52671j = new Object();

    /* renamed from: b  reason: collision with root package name */
    int f52673b;

    /* renamed from: c  reason: collision with root package name */
    long f52674c;

    /* renamed from: d  reason: collision with root package name */
    final int f52675d;

    /* renamed from: e  reason: collision with root package name */
    AtomicReferenceArray<Object> f52676e;

    /* renamed from: f  reason: collision with root package name */
    final int f52677f;

    /* renamed from: g  reason: collision with root package name */
    AtomicReferenceArray<Object> f52678g;

    /* renamed from: a  reason: collision with root package name */
    final AtomicLong f52672a = new AtomicLong();

    /* renamed from: h  reason: collision with root package name */
    final AtomicLong f52679h = new AtomicLong();

    public b(int i9) {
        int a10 = j.a(Math.max(8, i9));
        int i10 = a10 - 1;
        AtomicReferenceArray<Object> atomicReferenceArray = new AtomicReferenceArray<>(a10 + 1);
        this.f52676e = atomicReferenceArray;
        this.f52675d = i10;
        a(a10);
        this.f52678g = atomicReferenceArray;
        this.f52677f = i10;
        this.f52674c = i10 - 1;
        s(0L);
    }

    private void a(int i9) {
        this.f52673b = Math.min(i9 / 4, f52670i);
    }

    private static int b(int i9) {
        return i9;
    }

    private static int c(long j10, int i9) {
        return b(((int) j10) & i9);
    }

    private long d() {
        return this.f52679h.get();
    }

    private long e() {
        return this.f52672a.get();
    }

    private long f() {
        return this.f52679h.get();
    }

    private static <E> Object g(AtomicReferenceArray<Object> atomicReferenceArray, int i9) {
        return atomicReferenceArray.get(i9);
    }

    private AtomicReferenceArray<Object> h(AtomicReferenceArray<Object> atomicReferenceArray, int i9) {
        int b10 = b(i9);
        AtomicReferenceArray<Object> atomicReferenceArray2 = (AtomicReferenceArray) g(atomicReferenceArray, b10);
        q(atomicReferenceArray, b10, null);
        return atomicReferenceArray2;
    }

    private long i() {
        return this.f52672a.get();
    }

    private T j(AtomicReferenceArray<Object> atomicReferenceArray, long j10, int i9) {
        this.f52678g = atomicReferenceArray;
        return (T) g(atomicReferenceArray, c(j10, i9));
    }

    private T k(AtomicReferenceArray<Object> atomicReferenceArray, long j10, int i9) {
        this.f52678g = atomicReferenceArray;
        int c10 = c(j10, i9);
        T t10 = (T) g(atomicReferenceArray, c10);
        if (t10 != null) {
            q(atomicReferenceArray, c10, null);
            p(j10 + 1);
        }
        return t10;
    }

    private void n(AtomicReferenceArray<Object> atomicReferenceArray, long j10, int i9, T t10, long j11) {
        AtomicReferenceArray<Object> atomicReferenceArray2 = new AtomicReferenceArray<>(atomicReferenceArray.length());
        this.f52676e = atomicReferenceArray2;
        this.f52674c = (j11 + j10) - 1;
        q(atomicReferenceArray2, i9, t10);
        r(atomicReferenceArray, atomicReferenceArray2);
        q(atomicReferenceArray, i9, f52671j);
        s(j10 + 1);
    }

    private void p(long j10) {
        this.f52679h.lazySet(j10);
    }

    private static void q(AtomicReferenceArray<Object> atomicReferenceArray, int i9, Object obj) {
        atomicReferenceArray.lazySet(i9, obj);
    }

    private void r(AtomicReferenceArray<Object> atomicReferenceArray, AtomicReferenceArray<Object> atomicReferenceArray2) {
        q(atomicReferenceArray, b(atomicReferenceArray.length() - 1), atomicReferenceArray2);
    }

    private void s(long j10) {
        this.f52672a.lazySet(j10);
    }

    private boolean t(AtomicReferenceArray<Object> atomicReferenceArray, T t10, long j10, int i9) {
        q(atomicReferenceArray, i9, t10);
        s(j10 + 1);
        return true;
    }

    @Override // yh.g
    public void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    @Override // yh.g
    public boolean isEmpty() {
        return i() == f();
    }

    public boolean l(T t10, T t11) {
        AtomicReferenceArray<Object> atomicReferenceArray = this.f52676e;
        long i9 = i();
        int i10 = this.f52675d;
        long j10 = 2 + i9;
        if (g(atomicReferenceArray, c(j10, i10)) == null) {
            int c10 = c(i9, i10);
            q(atomicReferenceArray, c10 + 1, t11);
            q(atomicReferenceArray, c10, t10);
            s(j10);
            return true;
        }
        AtomicReferenceArray<Object> atomicReferenceArray2 = new AtomicReferenceArray<>(atomicReferenceArray.length());
        this.f52676e = atomicReferenceArray2;
        int c11 = c(i9, i10);
        q(atomicReferenceArray2, c11 + 1, t11);
        q(atomicReferenceArray2, c11, t10);
        r(atomicReferenceArray, atomicReferenceArray2);
        q(atomicReferenceArray, c11, f52671j);
        s(j10);
        return true;
    }

    public T m() {
        AtomicReferenceArray<Object> atomicReferenceArray = this.f52678g;
        long d10 = d();
        int i9 = this.f52677f;
        T t10 = (T) g(atomicReferenceArray, c(d10, i9));
        return t10 == f52671j ? j(h(atomicReferenceArray, i9 + 1), d10, i9) : t10;
    }

    public int o() {
        long f10 = f();
        while (true) {
            long i9 = i();
            long f11 = f();
            if (f10 == f11) {
                return (int) (i9 - f11);
            }
            f10 = f11;
        }
    }

    @Override // yh.g
    public boolean offer(T t10) {
        Objects.requireNonNull(t10, "Null is not a valid element");
        AtomicReferenceArray<Object> atomicReferenceArray = this.f52676e;
        long e10 = e();
        int i9 = this.f52675d;
        int c10 = c(e10, i9);
        if (e10 < this.f52674c) {
            return t(atomicReferenceArray, t10, e10, c10);
        }
        long j10 = this.f52673b + e10;
        if (g(atomicReferenceArray, c(j10, i9)) == null) {
            this.f52674c = j10 - 1;
            return t(atomicReferenceArray, t10, e10, c10);
        } else if (g(atomicReferenceArray, c(1 + e10, i9)) == null) {
            return t(atomicReferenceArray, t10, e10, c10);
        } else {
            n(atomicReferenceArray, e10, c10, t10, i9);
            return true;
        }
    }

    @Override // yh.f, yh.g
    public T poll() {
        AtomicReferenceArray<Object> atomicReferenceArray = this.f52678g;
        long d10 = d();
        int i9 = this.f52677f;
        int c10 = c(d10, i9);
        T t10 = (T) g(atomicReferenceArray, c10);
        boolean z10 = t10 == f52671j;
        if (t10 == null || z10) {
            if (z10) {
                return k(h(atomicReferenceArray, i9 + 1), d10, i9);
            }
            return null;
        }
        q(atomicReferenceArray, c10, null);
        p(d10 + 1);
        return t10;
    }
}
