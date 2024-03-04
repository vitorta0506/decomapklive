package com.google.common.cache;

import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Random;
import sun.misc.Unsafe;
/* loaded from: classes2.dex */
abstract class s extends Number {

    /* renamed from: d  reason: collision with root package name */
    static final ThreadLocal<int[]> f12595d = new ThreadLocal<>();

    /* renamed from: e  reason: collision with root package name */
    static final Random f12596e = new Random();

    /* renamed from: f  reason: collision with root package name */
    static final int f12597f = Runtime.getRuntime().availableProcessors();

    /* renamed from: g  reason: collision with root package name */
    private static final Unsafe f12598g;

    /* renamed from: h  reason: collision with root package name */
    private static final long f12599h;

    /* renamed from: i  reason: collision with root package name */
    private static final long f12600i;

    /* renamed from: a  reason: collision with root package name */
    volatile transient b[] f12601a;

    /* renamed from: b  reason: collision with root package name */
    volatile transient long f12602b;

    /* renamed from: c  reason: collision with root package name */
    volatile transient int f12603c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements PrivilegedExceptionAction<Unsafe> {
        a() {
        }

        @Override // java.security.PrivilegedExceptionAction
        /* renamed from: a */
        public Unsafe run() throws Exception {
            Field[] declaredFields;
            for (Field field : Unsafe.class.getDeclaredFields()) {
                field.setAccessible(true);
                Object obj = field.get(null);
                if (Unsafe.class.isInstance(obj)) {
                    return (Unsafe) Unsafe.class.cast(obj);
                }
            }
            throw new NoSuchFieldError("the Unsafe");
        }
    }

    /* loaded from: classes2.dex */
    static final class b {

        /* renamed from: b  reason: collision with root package name */
        private static final Unsafe f12604b;

        /* renamed from: c  reason: collision with root package name */
        private static final long f12605c;

        /* renamed from: a  reason: collision with root package name */
        volatile long f12606a;

        static {
            try {
                Unsafe a10 = s.a();
                f12604b = a10;
                f12605c = a10.objectFieldOffset(b.class.getDeclaredField("a"));
            } catch (Exception e10) {
                throw new Error(e10);
            }
        }

        b(long j10) {
            this.f12606a = j10;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final boolean a(long j10, long j11) {
            return f12604b.compareAndSwapLong(this, f12605c, j10, j11);
        }
    }

    static {
        try {
            Unsafe e10 = e();
            f12598g = e10;
            f12599h = e10.objectFieldOffset(s.class.getDeclaredField("b"));
            f12600i = e10.objectFieldOffset(s.class.getDeclaredField(com.huawei.hms.opendevice.c.f27627a));
        } catch (Exception e11) {
            throw new Error(e11);
        }
    }

    static /* synthetic */ Unsafe a() {
        return e();
    }

    private static Unsafe e() {
        try {
            try {
                return Unsafe.getUnsafe();
            } catch (PrivilegedActionException e10) {
                throw new RuntimeException("Could not initialize intrinsics", e10.getCause());
            }
        } catch (SecurityException unused) {
            return (Unsafe) AccessController.doPrivileged(new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean b(long j10, long j11) {
        return f12598g.compareAndSwapLong(this, f12599h, j10, j11);
    }

    final boolean c() {
        return f12598g.compareAndSwapInt(this, f12600i, 0, 1);
    }

    abstract long d(long j10, long j11);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0023 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x00ee A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f(long r17, int[] r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 239
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.s.f(long, int[], boolean):void");
    }
}
