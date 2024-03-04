package com.google.common.hash;

import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Random;
import sun.misc.Unsafe;
/* loaded from: classes2.dex */
abstract class r extends Number {

    /* renamed from: d  reason: collision with root package name */
    static final ThreadLocal<int[]> f13541d = new ThreadLocal<>();

    /* renamed from: e  reason: collision with root package name */
    static final Random f13542e = new Random();

    /* renamed from: f  reason: collision with root package name */
    static final int f13543f = Runtime.getRuntime().availableProcessors();

    /* renamed from: g  reason: collision with root package name */
    private static final Unsafe f13544g;

    /* renamed from: h  reason: collision with root package name */
    private static final long f13545h;

    /* renamed from: i  reason: collision with root package name */
    private static final long f13546i;

    /* renamed from: a  reason: collision with root package name */
    volatile transient b[] f13547a;

    /* renamed from: b  reason: collision with root package name */
    volatile transient long f13548b;

    /* renamed from: c  reason: collision with root package name */
    volatile transient int f13549c;

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
        private static final Unsafe f13550b;

        /* renamed from: c  reason: collision with root package name */
        private static final long f13551c;

        /* renamed from: a  reason: collision with root package name */
        volatile long f13552a;

        static {
            try {
                Unsafe b10 = r.b();
                f13550b = b10;
                f13551c = b10.objectFieldOffset(b.class.getDeclaredField("a"));
            } catch (Exception e10) {
                throw new Error(e10);
            }
        }

        b(long j10) {
            this.f13552a = j10;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final boolean a(long j10, long j11) {
            return f13550b.compareAndSwapLong(this, f13551c, j10, j11);
        }
    }

    static {
        try {
            Unsafe f10 = f();
            f13544g = f10;
            f13545h = f10.objectFieldOffset(r.class.getDeclaredField("b"));
            f13546i = f10.objectFieldOffset(r.class.getDeclaredField(com.huawei.hms.opendevice.c.f27627a));
        } catch (Exception e10) {
            throw new Error(e10);
        }
    }

    static /* synthetic */ Unsafe b() {
        return f();
    }

    private static Unsafe f() {
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
    public final boolean c(long j10, long j11) {
        return f13544g.compareAndSwapLong(this, f13545h, j10, j11);
    }

    final boolean d() {
        return f13544g.compareAndSwapInt(this, f13546i, 0, 1);
    }

    abstract long e(long j10, long j11);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0023 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x00ee A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g(long r17, int[] r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 239
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.hash.r.g(long, int[], boolean):void");
    }
}
