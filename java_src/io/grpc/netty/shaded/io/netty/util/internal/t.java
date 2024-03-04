package io.grpc.netty.shaded.io.netty.util.internal;

import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Field;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.file.Files;
import java.nio.file.attribute.FileAttribute;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Queue;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.UByte;
/* loaded from: classes5.dex */
public final class t {
    public static final boolean A;
    private static final io.grpc.netty.shaded.io.netty.util.internal.c B;

    /* renamed from: a  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f45157a;

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f45158b;

    /* renamed from: c  reason: collision with root package name */
    private static final boolean f45159c;

    /* renamed from: d  reason: collision with root package name */
    private static final boolean f45160d;

    /* renamed from: e  reason: collision with root package name */
    private static final Throwable f45161e;

    /* renamed from: f  reason: collision with root package name */
    private static final boolean f45162f;

    /* renamed from: g  reason: collision with root package name */
    private static final long f45163g;

    /* renamed from: h  reason: collision with root package name */
    private static final long f45164h;

    /* renamed from: i  reason: collision with root package name */
    private static final File f45165i;

    /* renamed from: j  reason: collision with root package name */
    private static final int f45166j;

    /* renamed from: k  reason: collision with root package name */
    private static final String f45167k;

    /* renamed from: l  reason: collision with root package name */
    private static final String f45168l;

    /* renamed from: m  reason: collision with root package name */
    private static final String[] f45169m;

    /* renamed from: n  reason: collision with root package name */
    private static final Set<String> f45170n;

    /* renamed from: o  reason: collision with root package name */
    private static final boolean f45171o;

    /* renamed from: p  reason: collision with root package name */
    private static final boolean f45172p;

    /* renamed from: q  reason: collision with root package name */
    private static final boolean f45173q;

    /* renamed from: r  reason: collision with root package name */
    private static final boolean f45174r;

    /* renamed from: s  reason: collision with root package name */
    private static final int f45175s;

    /* renamed from: t  reason: collision with root package name */
    private static final boolean f45176t;

    /* renamed from: u  reason: collision with root package name */
    private static final AtomicLong f45177u;

    /* renamed from: v  reason: collision with root package name */
    private static final long f45178v;

    /* renamed from: w  reason: collision with root package name */
    private static final g f45179w;

    /* renamed from: x  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.c f45180x;

    /* renamed from: y  reason: collision with root package name */
    private static final int f45181y;

    /* renamed from: z  reason: collision with root package name */
    private static final String[] f45182z;

    /* loaded from: classes5.dex */
    static class a implements io.grpc.netty.shaded.io.netty.util.internal.c {
        a() {
        }

        @Override // io.grpc.netty.shaded.io.netty.util.internal.c
        public void a(ByteBuffer byteBuffer) {
        }
    }

    /* loaded from: classes5.dex */
    static class b implements g {
        b() {
        }

        @Override // io.grpc.netty.shaded.io.netty.util.internal.t.g
        public Random current() {
            return java.util.concurrent.ThreadLocalRandom.current();
        }
    }

    /* loaded from: classes5.dex */
    static class c implements g {
        c() {
        }

        @Override // io.grpc.netty.shaded.io.netty.util.internal.t.g
        public Random current() {
            return ThreadLocalRandom.current();
        }
    }

    /* loaded from: classes5.dex */
    static class d implements PrivilegedAction<Boolean> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ File f45183a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Set f45184b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Set f45185c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f45186d;

        d(File file, Set set, Set set2, String str) {
            this.f45183a = file;
            this.f45184b = set;
            this.f45185c = set2;
            this.f45186d = str;
        }

