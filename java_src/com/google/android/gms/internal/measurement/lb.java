package com.google.android.gms.internal.measurement;

import com.facebook.appevents.integrity.IntegrityManager;
import java.lang.reflect.Field;
import java.nio.Buffer;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* loaded from: classes2.dex */
final class lb {

    /* renamed from: a  reason: collision with root package name */
    private static final Unsafe f8184a;

    /* renamed from: b  reason: collision with root package name */
    private static final Class f8185b;

    /* renamed from: c  reason: collision with root package name */
    private static final boolean f8186c;

    /* renamed from: d  reason: collision with root package name */
    private static final kb f8187d;

    /* renamed from: e  reason: collision with root package name */
    private static final boolean f8188e;

    /* renamed from: f  reason: collision with root package name */
    private static final boolean f8189f;

    /* renamed from: g  reason: collision with root package name */
    static final long f8190g;

    /* renamed from: h  reason: collision with root package name */
    static final boolean f8191h;

    /* JADX WARN: Removed duplicated region for block: B:22:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0132  */
    static {
        /*
            Method dump skipped, instructions count: 310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.lb.<clinit>():void");
    }

    private lb() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    static boolean A(Class cls) {
        int i9 = k7.f8166a;
        try {
            Class cls2 = f8185b;
            Class cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean B(Object obj, long j10) {
        return f8187d.g(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean C() {
        return f8189f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean D() {
        return f8188e;
    }

    private static int E(Class cls) {
        if (f8189f) {
            return f8187d.h(cls);
        }
        return -1;
    }

    private static int a(Class cls) {
        if (f8189f) {
            return f8187d.i(cls);
        }
        return -1;
    }

    private static Field b() {
        int i9 = k7.f8166a;
        Field c10 = c(Buffer.class, "effectiveDirectAddress");
        if (c10 == null) {
            Field c11 = c(Buffer.class, IntegrityManager.INTEGRITY_TYPE_ADDRESS);
            if (c11 == null || c11.getType() != Long.TYPE) {
                return null;
            }
            return c11;
        }
        return c10;
    }

    private static Field c(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        kb kbVar = f8187d;
        int j12 = kbVar.j(obj, j11);
        int i9 = ((~((int) j10)) & 3) << 3;
        kbVar.n(obj, j11, ((255 & b10) << i9) | (j12 & (~(255 << i9))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        kb kbVar = f8187d;
        int i9 = (((int) j10) & 3) << 3;
        kbVar.n(obj, j11, ((255 & b10) << i9) | (kbVar.j(obj, j11) & (~(255 << i9))));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static double f(Object obj, long j10) {
        return f8187d.a(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float g(Object obj, long j10) {
        return f8187d.b(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int h(Object obj, long j10) {
        return f8187d.j(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long i(Object obj, long j10) {
        return f8187d.k(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object j(Class cls) {
        try {
            return f8184a.allocateInstance(cls);
        } catch (InstantiationException e10) {
            throw new IllegalStateException(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object k(Object obj, long j10) {
        return f8187d.m(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Unsafe l() {
        try {
            return (Unsafe) AccessController.doPrivileged(new hb());
        } catch (Throwable unused) {
            return null;
        }
    }

    static /* bridge */ /* synthetic */ void m(Throwable th2) {
        Logger.getLogger(lb.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th2.toString()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void r(Object obj, long j10, boolean z10) {
        f8187d.c(obj, j10, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void s(byte[] bArr, long j10, byte b10) {
        f8187d.d(bArr, f8190g + j10, b10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void t(Object obj, long j10, double d10) {
        f8187d.e(obj, j10, d10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void u(Object obj, long j10, float f10) {
        f8187d.f(obj, j10, f10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void v(Object obj, long j10, int i9) {
        f8187d.n(obj, j10, i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void w(Object obj, long j10, long j11) {
        f8187d.o(obj, j10, j11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void x(Object obj, long j10, Object obj2) {
        f8187d.p(obj, j10, obj2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ boolean y(Object obj, long j10) {
        return ((byte) ((f8187d.j(obj, (-4) & j10) >>> ((int) (((~j10) & 3) << 3))) & 255)) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ boolean z(Object obj, long j10) {
        return ((byte) ((f8187d.j(obj, (-4) & j10) >>> ((int) ((j10 & 3) << 3))) & 255)) != 0;
    }
}
