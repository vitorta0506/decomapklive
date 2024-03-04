package wg;

import sun.misc.Unsafe;
/* loaded from: classes5.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static final long f59504a;

    /* renamed from: b  reason: collision with root package name */
    public static final int f59505b;

    static {
        Unsafe unsafe = c.f59503c;
        int arrayIndexScale = unsafe.arrayIndexScale(Object[].class);
        if (4 == arrayIndexScale) {
            f59505b = 2;
        } else if (8 == arrayIndexScale) {
            f59505b = 3;
        } else {
            throw new IllegalStateException("Unknown pointer size: " + arrayIndexScale);
        }
        f59504a = unsafe.arrayBaseOffset(Object[].class);
    }

    public static <E> E[] a(int i9) {
        return (E[]) new Object[i9];
    }

    public static long b(long j10, long j11) {
        return f59504a + ((j10 & j11) << f59505b);
    }

    public static long c(long j10) {
        return f59504a + (j10 << f59505b);
    }

    public static <E> E d(E[] eArr, long j10) {
        return (E) c.f59503c.getObjectVolatile(eArr, j10);
    }

    public static <E> void e(E[] eArr, long j10, E e10) {
        c.f59503c.putOrderedObject(eArr, j10, e10);
    }

    public static <E> void f(E[] eArr, long j10, E e10) {
        c.f59503c.putObject(eArr, j10, e10);
    }
}