        /* JADX WARN: Can't wrap try/catch for region: R(2:(3:7|8|(3:10|(3:20|21|22)(3:12|13|(3:15|16|17)(1:19))|18)(0))|23) */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x008f, code lost:
            if (r1 == null) goto L27;
         */
        /* JADX WARN: Removed duplicated region for block: B:49:0x0098 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // java.security.PrivilegedAction
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Boolean run() {
            /*
                r7 = this;
                java.io.File r0 = r7.f45183a     // Catch: java.lang.SecurityException -> L9c
                boolean r0 = r0.exists()     // Catch: java.lang.SecurityException -> L9c
                if (r0 == 0) goto La8
                r0 = 0
                java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L69 java.io.IOException -> L6e java.lang.SecurityException -> L80
                java.io.InputStreamReader r2 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L69 java.io.IOException -> L6e java.lang.SecurityException -> L80
                java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L69 java.io.IOException -> L6e java.lang.SecurityException -> L80
                java.io.File r4 = r7.f45183a     // Catch: java.lang.Throwable -> L69 java.io.IOException -> L6e java.lang.SecurityException -> L80
                r3.<init>(r4)     // Catch: java.lang.Throwable -> L69 java.io.IOException -> L6e java.lang.SecurityException -> L80
                java.nio.charset.Charset r4 = io.grpc.netty.shaded.io.netty.util.h.f45016d     // Catch: java.lang.Throwable -> L69 java.io.IOException -> L6e java.lang.SecurityException -> L80
                r2.<init>(r3, r4)     // Catch: java.lang.Throwable -> L69 java.io.IOException -> L6e java.lang.SecurityException -> L80
                r1.<init>(r2)     // Catch: java.lang.Throwable -> L69 java.io.IOException -> L6e java.lang.SecurityException -> L80
            L1c:
                java.lang.String r0 = r1.readLine()     // Catch: java.io.IOException -> L65 java.lang.SecurityException -> L67 java.lang.Throwable -> L95
                if (r0 == 0) goto L61
                java.lang.String r2 = "ID="
                boolean r2 = r0.startsWith(r2)     // Catch: java.io.IOException -> L65 java.lang.SecurityException -> L67 java.lang.Throwable -> L95
                if (r2 == 0) goto L41
                r2 = 3
                java.lang.String r0 = r0.substring(r2)     // Catch: java.io.IOException -> L65 java.lang.SecurityException -> L67 java.lang.Throwable -> L95
                java.lang.String r0 = io.grpc.netty.shaded.io.netty.util.internal.t.a(r0)     // Catch: java.io.IOException -> L65 java.lang.SecurityException -> L67 java.lang.Throwable -> L95
                java.util.Set r2 = r7.f45184b     // Catch: java.io.IOException -> L65 java.lang.SecurityException -> L67 java.lang.Throwable -> L95
                java.util.Set r3 = r7.f45185c     // Catch: java.io.IOException -> L65 java.lang.SecurityException -> L67 java.lang.Throwable -> L95
                r4 = 1
                java.lang.String[] r4 = new java.lang.String[r4]     // Catch: java.io.IOException -> L65 java.lang.SecurityException -> L67 java.lang.Throwable -> L95
                r5 = 0
                r4[r5] = r0     // Catch: java.io.IOException -> L65 java.lang.SecurityException -> L67 java.lang.Throwable -> L95
                io.grpc.netty.shaded.io.netty.util.internal.t.b(r2, r3, r4)     // Catch: java.io.IOException -> L65 java.lang.SecurityException -> L67 java.lang.Throwable -> L95
                goto L1c
            L41:
                java.lang.String r2 = "ID_LIKE="
                boolean r2 = r0.startsWith(r2)     // Catch: java.io.IOException -> L65 java.lang.SecurityException -> L67 java.lang.Throwable -> L95
                if (r2 == 0) goto L1c
                r2 = 8
                java.lang.String r0 = r0.substring(r2)     // Catch: java.io.IOException -> L65 java.lang.SecurityException -> L67 java.lang.Throwable -> L95
                java.lang.String r0 = io.grpc.netty.shaded.io.netty.util.internal.t.a(r0)     // Catch: java.io.IOException -> L65 java.lang.SecurityException -> L67 java.lang.Throwable -> L95
                java.util.Set r2 = r7.f45184b     // Catch: java.io.IOException -> L65 java.lang.SecurityException -> L67 java.lang.Throwable -> L95
                java.util.Set r3 = r7.f45185c     // Catch: java.io.IOException -> L65 java.lang.SecurityException -> L67 java.lang.Throwable -> L95
                java.lang.String r4 = "[ ]+"
                java.lang.String[] r0 = r0.split(r4)     // Catch: java.io.IOException -> L65 java.lang.SecurityException -> L67 java.lang.Throwable -> L95
                io.grpc.netty.shaded.io.netty.util.internal.t.b(r2, r3, r0)     // Catch: java.io.IOException -> L65 java.lang.SecurityException -> L67 java.lang.Throwable -> L95
                goto L1c
            L61:
                r1.close()     // Catch: java.io.IOException -> L92 java.lang.SecurityException -> L9c
                goto L92
            L65:
                r0 = move-exception
                goto L72
            L67:
                r0 = move-exception
                goto L84
            L69:
                r1 = move-exception
                r6 = r1
                r1 = r0
                r0 = r6
                goto L96
            L6e:
                r1 = move-exception
                r6 = r1
                r1 = r0
                r0 = r6
            L72:
                io.grpc.netty.shaded.io.netty.util.internal.logging.b r2 = io.grpc.netty.shaded.io.netty.util.internal.t.c()     // Catch: java.lang.Throwable -> L95
                java.lang.String r3 = "Error while reading content of {}"
                java.lang.String r4 = r7.f45186d     // Catch: java.lang.Throwable -> L95
                r2.debug(r3, r4, r0)     // Catch: java.lang.Throwable -> L95
                if (r1 == 0) goto L92
                goto L61
            L80:
                r1 = move-exception
                r6 = r1
                r1 = r0
                r0 = r6
            L84:
                io.grpc.netty.shaded.io.netty.util.internal.logging.b r2 = io.grpc.netty.shaded.io.netty.util.internal.t.c()     // Catch: java.lang.Throwable -> L95
                java.lang.String r3 = "Unable to read {}"
                java.lang.String r4 = r7.f45186d     // Catch: java.lang.Throwable -> L95
                r2.debug(r3, r4, r0)     // Catch: java.lang.Throwable -> L95
                if (r1 == 0) goto L92
                goto L61
            L92:
                java.lang.Boolean r0 = java.lang.Boolean.TRUE     // Catch: java.lang.SecurityException -> L9c
                return r0
            L95:
                r0 = move-exception
            L96:
                if (r1 == 0) goto L9b
                r1.close()     // Catch: java.io.IOException -> L9b java.lang.SecurityException -> L9c
            L9b:
                throw r0     // Catch: java.lang.SecurityException -> L9c
            L9c:
                r0 = move-exception
                io.grpc.netty.shaded.io.netty.util.internal.logging.b r1 = io.grpc.netty.shaded.io.netty.util.internal.t.c()
                java.lang.String r2 = r7.f45186d
                java.lang.String r3 = "Unable to check if {} exists"
                r1.debug(r3, r2, r0)
            La8:
                java.lang.Boolean r0 = java.lang.Boolean.FALSE
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.netty.shaded.io.netty.util.internal.t.d.run():java.lang.Boolean");
        }
    }

    /* loaded from: classes5.dex */
    private static final class e extends AtomicLong implements m {
        private static final long serialVersionUID = 4074772784610639305L;

        private e() {
        }

        @Override // io.grpc.netty.shaded.io.netty.util.internal.m
        public void add(long j10) {
            addAndGet(j10);
        }

        @Override // io.grpc.netty.shaded.io.netty.util.internal.m
        public void increment() {
            incrementAndGet();
        }

        @Override // io.grpc.netty.shaded.io.netty.util.internal.m
        public long value() {
            return get();
        }

        /* synthetic */ e(a aVar) {
            this();
        }
    }

    /* loaded from: classes5.dex */
    private static final class f {

        /* renamed from: a  reason: collision with root package name */
        private static final boolean f45187a;

