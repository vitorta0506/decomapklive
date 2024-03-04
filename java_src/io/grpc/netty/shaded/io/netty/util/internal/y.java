package io.grpc.netty.shaded.io.netty.util.internal;

import io.grpc.netty.shaded.io.netty.util.IllegalReferenceCountException;
import io.grpc.netty.shaded.io.netty.util.s;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
/* loaded from: classes5.dex */
public abstract class y<T extends io.grpc.netty.shaded.io.netty.util.s> {
    public static long a(Class<? extends io.grpc.netty.shaded.io.netty.util.s> cls, String str) {
        try {
            if (t.T()) {
                return t.C0(cls.getDeclaredField(str));
            }
            return -1L;
        } catch (Throwable unused) {
            return -1L;
        }
    }

    private boolean d(T t10, int i9, int i10, int i11) {
        if (i9 >= i11 || !s().compareAndSet(t10, i10, i10 - (i9 << 1))) {
            return n(t10, i9);
        }
        return false;
    }

    private int e(T t10) {
        long r10 = r();
        return r10 != -1 ? t.F(t10, r10) : s().get(t10);
    }

    private static int f(int i9) {
        if (i9 == 2 || i9 == 4 || (i9 & 1) == 0) {
            return i9 >>> 1;
        }
        return 0;
    }

    private T m(T t10, int i9, int i10) {
        int andAdd = s().getAndAdd(t10, i10);
        if (andAdd == 2 || andAdd == 4 || (andAdd & 1) == 0) {
            if ((andAdd > 0 || andAdd + i10 < 0) && (andAdd < 0 || andAdd + i10 >= andAdd)) {
                return t10;
            }
            s().getAndAdd(t10, -i10);
            throw new IllegalReferenceCountException(f(andAdd), i9);
        }
        throw new IllegalReferenceCountException(0, i9);
    }

    private boolean n(T t10, int i9) {
        while (true) {
            int i10 = s().get(t10);
            int p10 = p(i10, i9);
            if (i9 == p10) {
                if (q(t10, i10)) {
                    return true;
                }
            } else if (i9 < p10) {
                if (s().compareAndSet(t10, i10, i10 - (i9 << 1))) {
                    return false;
                }
            } else {
                throw new IllegalReferenceCountException(p10, -i9);
            }
            Thread.yield();
        }
    }

    private static int p(int i9, int i10) {
        if (i9 == 2 || i9 == 4 || (i9 & 1) == 0) {
            return i9 >>> 1;
        }
        throw new IllegalReferenceCountException(0, -i10);
    }

    private boolean q(T t10, int i9) {
        return s().compareAndSet(t10, i9, 1);
    }

    public final int b() {
        return 2;
    }

    public final boolean c(T t10) {
        long r10 = r();
        int F = r10 != -1 ? t.F(t10, r10) : s().get(t10);
        return F == 2 || F == 4 || F == 6 || F == 8 || (F & 1) == 0;
    }

    public final int g(T t10) {
        return f(s().get(t10));
    }

    public final boolean h(T t10) {
        int e10 = e(t10);
        if (e10 == 2) {
            return q(t10, 2) || n(t10, 1);
        }
        return d(t10, 1, e10, p(e10, 1));
    }

    public final boolean i(T t10, int i9) {
        int e10 = e(t10);
        int p10 = p(e10, s.l(i9, "decrement"));
        if (i9 == p10) {
            return q(t10, e10) || n(t10, i9);
        }
        return d(t10, i9, e10, p10);
    }

    public final void j(T t10) {
        s().set(t10, b());
    }

    public final T k(T t10) {
        return m(t10, 1, 2);
    }

    public final T l(T t10, int i9) {
        return m(t10, i9, s.l(i9, "increment") << 1);
    }

    public final void o(T t10, int i9) {
        s().set(t10, i9 > 0 ? i9 << 1 : 1);
    }

    protected abstract long r();

    protected abstract AtomicIntegerFieldUpdater<T> s();
}
