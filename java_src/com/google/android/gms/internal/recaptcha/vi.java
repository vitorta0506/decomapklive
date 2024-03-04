package com.google.android.gms.internal.recaptcha;

import com.facebook.appevents.integrity.IntegrityManager;
import java.lang.reflect.Field;
import java.nio.Buffer;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class vi {

    /* renamed from: a  reason: collision with root package name */
    private static final Unsafe f9115a;

    /* renamed from: b  reason: collision with root package name */
    private static final Class<?> f9116b;

    /* renamed from: c  reason: collision with root package name */
    private static final boolean f9117c;

    /* renamed from: d  reason: collision with root package name */
    private static final boolean f9118d;

    /* renamed from: e  reason: collision with root package name */
    private static final ui f9119e;

    /* renamed from: f  reason: collision with root package name */
    private static final boolean f9120f;

    /* renamed from: g  reason: collision with root package name */
    private static final boolean f9121g;

    /* renamed from: h  reason: collision with root package name */
    static final long f9122h;

    /* renamed from: i  reason: collision with root package name */
    static final boolean f9123i;

    /* JADX WARN: Removed duplicated region for block: B:33:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x013b  */
    static {
        /*
            Method dump skipped, instructions count: 319
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.recaptcha.vi.<clinit>():void");
    }

    private vi() {
    }

    static boolean A(Class<?> cls) {
        int i9 = ke.f8820a;
        try {
            Class<?> cls2 = f9116b;
            Class<?> cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class<?> cls4 = Integer.TYPE;
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
        return f9119e.g(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean C() {
        return f9121g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean D() {
        return f9120f;
    }

    private static int E(Class<?> cls) {
        if (f9121g) {
            return f9119e.h(cls);
        }
        return -1;
    }

    private static int a(Class<?> cls) {
        if (f9121g) {
            return f9119e.i(cls);
        }
        return -1;
    }

    private static Field b() {
        int i9 = ke.f8820a;
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

    private static Field c(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        ui uiVar = f9119e;
        int j12 = uiVar.j(obj, j11);
        int i9 = ((~((int) j10)) & 3) << 3;
        uiVar.n(obj, j11, ((255 & b10) << i9) | (j12 & (~(255 << i9))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        ui uiVar = f9119e;
        int i9 = (((int) j10) & 3) << 3;
        uiVar.n(obj, j11, ((255 & b10) << i9) | (uiVar.j(obj, j11) & (~(255 << i9))));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static double f(Object obj, long j10) {
        return f9119e.a(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float g(Object obj, long j10) {
        return f9119e.b(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int h(Object obj, long j10) {
        return f9119e.j(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long i(Object obj, long j10) {
        return f9119e.k(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T j(Class<T> cls) {
        try {
            return (T) f9115a.allocateInstance(cls);
        } catch (InstantiationException e10) {
            throw new IllegalStateException(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object k(Object obj, long j10) {
        return f9119e.m(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Unsafe l() {
        try {
            return (Unsafe) AccessController.doPrivileged(new qi());
        } catch (Throwable unused) {
            return null;
        }
    }

    static /* synthetic */ void m(Throwable th2) {
        Logger logger = Logger.getLogger(vi.class.getName());
        Level level = Level.WARNING;
        String valueOf = String.valueOf(th2);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 71);
        sb2.append("platform method missing - proto runtime falling back to safer methods: ");
        sb2.append(valueOf);
        logger.logp(level, "com.google.protobuf.UnsafeUtil", "logMissingMethod", sb2.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void r(Object obj, long j10, boolean z10) {
        f9119e.c(obj, j10, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void s(byte[] bArr, long j10, byte b10) {
        f9119e.d(bArr, f9122h + j10, b10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void t(Object obj, long j10, double d10) {
        f9119e.e(obj, j10, d10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void u(Object obj, long j10, float f10) {
        f9119e.f(obj, j10, f10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void v(Object obj, long j10, int i9) {
        f9119e.n(obj, j10, i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void w(Object obj, long j10, long j11) {
        f9119e.o(obj, j10, j11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void x(Object obj, long j10, Object obj2) {
        f9119e.p(obj, j10, obj2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean y(Object obj, long j10) {
        return ((byte) ((f9119e.j(obj, (-4) & j10) >>> ((int) (((~j10) & 3) << 3))) & 255)) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean z(Object obj, long j10) {
        return ((byte) ((f9119e.j(obj, (-4) & j10) >>> ((int) ((j10 & 3) << 3))) & 255)) != 0;
    }
}