        /* loaded from: classes5.dex */
        static class a implements PrivilegedAction<Object> {
            a() {
            }

            @Override // java.security.PrivilegedAction
            public Object run() {
                return wg.c.f59503c;
            }
        }

        static {
            if ((t.T() ? AccessController.doPrivileged(new a()) : null) == null) {
                t.f45157a.debug("org.jctools-core.MpscChunkedArrayQueue: unavailable");
                f45187a = false;
                return;
            }
            t.f45157a.debug("org.jctools-core.MpscChunkedArrayQueue: available");
            f45187a = true;
        }

        static <T> Queue<T> a(int i9, int i10) {
            return f45187a ? new vg.u(i9, i10) : new io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.r(i9, i10);
        }

        static <T> Queue<T> b() {
            return f45187a ? new vg.w(1024) : new io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.t(1024);
        }

        static <T> Queue<T> c(int i9) {
            return a(1024, Math.max(Math.min(i9, (int) BasicMeasure.EXACTLY), 2048));
        }
    }

    /* loaded from: classes5.dex */
    private interface g {
        Random current();
    }

    static {
        io.grpc.netty.shaded.io.netty.util.internal.logging.b b10 = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(t.class);
        f45157a = b10;
        f45158b = Pattern.compile("\\s*-XX:MaxDirectMemorySize\\s*=\\s*([0-9]+)\\s*([kKmMgG]?)\\s*$");
        f45160d = !c0();
        f45161e = W0();
        long n02 = n0();
        f45163g = n02;
        f45164h = m();
        f45165i = U0();
        f45166j = k();
        f45167k = w0(c0.c("os.arch", ""));
        f45168l = x0(c0.c("os.name", ""));
        String[] strArr = {"fedora", "suse", "arch"};
        f45169m = strArr;
        f45171o = k0();
        f45172p = h0();
        f45173q = f0();
        f45174r = e0();
        f45175s = f();
        String[] strArr2 = {"/etc/os-release", "/usr/lib/os-release"};
        f45182z = strArr2;
        A = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
        a aVar = new a();
        B = aVar;
        if (l0() >= 7) {
            f45179w = new b();
        } else {
            f45179w = new c();
        }
        long f10 = c0.f("io.grpc.netty.shaded.io.netty.maxDirectMemory", -1L);
        int i9 = (f10 > 0L ? 1 : (f10 == 0L ? 0 : -1));
        if (i9 != 0 && T() && u.G()) {
            f45176t = true;
            if (i9 < 0) {
                if (n02 <= 0) {
                    f45177u = null;
                } else {
                    f45177u = new AtomicLong();
                }
                f10 = n02;
            } else {
                f45177u = new AtomicLong();
            }
        } else {
            f45176t = false;
            f45177u = null;
        }
        b10.debug("-Dio.netty.maxDirectMemory: {} bytes", Long.valueOf(f10));
        if (f10 >= 1) {
            n02 = f10;
        }
        f45178v = n02;
        c0.e("io.grpc.netty.shaded.io.netty.uninitializedArrayAllocationThreshold", 1024);
        int i10 = (l0() < 9 || !u.F()) ? -1 : -1;
        f45181y = i10;
        b10.debug("-Dio.netty.uninitializedArrayAllocationThreshold: {}", Integer.valueOf(i10));
        f45159c = o0();
        if (!c0()) {
            if (l0() >= 9) {
                f45180x = io.grpc.netty.shaded.io.netty.util.internal.e.d() ? new io.grpc.netty.shaded.io.netty.util.internal.e() : aVar;
            } else {
                f45180x = io.grpc.netty.shaded.io.netty.util.internal.d.e() ? new io.grpc.netty.shaded.io.netty.util.internal.d() : aVar;
            }
        } else {
            f45180x = aVar;
        }
        io.grpc.netty.shaded.io.netty.util.internal.c cVar = f45180x;
        boolean z10 = (cVar == aVar || c0.d("io.grpc.netty.shaded.io.netty.noPreferDirect", false)) ? false : true;
        f45162f = z10;
        if (b10.isDebugEnabled()) {
            b10.debug("-Dio.netty.noPreferDirect: {}", Boolean.valueOf(true ^ z10));
        }
        if (cVar == aVar && !u.P()) {
            b10.info("Your platform does not provide complete low-level API for accessing direct buffers reliably. Unless explicitly requested, heap buffer will always be preferred to avoid potential system instability.");
        }
        Set unmodifiableSet = Collections.unmodifiableSet(new HashSet(Arrays.asList(strArr)));
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (String str : strArr2) {
            if (((Boolean) AccessController.doPrivileged(new d(new File(str), unmodifiableSet, linkedHashSet, str))).booleanValue()) {
                break;
            }
        }
        f45170n = Collections.unmodifiableSet(linkedHashSet);
    }

    private t() {
    }

    public static void A(ByteBuffer byteBuffer) {
        int capacity = byteBuffer.capacity();
        u.p(u.k(byteBuffer));
        t(capacity);
    }

    public static Set<String> A0() {
        return f45170n;
    }

    public static byte B(long j10) {
        return u.q(j10);
    }

    public static String B0() {
        return f45168l;
    }

    public static byte C(byte[] bArr, int i9) {
        return u.r(bArr, i9);
    }

    public static long C0(Field field) {
        return u.X(field);
    }

    public static ClassLoader D(Class<?> cls) {
        return u.s(cls);
    }

    public static void D0(long j10, byte b10) {
        u.Y(j10, b10);
    }

    public static int E(long j10) {
        return u.t(j10);
    }

    public static void E0(Object obj, long j10, byte b10) {
        u.Z(obj, j10, b10);
    }

    public static int F(Object obj, long j10) {
        return u.u(obj, j10);
    }

    public static void F0(byte[] bArr, int i9, byte b10) {
        u.a0(bArr, i9, b10);
    }

    public static int G(byte[] bArr, int i9) {
        return u.v(bArr, i9);
    }

