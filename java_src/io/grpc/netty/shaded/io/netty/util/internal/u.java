package io.grpc.netty.shaded.io.netty.util.internal;

import android.support.v4.media.session.PlaybackStateCompat;
import com.facebook.appevents.integrity.IntegrityManager;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.security.AccessController;
import java.security.PrivilegedAction;
import sun.misc.Unsafe;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class u {

    /* renamed from: a  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f45188a;

    /* renamed from: b  reason: collision with root package name */
    private static final long f45189b;

    /* renamed from: c  reason: collision with root package name */
    private static final long f45190c;

    /* renamed from: d  reason: collision with root package name */
    private static final long f45191d;

    /* renamed from: e  reason: collision with root package name */
    private static final long f45192e;

    /* renamed from: f  reason: collision with root package name */
    private static final long f45193f;

    /* renamed from: g  reason: collision with root package name */
    private static final long f45194g;

    /* renamed from: h  reason: collision with root package name */
    private static final Constructor<?> f45195h;

    /* renamed from: i  reason: collision with root package name */
    private static final Throwable f45196i;

    /* renamed from: j  reason: collision with root package name */
    private static final Method f45197j;

    /* renamed from: k  reason: collision with root package name */
    private static final Method f45198k;

    /* renamed from: l  reason: collision with root package name */
    private static final int f45199l;

    /* renamed from: m  reason: collision with root package name */
    private static final boolean f45200m;

    /* renamed from: n  reason: collision with root package name */
    private static final Throwable f45201n;

    /* renamed from: o  reason: collision with root package name */
    private static final Object f45202o;

    /* renamed from: p  reason: collision with root package name */
    private static final boolean f45203p;

    /* renamed from: q  reason: collision with root package name */
    private static final boolean f45204q;

    /* renamed from: r  reason: collision with root package name */
    static final Unsafe f45205r;

    /* renamed from: s  reason: collision with root package name */
    private static final boolean f45206s;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class a implements PrivilegedAction<ClassLoader> {
        a() {
        }

        @Override // java.security.PrivilegedAction
        /* renamed from: a */
        public ClassLoader run() {
            return ClassLoader.getSystemClassLoader();
        }
    }

    /* loaded from: classes5.dex */
    static class b implements PrivilegedAction<Object> {
        b() {
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            try {
                Field declaredField = Unsafe.class.getDeclaredField("theUnsafe");
                Throwable b10 = z.b(declaredField, false);
                return b10 != null ? b10 : declaredField.get(null);
            } catch (IllegalAccessException e10) {
                return e10;
            } catch (NoClassDefFoundError e11) {
                return e11;
            } catch (NoSuchFieldException e12) {
                return e12;
            } catch (SecurityException e13) {
                return e13;
            }
        }
    }

    /* loaded from: classes5.dex */
    static class c implements PrivilegedAction<Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Unsafe f45207a;

        c(Unsafe unsafe) {
            this.f45207a = unsafe;
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            try {
                Class<?> cls = this.f45207a.getClass();
                Class<?> cls2 = Long.TYPE;
                cls.getDeclaredMethod("copyMemory", Object.class, cls2, Object.class, cls2, cls2);
                return null;
            } catch (NoSuchMethodException e10) {
                return e10;
            } catch (SecurityException e11) {
                return e11;
            }
        }
    }

    /* loaded from: classes5.dex */
    static class d implements PrivilegedAction<Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Unsafe f45208a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ByteBuffer f45209b;

        d(Unsafe unsafe, ByteBuffer byteBuffer) {
            this.f45208a = unsafe;
            this.f45209b = byteBuffer;
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            try {
                Field declaredField = Buffer.class.getDeclaredField(IntegrityManager.INTEGRITY_TYPE_ADDRESS);
                if (this.f45208a.getLong(this.f45209b, this.f45208a.objectFieldOffset(declaredField)) == 0) {
                    return null;
                }
                return declaredField;
            } catch (NoSuchFieldException e10) {
                return e10;
            } catch (SecurityException e11) {
                return e11;
            }
        }
    }

    /* loaded from: classes5.dex */
    static class e implements PrivilegedAction<Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ByteBuffer f45210a;

        e(ByteBuffer byteBuffer) {
            this.f45210a = byteBuffer;
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            try {
                Constructor<?> declaredConstructor = this.f45210a.getClass().getDeclaredConstructor(Long.TYPE, Integer.TYPE);
                Throwable b10 = z.b(declaredConstructor, true);
                return b10 != null ? b10 : declaredConstructor;
            } catch (NoSuchMethodException e10) {
                return e10;
            } catch (SecurityException e11) {
                return e11;
            }
        }
    }

    /* loaded from: classes5.dex */
    static class f implements PrivilegedAction<Object> {
        f() {
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            try {
                Class<?> cls = Class.forName("java.nio.Bits", false, u.C());
                int S = u.S();
                if (u.a() && S >= 9) {
                    try {
                        Field declaredField = cls.getDeclaredField(S >= 11 ? "UNALIGNED" : "unaligned");
                        if (declaredField.getType() == Boolean.TYPE) {
                            Unsafe unsafe = u.f45205r;
                            return Boolean.valueOf(unsafe.getBoolean(unsafe.staticFieldBase(declaredField), unsafe.staticFieldOffset(declaredField)));
                        }
                    } catch (NoSuchFieldException unused) {
                    }
                }
                Method declaredMethod = cls.getDeclaredMethod("unaligned", new Class[0]);
                Throwable b10 = z.b(declaredMethod, true);
                return b10 != null ? b10 : declaredMethod.invoke(null, new Object[0]);
            } catch (ClassNotFoundException e10) {
                return e10;
            } catch (IllegalAccessException e11) {
                return e11;
            } catch (NoSuchMethodException e12) {
                return e12;
            } catch (SecurityException e13) {
                return e13;
            } catch (InvocationTargetException e14) {
                return e14;
            }
        }
    }

    /* loaded from: classes5.dex */
    static class g implements PrivilegedAction<Object> {
        g() {
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            try {
                return u.s(u.class).loadClass("jdk.internal.misc.Unsafe").getDeclaredMethod("getUnsafe", new Class[0]).invoke(null, new Object[0]);
            } catch (Throwable th2) {
                return th2;
            }
        }
    }

    /* loaded from: classes5.dex */
    static class h implements PrivilegedAction<Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f45211a;

        h(Object obj) {
            this.f45211a = obj;
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            try {
                return this.f45211a.getClass().getDeclaredMethod("allocateUninitializedArray", Class.class, Integer.TYPE);
            } catch (NoSuchMethodException e10) {
                return e10;
            } catch (SecurityException e11) {
                return e11;
            }
        }
    }

    /* loaded from: classes5.dex */
    static class i implements PrivilegedAction<Object> {
        i() {
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            try {
                return ByteBuffer.class.getDeclaredMethod("alignedSlice", Integer.TYPE);
            } catch (Exception unused) {
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class j implements PrivilegedAction<ClassLoader> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Class f45212a;

        j(Class cls) {
            this.f45212a = cls;
        }

        @Override // java.security.PrivilegedAction
        /* renamed from: a */
        public ClassLoader run() {
            return this.f45212a.getClassLoader();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0247  */
    static {
        /*
            Method dump skipped, instructions count: 648
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.netty.shaded.io.netty.util.internal.u.<clinit>():void");
    }

    private u() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static short A(long j10) {
        return f45205r.getShort(j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static short B(byte[] bArr, int i9) {
        return f45205r.getShort(bArr, f45190c + i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ClassLoader C() {
        if (System.getSecurityManager() == null) {
            return ClassLoader.getSystemClassLoader();
        }
        return (ClassLoader) AccessController.doPrivileged(new a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Throwable D() {
        return f45201n;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean E() {
        return f45198k != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean F() {
        return f45197j != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean G() {
        return f45195h != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean H() {
        return f45205r != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int I(byte[] bArr, int i9, int i10) {
        int i11;
        long j10 = f45190c + i9;
        int i12 = i10 & 7;
        long j11 = i12 + j10;
        int i13 = -1028477387;
        for (long j12 = (j10 - 8) + i10; j12 >= j11; j12 -= 8) {
            i13 = J(f45205r.getLong(bArr, j12), i13);
        }
        if (i12 == 0) {
            return i13;
        }
        if (((i12 != 2) && (i12 != 4)) && (i12 != 6)) {
            i13 = (i13 * (-862048943)) + K(f45205r.getByte(bArr, j10));
            j10++;
            i11 = 461845907;
        } else {
            i11 = -862048943;
        }
        if ((i12 != 5) & (i12 != 1) & (i12 != 4)) {
            i13 = (i13 * i11) + M(f45205r.getShort(bArr, j10));
            j10 += 2;
            i11 = i11 != -862048943 ? -862048943 : 461845907;
        }
        return i12 >= 4 ? (i13 * i11) + L(f45205r.getInt(bArr, j10)) : i13;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int J(long j10, int i9) {
        return (i9 * (-862048943)) + (L((int) j10) * 461845907) + ((int) ((j10 & 2242545357458243584L) >>> 32));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int K(byte b10) {
        return b10 & 31;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int L(int i9) {
        return i9 & 522133279;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int M(short s10) {
        return s10 & 7967;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean N() {
        return f45200m;
    }

    private static boolean O() {
        boolean equals = "Dalvik".equals(c0.b("java.vm.name"));
        if (equals) {
            f45188a.debug("Platform: Android");
        }
        return equals;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean P() {
        return f45196i != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean Q() {
        return f45203p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean R() {
        return f45206s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int S() {
        return f45199l;
    }

    private static int T() {
        int V = O() ? 6 : V();
        f45188a.debug("Java version: {}", Integer.valueOf(V));
        return V;
    }

    static int U(String str) {
        String[] split = str.split("\\.");
        int[] iArr = new int[split.length];
        for (int i9 = 0; i9 < split.length; i9++) {
            iArr[i9] = Integer.parseInt(split[i9]);
        }
        if (iArr[0] == 1) {
            return iArr[1];
        }
        return iArr[0];
    }

    static int V() {
        return U(c0.c("java.specification.version", "1.6"));
    }

    static ByteBuffer W(long j10, int i9) {
        s.n(i9, "capacity");
        try {
            return (ByteBuffer) f45195h.newInstance(Long.valueOf(j10), Integer.valueOf(i9));
        } catch (Throwable th2) {
            if (th2 instanceof Error) {
                throw th2;
            }
            throw new Error(th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long X(Field field) {
        return f45205r.objectFieldOffset(field);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void Y(long j10, byte b10) {
        f45205r.putByte(j10, b10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void Z(Object obj, long j10, byte b10) {
        f45205r.putByte(obj, j10, b10);
    }

    static /* synthetic */ boolean a() {
        return n0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a0(byte[] bArr, int i9, byte b10) {
        f45205r.putByte(bArr, f45190c + i9, b10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b() {
        return f45205r.addressSize();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b0(long j10, int i9) {
        f45205r.putInt(j10, i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ByteBuffer c(ByteBuffer byteBuffer, int i9) {
        try {
            return (ByteBuffer) f45198k.invoke(byteBuffer, Integer.valueOf(i9));
        } catch (IllegalAccessException e10) {
            throw new Error(e10);
        } catch (InvocationTargetException e11) {
            throw new Error(e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c0(byte[] bArr, int i9, int i10) {
        f45205r.putInt(bArr, f45190c + i9, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ByteBuffer d(int i9) {
        return W(f45205r.allocateMemory(Math.max(1, i9)), i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void d0(long j10, long j11) {
        f45205r.putLong(j10, j11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] e(int i9) {
        try {
            return (byte[]) f45197j.invoke(f45202o, Byte.TYPE, Integer.valueOf(i9));
        } catch (IllegalAccessException e10) {
            throw new Error(e10);
        } catch (InvocationTargetException e11) {
            throw new Error(e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void e0(byte[] bArr, int i9, long j10) {
        f45205r.putLong(bArr, f45190c + i9, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long f() {
        return f45190c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void f0(Object obj, long j10, Object obj2) {
        f45205r.putObject(obj, j10, obj2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void g(long j10, long j11, long j12) {
        if (S() <= 8) {
            i(j10, j11, j12);
        } else {
            f45205r.copyMemory(j10, j11, j12);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void g0(long j10, short s10) {
        f45205r.putShort(j10, s10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void h(Object obj, long j10, Object obj2, long j11, long j12) {
        if (S() <= 8) {
            j(obj, j10, obj2, j11, j12);
        } else {
            f45205r.copyMemory(obj, j10, obj2, j11, j12);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void h0(byte[] bArr, int i9, short s10) {
        f45205r.putShort(bArr, f45190c + i9, s10);
    }

    private static void i(long j10, long j11, long j12) {
        while (j12 > 0) {
            long min = Math.min(j12, (long) PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED);
            f45205r.copyMemory(j10, j11, min);
            j12 -= min;
            j10 += min;
            j11 += min;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ByteBuffer i0(ByteBuffer byteBuffer, int i9) {
        return W(f45205r.reallocateMemory(k(byteBuffer), i9), i9);
    }

    private static void j(Object obj, long j10, Object obj2, long j11, long j12) {
        long j13 = j10;
        long j14 = j11;
        long j15 = j12;
        while (j15 > 0) {
            long min = Math.min(j15, (long) PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED);
            f45205r.copyMemory(obj, j13, obj2, j14, min);
            j15 -= min;
            j13 += min;
            j14 += min;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void j0(long j10, long j11, byte b10) {
        f45205r.setMemory(j10, j11, b10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long k(ByteBuffer byteBuffer) {
        return x(byteBuffer, f45189b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void k0(Object obj, long j10, long j11, byte b10) {
        f45205r.setMemory(obj, j10, j11, b10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean l(byte[] bArr, int i9, byte[] bArr2, int i10, int i11) {
        int i12 = i11 & 7;
        long j10 = f45190c + i9;
        long j11 = i10 - i9;
        if (i11 >= 8) {
            long j12 = i12 + j10;
            long j13 = (j10 - 8) + i11;
            while (j13 >= j12) {
                Unsafe unsafe = f45205r;
                long j14 = j12;
                if (unsafe.getLong(bArr, j13) != unsafe.getLong(bArr2, j13 + j11)) {
                    return false;
                }
                j13 -= 8;
                j12 = j14;
            }
        }
        if (i12 >= 4) {
            i12 -= 4;
            long j15 = i12 + j10;
            Unsafe unsafe2 = f45205r;
            if (unsafe2.getInt(bArr, j15) != unsafe2.getInt(bArr2, j15 + j11)) {
                return false;
            }
        }
        long j16 = j11 + j10;
        if (i12 >= 2) {
            Unsafe unsafe3 = f45205r;
            if (unsafe3.getChar(bArr, j10) == unsafe3.getChar(bArr2, j16)) {
                return i12 == 2 || unsafe3.getByte(bArr, j10 + 2) == unsafe3.getByte(bArr2, j16 + 2);
            }
            return false;
        }
        if (i12 != 0) {
            Unsafe unsafe4 = f45205r;
            if (unsafe4.getByte(bArr, j10) != unsafe4.getByte(bArr2, j16)) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void l0(Throwable th2) {
        f45205r.throwException((Throwable) s.h(th2, "cause"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int m(byte[] bArr, int i9, byte[] bArr2, int i10, int i11) {
        long j10 = i11 & 7;
        long j11 = f45190c + i9;
        long j12 = j11 + j10;
        long j13 = i10 - i9;
        long j14 = 0;
        for (long j15 = (j11 - 8) + i11; j15 >= j12; j15 -= 8) {
            Unsafe unsafe = f45205r;
            j14 |= unsafe.getLong(bArr, j15) ^ unsafe.getLong(bArr2, j15 + j13);
        }
        if (j10 >= 4) {
            Unsafe unsafe2 = f45205r;
            j14 |= unsafe2.getInt(bArr2, j11 + j13) ^ unsafe2.getInt(bArr, j11);
            j10 -= 4;
        }
        if (j10 >= 2) {
            long j16 = j12 - j10;
            Unsafe unsafe3 = f45205r;
            j14 |= unsafe3.getChar(bArr2, j16 + j13) ^ unsafe3.getChar(bArr, j16);
            j10 -= 2;
        }
        if (j10 == 1) {
            long j17 = j12 - 1;
            Unsafe unsafe4 = f45205r;
            j14 |= unsafe4.getByte(bArr, j17) ^ unsafe4.getByte(bArr2, j17 + j13);
        }
        return io.grpc.netty.shaded.io.netty.util.internal.f.b(j14, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean m0() {
        return f45206s;
    }

    private static Throwable n() {
        boolean d10 = c0.d("io.grpc.netty.shaded.io.netty.noUnsafe", false);
        io.grpc.netty.shaded.io.netty.util.internal.logging.b bVar = f45188a;
        bVar.debug("-Dio.netty.noUnsafe: {}", Boolean.valueOf(d10));
        if (d10) {
            bVar.debug("sun.misc.Unsafe: unavailable (io.netty.noUnsafe)");
            return new UnsupportedOperationException("sun.misc.Unsafe: unavailable (io.netty.noUnsafe)");
        }
        String str = c0.a("io.grpc.netty.shaded.io.netty.tryUnsafe") ? "io.grpc.netty.shaded.io.netty.tryUnsafe" : "org.jboss.netty.tryUnsafe";
        if (c0.d(str, true)) {
            return null;
        }
        String str2 = "sun.misc.Unsafe: unavailable (" + str + ")";
        bVar.debug(str2);
        return new UnsupportedOperationException(str2);
    }

    private static boolean n0() {
        return !f45204q;
    }

    private static boolean o() {
        return c0.d("io.grpc.netty.shaded.io.netty.tryReflectionSetAccessible", S() < 9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void p(long j10) {
        f45205r.freeMemory(j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte q(long j10) {
        return f45205r.getByte(j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte r(byte[] bArr, int i9) {
        return f45205r.getByte(bArr, f45190c + i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ClassLoader s(Class<?> cls) {
        if (System.getSecurityManager() == null) {
            return cls.getClassLoader();
        }
        return (ClassLoader) AccessController.doPrivileged(new j(cls));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int t(long j10) {
        return f45205r.getInt(j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int u(Object obj, long j10) {
        return f45205r.getInt(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int v(byte[] bArr, int i9) {
        return f45205r.getInt(bArr, f45190c + i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long w(long j10) {
        return f45205r.getLong(j10);
    }

    private static long x(Object obj, long j10) {
        return f45205r.getLong(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long y(byte[] bArr, int i9) {
        return f45205r.getLong(bArr, f45190c + i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object z(Object obj, long j10) {
        return f45205r.getObject(obj, j10);
    }
}
