package com.google.protobuf;

import com.facebook.appevents.integrity.IntegrityManager;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class m3 {

    /* renamed from: a  reason: collision with root package name */
    private static final Unsafe f15084a = I();

    /* renamed from: b  reason: collision with root package name */
    private static final Class<?> f15085b = com.google.protobuf.e.b();

    /* renamed from: c  reason: collision with root package name */
    private static final boolean f15086c = q(Long.TYPE);

    /* renamed from: d  reason: collision with root package name */
    private static final boolean f15087d = q(Integer.TYPE);

    /* renamed from: e  reason: collision with root package name */
    private static final e f15088e = F();

    /* renamed from: f  reason: collision with root package name */
    private static final boolean f15089f = Z();

    /* renamed from: g  reason: collision with root package name */
    private static final boolean f15090g = Y();

    /* renamed from: h  reason: collision with root package name */
    static final long f15091h;

    /* renamed from: i  reason: collision with root package name */
    private static final long f15092i;

    /* renamed from: j  reason: collision with root package name */
    private static final long f15093j;

    /* renamed from: k  reason: collision with root package name */
    private static final long f15094k;

    /* renamed from: l  reason: collision with root package name */
    private static final long f15095l;

    /* renamed from: m  reason: collision with root package name */
    private static final long f15096m;

    /* renamed from: n  reason: collision with root package name */
    private static final long f15097n;

    /* renamed from: o  reason: collision with root package name */
    private static final long f15098o;

    /* renamed from: p  reason: collision with root package name */
    private static final long f15099p;

    /* renamed from: q  reason: collision with root package name */
    private static final long f15100q;

    /* renamed from: r  reason: collision with root package name */
    private static final long f15101r;

    /* renamed from: s  reason: collision with root package name */
    private static final long f15102s;

    /* renamed from: t  reason: collision with root package name */
    private static final long f15103t;

    /* renamed from: u  reason: collision with root package name */
    private static final long f15104u;

    /* renamed from: v  reason: collision with root package name */
    private static final int f15105v;

    /* renamed from: w  reason: collision with root package name */
    static final boolean f15106w;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class a implements PrivilegedExceptionAction<Unsafe> {
        a() {
        }

        @Override // java.security.PrivilegedExceptionAction
        /* renamed from: a */
        public Unsafe run() throws Exception {
            java.lang.reflect.Field[] declaredFields;
            for (java.lang.reflect.Field field : Unsafe.class.getDeclaredFields()) {
                field.setAccessible(true);
                Object obj = field.get(null);
                if (Unsafe.class.isInstance(obj)) {
                    return (Unsafe) Unsafe.class.cast(obj);
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class b extends e {
        b(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.protobuf.m3.e
        public void c(long j10, byte[] bArr, long j11, long j12) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.m3.e
        public boolean d(Object obj, long j10) {
            if (m3.f15106w) {
                return m3.u(obj, j10);
            }
            return m3.v(obj, j10);
        }

        @Override // com.google.protobuf.m3.e
        public byte e(long j10) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.m3.e
        public byte f(Object obj, long j10) {
            if (m3.f15106w) {
                return m3.y(obj, j10);
            }
            return m3.z(obj, j10);
        }

        @Override // com.google.protobuf.m3.e
        public double g(Object obj, long j10) {
            return Double.longBitsToDouble(k(obj, j10));
        }

        @Override // com.google.protobuf.m3.e
        public float h(Object obj, long j10) {
            return Float.intBitsToFloat(i(obj, j10));
        }

        @Override // com.google.protobuf.m3.e
        public long j(long j10) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.m3.e
        public Object m(java.lang.reflect.Field field) {
            try {
                return field.get(null);
            } catch (IllegalAccessException unused) {
                return null;
            }
        }

        @Override // com.google.protobuf.m3.e
        public void o(Object obj, long j10, boolean z10) {
            if (m3.f15106w) {
                m3.O(obj, j10, z10);
            } else {
                m3.P(obj, j10, z10);
            }
        }

        @Override // com.google.protobuf.m3.e
        public void p(Object obj, long j10, byte b10) {
            if (m3.f15106w) {
                m3.R(obj, j10, b10);
            } else {
                m3.S(obj, j10, b10);
            }
        }

        @Override // com.google.protobuf.m3.e
        public void q(Object obj, long j10, double d10) {
            t(obj, j10, Double.doubleToLongBits(d10));
        }

        @Override // com.google.protobuf.m3.e
        public void r(Object obj, long j10, float f10) {
            s(obj, j10, Float.floatToIntBits(f10));
        }

        @Override // com.google.protobuf.m3.e
        public boolean w() {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class c extends e {
        c(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.protobuf.m3.e
        public void c(long j10, byte[] bArr, long j11, long j12) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.m3.e
        public boolean d(Object obj, long j10) {
            if (m3.f15106w) {
                return m3.u(obj, j10);
            }
            return m3.v(obj, j10);
        }

        @Override // com.google.protobuf.m3.e
        public byte e(long j10) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.m3.e
        public byte f(Object obj, long j10) {
            if (m3.f15106w) {
                return m3.y(obj, j10);
            }
            return m3.z(obj, j10);
        }

        @Override // com.google.protobuf.m3.e
        public double g(Object obj, long j10) {
            return Double.longBitsToDouble(k(obj, j10));
        }

        @Override // com.google.protobuf.m3.e
        public float h(Object obj, long j10) {
            return Float.intBitsToFloat(i(obj, j10));
        }

        @Override // com.google.protobuf.m3.e
        public long j(long j10) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.m3.e
        public Object m(java.lang.reflect.Field field) {
            try {
                return field.get(null);
            } catch (IllegalAccessException unused) {
                return null;
            }
        }

        @Override // com.google.protobuf.m3.e
        public void o(Object obj, long j10, boolean z10) {
            if (m3.f15106w) {
                m3.O(obj, j10, z10);
            } else {
                m3.P(obj, j10, z10);
            }
        }

        @Override // com.google.protobuf.m3.e
        public void p(Object obj, long j10, byte b10) {
            if (m3.f15106w) {
                m3.R(obj, j10, b10);
            } else {
                m3.S(obj, j10, b10);
            }
        }

        @Override // com.google.protobuf.m3.e
        public void q(Object obj, long j10, double d10) {
            t(obj, j10, Double.doubleToLongBits(d10));
        }

        @Override // com.google.protobuf.m3.e
        public void r(Object obj, long j10, float f10) {
            s(obj, j10, Float.floatToIntBits(f10));
        }

        @Override // com.google.protobuf.m3.e
        public boolean w() {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class d extends e {
        d(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.protobuf.m3.e
        public void c(long j10, byte[] bArr, long j11, long j12) {
            this.f15107a.copyMemory((Object) null, j10, bArr, m3.f15091h + j11, j12);
        }

        @Override // com.google.protobuf.m3.e
        public boolean d(Object obj, long j10) {
            return this.f15107a.getBoolean(obj, j10);
        }

        @Override // com.google.protobuf.m3.e
        public byte e(long j10) {
            return this.f15107a.getByte(j10);
        }

        @Override // com.google.protobuf.m3.e
        public byte f(Object obj, long j10) {
            return this.f15107a.getByte(obj, j10);
        }

        @Override // com.google.protobuf.m3.e
        public double g(Object obj, long j10) {
            return this.f15107a.getDouble(obj, j10);
        }

        @Override // com.google.protobuf.m3.e
        public float h(Object obj, long j10) {
            return this.f15107a.getFloat(obj, j10);
        }

        @Override // com.google.protobuf.m3.e
        public long j(long j10) {
            return this.f15107a.getLong(j10);
        }

        @Override // com.google.protobuf.m3.e
        public Object m(java.lang.reflect.Field field) {
            return l(this.f15107a.staticFieldBase(field), this.f15107a.staticFieldOffset(field));
        }

        @Override // com.google.protobuf.m3.e
        public void o(Object obj, long j10, boolean z10) {
            this.f15107a.putBoolean(obj, j10, z10);
        }

        @Override // com.google.protobuf.m3.e
        public void p(Object obj, long j10, byte b10) {
            this.f15107a.putByte(obj, j10, b10);
        }

        @Override // com.google.protobuf.m3.e
        public void q(Object obj, long j10, double d10) {
            this.f15107a.putDouble(obj, j10, d10);
        }

        @Override // com.google.protobuf.m3.e
        public void r(Object obj, long j10, float f10) {
            this.f15107a.putFloat(obj, j10, f10);
        }

        @Override // com.google.protobuf.m3.e
        public boolean v() {
            if (super.v()) {
                try {
                    Class<?> cls = this.f15107a.getClass();
                    Class<?> cls2 = Long.TYPE;
                    cls.getMethod("getByte", Object.class, cls2);
                    cls.getMethod("putByte", Object.class, cls2, Byte.TYPE);
                    cls.getMethod("getBoolean", Object.class, cls2);
                    cls.getMethod("putBoolean", Object.class, cls2, Boolean.TYPE);
                    cls.getMethod("getFloat", Object.class, cls2);
                    cls.getMethod("putFloat", Object.class, cls2, Float.TYPE);
                    cls.getMethod("getDouble", Object.class, cls2);
                    cls.getMethod("putDouble", Object.class, cls2, Double.TYPE);
                    return true;
                } catch (Throwable th2) {
                    m3.L(th2);
                    return false;
                }
            }
            return false;
        }

        @Override // com.google.protobuf.m3.e
        public boolean w() {
            if (super.w()) {
                try {
                    Class<?> cls = this.f15107a.getClass();
                    Class<?> cls2 = Long.TYPE;
                    cls.getMethod("getByte", cls2);
                    cls.getMethod("putByte", cls2, Byte.TYPE);
                    cls.getMethod("getInt", cls2);
                    cls.getMethod("putInt", cls2, Integer.TYPE);
                    cls.getMethod("getLong", cls2);
                    cls.getMethod("putLong", cls2, cls2);
                    cls.getMethod("copyMemory", cls2, cls2, cls2);
                    cls.getMethod("copyMemory", Object.class, cls2, Object.class, cls2, cls2);
                    return true;
                } catch (Throwable th2) {
                    m3.L(th2);
                    return false;
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static abstract class e {

        /* renamed from: a  reason: collision with root package name */
        Unsafe f15107a;

        e(Unsafe unsafe) {
            this.f15107a = unsafe;
        }

        public final int a(Class<?> cls) {
            return this.f15107a.arrayBaseOffset(cls);
        }

        public final int b(Class<?> cls) {
            return this.f15107a.arrayIndexScale(cls);
        }

        public abstract void c(long j10, byte[] bArr, long j11, long j12);

        public abstract boolean d(Object obj, long j10);

        public abstract byte e(long j10);

        public abstract byte f(Object obj, long j10);

        public abstract double g(Object obj, long j10);

        public abstract float h(Object obj, long j10);

        public final int i(Object obj, long j10) {
            return this.f15107a.getInt(obj, j10);
        }

        public abstract long j(long j10);

        public final long k(Object obj, long j10) {
            return this.f15107a.getLong(obj, j10);
        }

        public final Object l(Object obj, long j10) {
            return this.f15107a.getObject(obj, j10);
        }

        public abstract Object m(java.lang.reflect.Field field);

        public final long n(java.lang.reflect.Field field) {
            return this.f15107a.objectFieldOffset(field);
        }

        public abstract void o(Object obj, long j10, boolean z10);

        public abstract void p(Object obj, long j10, byte b10);

        public abstract void q(Object obj, long j10, double d10);

        public abstract void r(Object obj, long j10, float f10);

        public final void s(Object obj, long j10, int i9) {
            this.f15107a.putInt(obj, j10, i9);
        }

        public final void t(Object obj, long j10, long j11) {
            this.f15107a.putLong(obj, j10, j11);
        }

        public final void u(Object obj, long j10, Object obj2) {
            this.f15107a.putObject(obj, j10, obj2);
        }

        public boolean v() {
            Unsafe unsafe = this.f15107a;
            if (unsafe == null) {
                return false;
            }
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", java.lang.reflect.Field.class);
                cls.getMethod("arrayBaseOffset", Class.class);
                cls.getMethod("arrayIndexScale", Class.class);
                Class<?> cls2 = Long.TYPE;
                cls.getMethod("getInt", Object.class, cls2);
                cls.getMethod("putInt", Object.class, cls2, Integer.TYPE);
                cls.getMethod("getLong", Object.class, cls2);
                cls.getMethod("putLong", Object.class, cls2, cls2);
                cls.getMethod("getObject", Object.class, cls2);
                cls.getMethod("putObject", Object.class, cls2, Object.class);
                return true;
            } catch (Throwable th2) {
                m3.L(th2);
                return false;
            }
        }

        public boolean w() {
            Unsafe unsafe = this.f15107a;
            if (unsafe == null) {
                return false;
            }
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", java.lang.reflect.Field.class);
                cls.getMethod("getLong", Object.class, Long.TYPE);
                return m3.b() != null;
            } catch (Throwable th2) {
                m3.L(th2);
                return false;
            }
        }
    }

    static {
        long m10 = m(byte[].class);
        f15091h = m10;
        f15092i = m(boolean[].class);
        f15093j = n(boolean[].class);
        f15094k = m(int[].class);
        f15095l = n(int[].class);
        f15096m = m(long[].class);
        f15097n = n(long[].class);
        f15098o = m(float[].class);
        f15099p = n(float[].class);
        f15100q = m(double[].class);
        f15101r = n(double[].class);
        f15102s = m(Object[].class);
        f15103t = n(Object[].class);
        f15104u = s(o());
        f15105v = (int) (7 & m10);
        f15106w = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    private m3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static double A(Object obj, long j10) {
        return f15088e.g(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float B(Object obj, long j10) {
        return f15088e.h(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int C(Object obj, long j10) {
        return f15088e.i(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long D(long j10) {
        return f15088e.j(j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long E(Object obj, long j10) {
        return f15088e.k(obj, j10);
    }

    private static e F() {
        Unsafe unsafe = f15084a;
        if (unsafe == null) {
            return null;
        }
        if (com.google.protobuf.e.c()) {
            if (f15086c) {
                return new c(unsafe);
            }
            if (f15087d) {
                return new b(unsafe);
            }
            return null;
        }
        return new d(unsafe);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object G(Object obj, long j10) {
        return f15088e.l(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object H(java.lang.reflect.Field field) {
        return f15088e.m(field);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Unsafe I() {
        try {
            return (Unsafe) AccessController.doPrivileged(new a());
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean J() {
        return f15090g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean K() {
        return f15089f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void L(Throwable th2) {
        Logger logger = Logger.getLogger(m3.class.getName());
        Level level = Level.WARNING;
        logger.log(level, "platform method missing - proto runtime falling back to safer methods: " + th2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long M(java.lang.reflect.Field field) {
        return f15088e.n(field);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void N(Object obj, long j10, boolean z10) {
        f15088e.o(obj, j10, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void O(Object obj, long j10, boolean z10) {
        R(obj, j10, z10 ? (byte) 1 : (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void P(Object obj, long j10, boolean z10) {
        S(obj, j10, z10 ? (byte) 1 : (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void Q(byte[] bArr, long j10, byte b10) {
        f15088e.p(bArr, f15091h + j10, b10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void R(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        int C = C(obj, j11);
        int i9 = ((~((int) j10)) & 3) << 3;
        V(obj, j11, ((255 & b10) << i9) | (C & (~(255 << i9))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void S(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        int i9 = (((int) j10) & 3) << 3;
        V(obj, j11, ((255 & b10) << i9) | (C(obj, j11) & (~(255 << i9))));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void T(Object obj, long j10, double d10) {
        f15088e.q(obj, j10, d10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void U(Object obj, long j10, float f10) {
        f15088e.r(obj, j10, f10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void V(Object obj, long j10, int i9) {
        f15088e.s(obj, j10, i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void W(Object obj, long j10, long j11) {
        f15088e.t(obj, j10, j11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void X(Object obj, long j10, Object obj2) {
        f15088e.u(obj, j10, obj2);
    }

    private static boolean Y() {
        e eVar = f15088e;
        if (eVar == null) {
            return false;
        }
        return eVar.v();
    }

    private static boolean Z() {
        e eVar = f15088e;
        if (eVar == null) {
            return false;
        }
        return eVar.w();
    }

    static /* synthetic */ java.lang.reflect.Field b() {
        return o();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long k(ByteBuffer byteBuffer) {
        return f15088e.k(byteBuffer, f15104u);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T l(Class<T> cls) {
        try {
            return (T) f15084a.allocateInstance(cls);
        } catch (InstantiationException e10) {
            throw new IllegalStateException(e10);
        }
    }

    private static int m(Class<?> cls) {
        if (f15090g) {
            return f15088e.a(cls);
        }
        return -1;
    }

    private static int n(Class<?> cls) {
        if (f15090g) {
            return f15088e.b(cls);
        }
        return -1;
    }

    private static java.lang.reflect.Field o() {
        java.lang.reflect.Field r10;
        if (!com.google.protobuf.e.c() || (r10 = r(Buffer.class, "effectiveDirectAddress")) == null) {
            java.lang.reflect.Field r11 = r(Buffer.class, IntegrityManager.INTEGRITY_TYPE_ADDRESS);
            if (r11 == null || r11.getType() != Long.TYPE) {
                return null;
            }
            return r11;
        }
        return r10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void p(long j10, byte[] bArr, long j11, long j12) {
        f15088e.c(j10, bArr, j11, j12);
    }

    static boolean q(Class<?> cls) {
        if (com.google.protobuf.e.c()) {
            try {
                Class<?> cls2 = f15085b;
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
        return false;
    }

    private static java.lang.reflect.Field r(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    private static long s(java.lang.reflect.Field field) {
        e eVar;
        if (field == null || (eVar = f15088e) == null) {
            return -1L;
        }
        return eVar.n(field);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean t(Object obj, long j10) {
        return f15088e.d(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean u(Object obj, long j10) {
        return y(obj, j10) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean v(Object obj, long j10) {
        return z(obj, j10) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte w(long j10) {
        return f15088e.e(j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte x(byte[] bArr, long j10) {
        return f15088e.f(bArr, f15091h + j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte y(Object obj, long j10) {
        return (byte) ((C(obj, (-4) & j10) >>> ((int) (((~j10) & 3) << 3))) & 255);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte z(Object obj, long j10) {
        return (byte) ((C(obj, (-4) & j10) >>> ((int) ((j10 & 3) << 3))) & 255);
    }
}