    public static void G0(long j10, int i9) {
        u.b0(j10, i9);
    }

    private static int H(byte[] bArr, int i9) {
        int i10;
        int i11;
        if (A) {
            i10 = (bArr[i9] << 24) | ((bArr[i9 + 1] & UByte.MAX_VALUE) << 16) | ((bArr[i9 + 2] & UByte.MAX_VALUE) << 8);
            i11 = bArr[i9 + 3] & UByte.MAX_VALUE;
        } else {
            i10 = (bArr[i9] & UByte.MAX_VALUE) | ((bArr[i9 + 1] & UByte.MAX_VALUE) << 8) | ((bArr[i9 + 2] & UByte.MAX_VALUE) << 16);
            i11 = bArr[i9 + 3] << 24;
        }
        return i11 | i10;
    }

    public static void H0(byte[] bArr, int i9, int i10) {
        u.c0(bArr, i9, i10);
    }

    public static long I(long j10) {
        return u.w(j10);
    }

    public static void I0(long j10, long j11) {
        u.d0(j10, j11);
    }

    public static long J(byte[] bArr, int i9) {
        return u.y(bArr, i9);
    }

    public static void J0(byte[] bArr, int i9, long j10) {
        u.e0(bArr, i9, j10);
    }

    private static long K(byte[] bArr, int i9) {
        if (A) {
            return (bArr[i9 + 7] & 255) | (bArr[i9] << 56) | ((bArr[i9 + 1] & 255) << 48) | ((bArr[i9 + 2] & 255) << 40) | ((bArr[i9 + 3] & 255) << 32) | ((bArr[i9 + 4] & 255) << 24) | ((bArr[i9 + 5] & 255) << 16) | ((bArr[i9 + 6] & 255) << 8);
        }
        long j10 = (bArr[i9] & 255) | ((bArr[i9 + 1] & 255) << 8);
        return (bArr[i9 + 7] << 56) | ((bArr[i9 + 2] & 255) << 16) | j10 | ((bArr[i9 + 3] & 255) << 24) | ((bArr[i9 + 4] & 255) << 32) | ((bArr[i9 + 5] & 255) << 40) | ((bArr[i9 + 6] & 255) << 48);
    }

    public static void K0(Object obj, long j10, Object obj2) {
        u.f0(obj, j10, obj2);
    }

    public static Object L(Object obj, long j10) {
        return u.z(obj, j10);
    }

    public static void L0(long j10, short s10) {
        u.g0(j10, s10);
    }

    public static short M(long j10) {
        return u.A(j10);
    }

    public static void M0(byte[] bArr, int i9, short s10) {
        u.h0(bArr, i9, s10);
    }

    public static short N(byte[] bArr, int i9) {
        return u.B(bArr, i9);
    }

    public static ByteBuffer N0(ByteBuffer byteBuffer, int i9) {
        int capacity = i9 - byteBuffer.capacity();
        b0(capacity);
        try {
            return u.i0(byteBuffer, i9);
        } catch (Throwable th2) {
            t(capacity);
            R0(th2);
            return null;
        }
    }

    private static short O(byte[] bArr, int i9) {
        int i10;
        int i11;
        if (A) {
            i10 = bArr[i9] << 8;
            i11 = bArr[i9 + 1] & UByte.MAX_VALUE;
        } else {
            i10 = bArr[i9] & UByte.MAX_VALUE;
            i11 = bArr[i9 + 1] << 8;
        }
        return (short) (i11 | i10);
    }

    public static void O0(long j10, long j11, byte b10) {
        u.j0(j10, j11, b10);
    }

    public static ClassLoader P() {
        return u.C();
    }

    public static void P0(byte[] bArr, int i9, long j10, byte b10) {
        u.k0(bArr, f45164h + i9, j10, b10);
    }

    public static Throwable Q() {
        return f45161e;
    }

    public static Random Q0() {
        return f45179w.current();
    }

    public static boolean R() {
        return T() || u.E();
    }

    public static void R0(Throwable th2) {
        if (T()) {
            u.l0(th2);
        } else {
            S0(th2);
        }
    }

    public static boolean S() {
        return u.G();
    }

    private static <E extends Throwable> void S0(Throwable th2) throws Throwable {
        throw th2;
    }

    public static boolean T() {
        return f45161e == null;
    }

    public static File T0() {
        return f45165i;
    }

    public static int U(CharSequence charSequence) {
        int i9;
        int length = charSequence.length();
        int i10 = length & 7;
        int i11 = -1028477387;
        if (length >= 32) {
            for (int i12 = length - 8; i12 >= i10; i12 -= 8) {
                i11 = W(charSequence, i12, i11);
            }
        } else if (length >= 8) {
            i11 = W(charSequence, length - 8, -1028477387);
            if (length >= 16) {
                i11 = W(charSequence, length - 16, i11);
                if (length >= 24) {
                    i11 = W(charSequence, length - 24, i11);
                }
            }
        }
        if (i10 == 0) {
            return i11;
        }
        if (((i10 != 2) && (i10 != 4)) && (i10 != 6)) {
            i11 = (i11 * (-862048943)) + Y(charSequence.charAt(0));
            i9 = 1;
        } else {
            i9 = 0;
        }
        if ((i10 != 1) & (i10 != 4) & (i10 != 5)) {
            i11 = (i11 * (i9 == 0 ? -862048943 : 461845907)) + u.L(a0(charSequence, i9));
            i9 += 2;
        }
        if (i10 >= 4) {
            return (i11 * (((i9 == 0) || (i9 == 3)) ? -862048943 : 461845907)) + Z(charSequence, i9);
        }
        return i11;
    }

    private static File U0() {
        File file;
        File V0;
        try {
            V0 = V0(c0.b("io.grpc.netty.shaded.io.netty.tmpdir"));
        } catch (Throwable unused) {
        }
        if (V0 != null) {
            f45157a.debug("-Dio.netty.tmpdir: {}", V0);
            return V0;
        }
        File V02 = V0(c0.b("java.io.tmpdir"));
        if (V02 != null) {
            f45157a.debug("-Dio.netty.tmpdir: {} (java.io.tmpdir)", V02);
            return V02;
        }
        if (j0()) {
            File V03 = V0(System.getenv("TEMP"));
            if (V03 != null) {
                f45157a.debug("-Dio.netty.tmpdir: {} (%TEMP%)", V03);
                return V03;
            }
            String str = System.getenv("USERPROFILE");
            if (str != null) {
                File V04 = V0(str + "\\AppData\\Local\\Temp");
                if (V04 != null) {
                    f45157a.debug("-Dio.netty.tmpdir: {} (%USERPROFILE%\\AppData\\Local\\Temp)", V04);
                    return V04;
                }
                File V05 = V0(str + "\\Local Settings\\Temp");
                if (V05 != null) {
                    f45157a.debug("-Dio.netty.tmpdir: {} (%USERPROFILE%\\Local Settings\\Temp)", V05);
                    return V05;
                }
            }
        } else {
            File V06 = V0(System.getenv("TMPDIR"));
            if (V06 != null) {
                f45157a.debug("-Dio.netty.tmpdir: {} ($TMPDIR)", V06);
                return V06;
            }
        }
        if (j0()) {
            file = new File("C:\\Windows\\Temp");
        } else {
            file = new File("/tmp");
        }
        f45157a.warn("Failed to get the temporary directory; falling back to: {}", file);
        return file;
    }

    public static int V(byte[] bArr, int i9, int i10) {
        if (T() && u.m0()) {
            return u.I(bArr, i9, i10);
        }
        return X(bArr, i9, i10);
    }

    private static File V0(String str) {
        if (str == null) {
            return null;
        }
        File file = new File(str);
        file.mkdirs();
        if (file.isDirectory()) {
            try {
                return file.getAbsoluteFile();
            } catch (Exception unused) {
                return file;
            }
        }
        return null;
    }

    private static int W(CharSequence charSequence, int i9, int i10) {
        int Z;
        int Z2;
        if (A) {
            Z = (i10 * (-862048943)) + (Z(charSequence, i9 + 4) * 461845907);
            Z2 = Z(charSequence, i9);
        } else {
            Z = (i10 * (-862048943)) + (Z(charSequence, i9) * 461845907);
            Z2 = Z(charSequence, i9 + 4);
        }
        return Z + Z2;
    }

    private static Throwable W0() {
        if (c0()) {
            f45157a.debug("sun.misc.Unsafe: unavailable (Android)");
            return new UnsupportedOperationException("sun.misc.Unsafe: unavailable (Android)");
        } else if (d0()) {
            f45157a.debug("sun.misc.Unsafe: unavailable (IKVM.NET)");
            return new UnsupportedOperationException("sun.misc.Unsafe: unavailable (IKVM.NET)");
        } else {
            Throwable D = u.D();
            if (D != null) {
                return D;
            }
            try {
                boolean H = u.H();
                f45157a.debug("sun.misc.Unsafe: {}", H ? "available" : "unavailable");
                if (H) {
                    return null;
                }
                return u.D();
            } catch (Throwable th2) {
                f45157a.trace("Could not determine if Unsafe is available", th2);
                return new UnsupportedOperationException("Could not determine if Unsafe is available", th2);
            }
        }
    }

    static int X(byte[] bArr, int i9, int i10) {
        int i11;
        int K;
        int i12 = i10 & 7;
        int i13 = i9 + i12;
        int i14 = -1028477387;
        for (int i15 = (i9 - 8) + i10; i15 >= i13; i15 -= 8) {
            i14 = u.J(K(bArr, i15), i14);
        }
        switch (i12) {
            case 1:
                i11 = i14 * (-862048943);
                K = u.K(bArr[i9]);
                break;
            case 2:
                i11 = i14 * (-862048943);
                K = u.M(O(bArr, i9));
                break;
            case 3:
                i11 = ((i14 * (-862048943)) + u.K(bArr[i9])) * 461845907;
                K = u.M(O(bArr, i9 + 1));
                break;
            case 4:
                i11 = i14 * (-862048943);
                K = u.L(H(bArr, i9));
                break;
            case 5:
                i11 = ((i14 * (-862048943)) + u.K(bArr[i9])) * 461845907;
                K = u.L(H(bArr, i9 + 1));
                break;
            case 6:
                i11 = ((i14 * (-862048943)) + u.M(O(bArr, i9))) * 461845907;
                K = u.L(H(bArr, i9 + 2));
                break;
            case 7:
                i11 = ((((i14 * (-862048943)) + u.K(bArr[i9])) * 461845907) + u.M(O(bArr, i9 + 1))) * (-862048943);
                K = u.L(H(bArr, i9 + 3));
                break;
            default:
                return i14;
        }
        return i11 + K;
    }

    public static boolean X0() {
        return f45176t;
    }

    private static int Y(char c10) {
        return c10 & 31;
    }

    private static int Z(CharSequence charSequence, int i9) {
        int charAt;
        int charAt2;
        if (A) {
            charAt = (charSequence.charAt(i9 + 3) & 31) | ((charSequence.charAt(i9 + 2) & 31) << 8) | ((charSequence.charAt(i9 + 1) & 31) << 16);
            charAt2 = (charSequence.charAt(i9) & 31) << 24;
        } else {
            charAt = ((charSequence.charAt(i9 + 3) & 31) << 24) | ((charSequence.charAt(i9 + 2) & 31) << 16) | ((charSequence.charAt(i9 + 1) & 31) << 8);
            charAt2 = charSequence.charAt(i9) & 31;
        }
        return charAt2 | charAt;
    }

    private static int a0(CharSequence charSequence, int i9) {
        int charAt;
        int charAt2;
        if (A) {
            charAt = charSequence.charAt(i9 + 1) & 31;
            charAt2 = (charSequence.charAt(i9) & 31) << 8;
        } else {
            charAt = (charSequence.charAt(i9 + 1) & 31) << 8;
            charAt2 = charSequence.charAt(i9) & 31;
        }
        return charAt2 | charAt;
    }

    private static void b0(int i9) {
        long j10;
        AtomicLong atomicLong = f45177u;
        if (atomicLong != null) {
            long addAndGet = atomicLong.addAndGet(i9);
            long j11 = f45178v;
            if (addAndGet <= j11) {
                return;
            }
            atomicLong.addAndGet(-i9);
            throw new OutOfDirectMemoryError("failed to allocate " + i9 + " byte(s) of direct memory (used: " + (addAndGet - j10) + ", max: " + j11 + ')');
        }
    }

    public static boolean c0() {
        return u.N();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(Set<String> set, Set<String> set2, String... strArr) {
        for (String str : strArr) {
            if (set.contains(str)) {
                set2.add(str);
            }
        }
    }

    public static boolean d0() {
        return f45174r;
    }

    public static int e() {
        return f45175s;
    }

    private static boolean e0() {
        return c0.c("java.vm.name", "").toUpperCase(Locale.US).equals("IKVM.NET");
    }

    private static int f() {
        if (T()) {
            return u.b();
        }
        return -1;
    }

    private static boolean f0() {
        String lowerCase = c0.c("java.vm.name", "").toLowerCase();
        return lowerCase.startsWith("ibm j9") || lowerCase.startsWith("eclipse openj9");
    }

    public static long g(long j10, int i9) {
        return wg.a.a(j10, i9);
    }

    public static boolean g0() {
        return f45172p;
    }

    public static ByteBuffer h(ByteBuffer byteBuffer, int i9) {
        if (byteBuffer.isDirect()) {
            if (u.E()) {
                return u.c(byteBuffer, i9);
            }
            if (T()) {
                long u10 = u(byteBuffer);
                byteBuffer.position((int) (g(u10, i9) - u10));
                return byteBuffer.slice();
            }
            throw new UnsupportedOperationException("Cannot align direct buffer. Needs either Unsafe or ByteBuffer.alignSlice method available.");
        }
        throw new IllegalArgumentException("Cannot get aligned slice of non-direct byte buffer.");
    }

    private static boolean h0() {
        boolean equals = "osx".equals(f45168l);
        if (equals) {
            f45157a.debug("Platform: MacOS");
        }
        return equals;
    }

    public static ByteBuffer i(int i9) {
        b0(i9);
        try {
            return u.d(i9);
        } catch (Throwable th2) {
            t(i9);
            R0(th2);
            return null;
        }
    }

    public static boolean i0() {
        return u.R();
    }

    public static byte[] j(int i9) {
        int i10 = f45181y;
        if (i10 >= 0 && i10 <= i9) {
            return u.e(i9);
        }
        return new byte[i9];
    }

    public static boolean j0() {
        return f45171o;
    }

    private static int k() {
        int e10 = c0.e("io.grpc.netty.shaded.io.netty.bitMode", 0);
        if (e10 > 0) {
            f45157a.debug("-Dio.netty.bitMode: {}", Integer.valueOf(e10));
            return e10;
        }
        int e11 = c0.e("sun.arch.data.model", 0);
        if (e11 > 0) {
            f45157a.debug("-Dio.netty.bitMode: {} (sun.arch.data.model)", Integer.valueOf(e11));
            return e11;
        }
        int e12 = c0.e("com.ibm.vm.bitmode", 0);
        if (e12 > 0) {
            f45157a.debug("-Dio.netty.bitMode: {} (com.ibm.vm.bitmode)", Integer.valueOf(e12));
            return e12;
        }
        String c10 = c0.c("os.arch", "");
        Locale locale = Locale.US;
        String trim = c10.toLowerCase(locale).trim();
        if ("amd64".equals(trim) || "x86_64".equals(trim)) {
            e12 = 64;
        } else if ("i386".equals(trim) || "i486".equals(trim) || "i586".equals(trim) || "i686".equals(trim)) {
            e12 = 32;
        }
        if (e12 > 0) {
            f45157a.debug("-Dio.netty.bitMode: {} (os.arch: {})", Integer.valueOf(e12), trim);
        }
        Matcher matcher = Pattern.compile("([1-9][0-9]+)-?bit").matcher(c0.c("java.vm.name", "").toLowerCase(locale));
        if (matcher.find()) {
            return Integer.parseInt(matcher.group(1));
        }
        return 64;
    }

    private static boolean k0() {
        boolean equals = "windows".equals(f45168l);
        if (equals) {
            f45157a.debug("Platform: Windows");
        }
        return equals;
    }

    public static long l() {
        return f45164h;
    }

    public static int l0() {
        return u.S();
    }

    private static long m() {
        if (T()) {
            return u.f();
        }
        return -1L;
    }

    public static long m0() {
        return f45178v;
    }

    public static boolean n() {
        return f45160d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x008d, code lost:
        r6 = java.lang.Long.parseLong(r8.group(1));
        r0 = r8.group(2).charAt(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00a0, code lost:
        if (r0 == 'G') goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00a4, code lost:
        if (r0 == 'K') goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00a8, code lost:
        if (r0 == 'M') goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00ac, code lost:
        if (r0 == 'g') goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00b0, code lost:
        if (r0 == 'k') goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b4, code lost:
        if (r0 == 'm') goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00b7, code lost:
        r3 = android.support.v4.media.session.PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00bb, code lost:
        r3 = 1024;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00be, code lost:
        r3 = 1073741824;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00c1, code lost:
        r6 = r6 * r3;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0046 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0047 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long n0() {
        /*
            r0 = 0
            r1 = 0
            r3 = 1
            r4 = 0
            java.lang.ClassLoader r5 = P()     // Catch: java.lang.Throwable -> L40
            java.lang.String r6 = "java.vm.name"
            java.lang.String r7 = ""
            java.lang.String r6 = io.grpc.netty.shaded.io.netty.util.internal.c0.c(r6, r7)     // Catch: java.lang.Throwable -> L41
            java.lang.String r6 = r6.toLowerCase()     // Catch: java.lang.Throwable -> L41
            java.lang.String r7 = "ibm j9"
            boolean r7 = r6.startsWith(r7)     // Catch: java.lang.Throwable -> L41
            if (r7 != 0) goto L41
            java.lang.String r7 = "eclipse openj9"
            boolean r6 = r6.startsWith(r7)     // Catch: java.lang.Throwable -> L41
            if (r6 != 0) goto L41
            java.lang.String r6 = "sun.misc.VM"
            java.lang.Class r6 = java.lang.Class.forName(r6, r3, r5)     // Catch: java.lang.Throwable -> L41
            java.lang.String r7 = "maxDirectMemory"
            java.lang.Class[] r8 = new java.lang.Class[r4]     // Catch: java.lang.Throwable -> L41
            java.lang.reflect.Method r6 = r6.getDeclaredMethod(r7, r8)     // Catch: java.lang.Throwable -> L41
            java.lang.Object[] r7 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> L41
            java.lang.Object r6 = r6.invoke(r0, r7)     // Catch: java.lang.Throwable -> L41
            java.lang.Number r6 = (java.lang.Number) r6     // Catch: java.lang.Throwable -> L41
            long r6 = r6.longValue()     // Catch: java.lang.Throwable -> L41
            goto L42
        L40:
            r5 = r0
        L41:
            r6 = r1
        L42:
            int r8 = (r6 > r1 ? 1 : (r6 == r1 ? 0 : -1))
            if (r8 <= 0) goto L47
            return r6
        L47:
            java.lang.String r8 = "java.lang.management.ManagementFactory"
            java.lang.Class r8 = java.lang.Class.forName(r8, r3, r5)     // Catch: java.lang.Throwable -> Lc4
            java.lang.String r9 = "java.lang.management.RuntimeMXBean"
            java.lang.Class r5 = java.lang.Class.forName(r9, r3, r5)     // Catch: java.lang.Throwable -> Lc4
            java.lang.String r9 = "getRuntimeMXBean"
            java.lang.Class[] r10 = new java.lang.Class[r4]     // Catch: java.lang.Throwable -> Lc4
            java.lang.reflect.Method r8 = r8.getDeclaredMethod(r9, r10)     // Catch: java.lang.Throwable -> Lc4
            java.lang.Object[] r9 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> Lc4
            java.lang.Object r0 = r8.invoke(r0, r9)     // Catch: java.lang.Throwable -> Lc4
            java.lang.String r8 = "getInputArguments"
            java.lang.Class[] r9 = new java.lang.Class[r4]     // Catch: java.lang.Throwable -> Lc4
            java.lang.reflect.Method r5 = r5.getDeclaredMethod(r8, r9)     // Catch: java.lang.Throwable -> Lc4
            java.lang.Object[] r8 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> Lc4
            java.lang.Object r0 = r5.invoke(r0, r8)     // Catch: java.lang.Throwable -> Lc4
            java.util.List r0 = (java.util.List) r0     // Catch: java.lang.Throwable -> Lc4
            int r5 = r0.size()     // Catch: java.lang.Throwable -> Lc4
            int r5 = r5 - r3
        L76:
            if (r5 < 0) goto Lc5
            java.util.regex.Pattern r8 = io.grpc.netty.shaded.io.netty.util.internal.t.f45158b     // Catch: java.lang.Throwable -> Lc4
            java.lang.Object r9 = r0.get(r5)     // Catch: java.lang.Throwable -> Lc4
            java.lang.CharSequence r9 = (java.lang.CharSequence) r9     // Catch: java.lang.Throwable -> Lc4
            java.util.regex.Matcher r8 = r8.matcher(r9)     // Catch: java.lang.Throwable -> Lc4
            boolean r9 = r8.matches()     // Catch: java.lang.Throwable -> Lc4
            if (r9 != 0) goto L8d
            int r5 = r5 + (-1)
            goto L76
        L8d:
            java.lang.String r0 = r8.group(r3)     // Catch: java.lang.Throwable -> Lc4
            long r6 = java.lang.Long.parseLong(r0)     // Catch: java.lang.Throwable -> Lc4
            r0 = 2
            java.lang.String r0 = r8.group(r0)     // Catch: java.lang.Throwable -> Lc4
            char r0 = r0.charAt(r4)     // Catch: java.lang.Throwable -> Lc4
            r3 = 71
            if (r0 == r3) goto Lbe
            r3 = 75
            if (r0 == r3) goto Lbb
            r3 = 77
            if (r0 == r3) goto Lb7
            r3 = 103(0x67, float:1.44E-43)
            if (r0 == r3) goto Lbe
            r3 = 107(0x6b, float:1.5E-43)
            if (r0 == r3) goto Lbb
            r3 = 109(0x6d, float:1.53E-43)
            if (r0 == r3) goto Lb7
            goto Lc5
        Lb7:
            r3 = 1048576(0x100000, double:5.180654E-318)
            goto Lc1
        Lbb:
            r3 = 1024(0x400, double:5.06E-321)
            goto Lc1
        Lbe:
            r3 = 1073741824(0x40000000, double:5.304989477E-315)
        Lc1:
            long r6 = r6 * r3
            goto Lc5
        Lc4:
        Lc5:
            int r0 = (r6 > r1 ? 1 : (r6 == r1 ? 0 : -1))
            if (r0 > 0) goto Ldd
            java.lang.Runtime r0 = java.lang.Runtime.getRuntime()
            long r6 = r0.maxMemory()
            io.grpc.netty.shaded.io.netty.util.internal.logging.b r0 = io.grpc.netty.shaded.io.netty.util.internal.t.f45157a
            java.lang.Long r1 = java.lang.Long.valueOf(r6)
            java.lang.String r2 = "maxDirectMemory: {} bytes (maybe)"
            r0.debug(r2, r1)
            goto Le8
        Ldd:
            io.grpc.netty.shaded.io.netty.util.internal.logging.b r0 = io.grpc.netty.shaded.io.netty.util.internal.t.f45157a
            java.lang.Long r1 = java.lang.Long.valueOf(r6)
            java.lang.String r2 = "maxDirectMemory: {} bytes"
            r0.debug(r2, r1)
        Le8:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.netty.shaded.io.netty.util.internal.t.n0():long");
    }

    public static void o(long j10, long j11, long j12) {
        u.g(j10, j11, j12);
    }

    private static boolean o0() {
        String b10 = c0.b("user.name");
        if (j0()) {
            return "Administrator".equals(b10);
        }
        return "root".equals(b10) || "toor".equals(b10);
    }

    public static void p(long j10, byte[] bArr, int i9, long j11) {
        u.h(null, j10, bArr, f45164h + i9, j11);
    }

    public static <K, V> ConcurrentMap<K, V> p0() {
        return new ConcurrentHashMap();
    }

    public static void q(byte[] bArr, int i9, long j10, long j11) {
        u.h(bArr, f45164h + i9, null, j10, j11);
    }

    public static <T> Queue<T> q0(int i9) {
        return T() ? new vg.m(i9) : new io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.j(i9);
    }

    public static void r(byte[] bArr, int i9, byte[] bArr2, int i10, long j10) {
        long j11 = f45164h;
        u.h(bArr, j11 + i9, bArr2, j11 + i10, j10);
    }

    public static m r0() {
        if (l0() >= 8) {
            return new l();
        }
        return new e(null);
    }

    public static File s(String str, String str2, File file) throws IOException {
        if (l0() >= 7) {
            if (file == null) {
                return Files.createTempFile(str, str2, new FileAttribute[0]).toFile();
            }
            return Files.createTempFile(file.toPath(), str, str2, new FileAttribute[0]).toFile();
        } else if (file == null) {
            return File.createTempFile(str, str2);
        } else {
            File createTempFile = File.createTempFile(str, str2, file);
            createTempFile.setReadable(false, false);
            createTempFile.setReadable(true, true);
            return createTempFile;
        }
    }

    public static <T> Queue<T> s0() {
        return f.b();
    }

    private static void t(int i9) {
        AtomicLong atomicLong = f45177u;
        if (atomicLong != null) {
            atomicLong.addAndGet(-i9);
        }
    }

    public static <T> Queue<T> t0(int i9) {
        return f.c(i9);
    }

    public static long u(ByteBuffer byteBuffer) {
        return u.k(byteBuffer);
    }

    public static <T> Queue<T> u0(int i9, int i10) {
        return f.a(i9, i10);
    }

    public static boolean v() {
        return f45162f;
    }

    private static String v0(String str) {
        return str.toLowerCase(Locale.US).replaceAll("[^a-z0-9]+", "");
    }

    public static boolean w(byte[] bArr, int i9, byte[] bArr2, int i10, int i11) {
        if (T() && u.m0()) {
            return u.l(bArr, i9, bArr2, i10, i11);
        }
        return y(bArr, i9, bArr2, i10, i11);
    }

    private static String w0(String str) {
        String v02 = v0(str);
        return v02.matches("^(x8664|amd64|ia32e|em64t|x64)$") ? "x86_64" : v02.matches("^(x8632|x86|i[3-6]86|ia32|x32)$") ? "x86_32" : v02.matches("^(ia64|itanium64)$") ? "itanium_64" : v02.matches("^(sparc|sparc32)$") ? "sparc_32" : v02.matches("^(sparcv9|sparc64)$") ? "sparc_64" : v02.matches("^(arm|arm32)$") ? "arm_32" : "aarch64".equals(v02) ? "aarch_64" : v02.matches("^(ppc|ppc32)$") ? "ppc_32" : "ppc64".equals(v02) ? "ppc_64" : "ppc64le".equals(v02) ? "ppcle_64" : "s390".equals(v02) ? "s390_32" : "s390x".equals(v02) ? "s390_64" : "unknown";
    }

    public static int x(byte[] bArr, int i9, byte[] bArr2, int i10, int i11) {
        if (T() && u.m0()) {
            return u.m(bArr, i9, bArr2, i10, i11);
        }
        return io.grpc.netty.shaded.io.netty.util.internal.f.d(bArr, i9, bArr2, i10, i11);
    }

    private static String x0(String str) {
        String v02 = v0(str);
        if (v02.startsWith("aix")) {
            return "aix";
        }
        if (v02.startsWith("hpux")) {
            return "hpux";
        }
        if (!v02.startsWith("os400") || (v02.length() > 5 && Character.isDigit(v02.charAt(5)))) {
            if (v02.startsWith("linux")) {
                return "linux";
            }
            String str2 = "osx";
            if (!v02.startsWith("macosx") && !v02.startsWith("osx") && !v02.startsWith("darwin")) {
                if (v02.startsWith("freebsd")) {
                    return "freebsd";
                }
                if (v02.startsWith("openbsd")) {
                    return "openbsd";
                }
                if (v02.startsWith("netbsd")) {
                    return "netbsd";
                }
                str2 = "sunos";
                if (!v02.startsWith("solaris") && !v02.startsWith("sunos")) {
                    return v02.startsWith("windows") ? "windows" : "unknown";
                }
            }
            return str2;
        }
        return "os400";
    }

    private static boolean y(byte[] bArr, int i9, byte[] bArr2, int i10, int i11) {
        int i12 = i11 + i9;
        while (i9 < i12) {
            if (bArr[i9] != bArr2[i10]) {
                return false;
            }
            i9++;
            i10++;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String y0(String str) {
        return str.trim().replaceAll("[\"']", "");
    }

    public static void z(ByteBuffer byteBuffer) {
        f45180x.a(byteBuffer);
    }

    public static String z0() {
        return f45167k;
    }
}
