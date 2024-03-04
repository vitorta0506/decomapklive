package kg;

import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import com.tencent.ugc.datereport.UGCDataReportDef;
import io.jsonwebtoken.JwtParser;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kg.v;
/* loaded from: classes5.dex */
public class d0 extends kg.b {
    public static final d0 A;

    /* renamed from: n  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f53776n = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(d0.class);

    /* renamed from: o  reason: collision with root package name */
    private static final int f53777o;

    /* renamed from: p  reason: collision with root package name */
    private static final int f53778p;

    /* renamed from: q  reason: collision with root package name */
    private static final int f53779q;

    /* renamed from: r  reason: collision with root package name */
    private static final int f53780r;

    /* renamed from: s  reason: collision with root package name */
    private static final int f53781s;

    /* renamed from: t  reason: collision with root package name */
    private static final int f53782t;

    /* renamed from: u  reason: collision with root package name */
    static final int f53783u;

    /* renamed from: v  reason: collision with root package name */
    private static final int f53784v;

    /* renamed from: w  reason: collision with root package name */
    private static final long f53785w;

    /* renamed from: x  reason: collision with root package name */
    private static final boolean f53786x;

    /* renamed from: y  reason: collision with root package name */
    private static final int f53787y;

    /* renamed from: z  reason: collision with root package name */
    static final int f53788z;

    /* renamed from: d  reason: collision with root package name */
    private final Runnable f53789d;

    /* renamed from: e  reason: collision with root package name */
    private final v<byte[]>[] f53790e;

    /* renamed from: f  reason: collision with root package name */
    private final v<ByteBuffer>[] f53791f;

    /* renamed from: g  reason: collision with root package name */
    private final int f53792g;

    /* renamed from: h  reason: collision with root package name */
    private final int f53793h;

    /* renamed from: i  reason: collision with root package name */
    private final List<Object> f53794i;

    /* renamed from: j  reason: collision with root package name */
    private final List<Object> f53795j;

    /* renamed from: k  reason: collision with root package name */
    private final b f53796k;

    /* renamed from: l  reason: collision with root package name */
    private final int f53797l;

    /* renamed from: m  reason: collision with root package name */
    private final e0 f53798m;

    /* loaded from: classes5.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d0.this.R();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public final class b extends ug.n<b0> {

        /* renamed from: c  reason: collision with root package name */
        private final boolean f53800c;

        b(boolean z10) {
            this.f53800c = z10;
        }

        private <T> v<T> p(v<T>[] vVarArr) {
            if (vVarArr == null || vVarArr.length == 0) {
                return null;
            }
            v<T> vVar = vVarArr[0];
            for (int i9 = 1; i9 < vVarArr.length; i9++) {
                v<T> vVar2 = vVarArr[i9];
                if (vVar2.F.get() < vVar.F.get()) {
                    vVar = vVar2;
                }
            }
            return vVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // ug.n
        /* renamed from: o */
        public synchronized b0 e() {
            ug.j e10;
            v p10 = p(d0.this.f53790e);
            v p11 = p(d0.this.f53791f);
            Thread currentThread = Thread.currentThread();
            if (!this.f53800c && !(currentThread instanceof ug.p)) {
                return new b0(p10, p11, 0, 0, 0, 0);
            }
            b0 b0Var = new b0(p10, p11, d0.this.f53792g, d0.this.f53793h, d0.f53783u, d0.f53784v);
            if (d0.f53785w > 0 && (e10 = io.grpc.netty.shaded.io.netty.util.internal.d0.e()) != null) {
                e10.scheduleAtFixedRate(d0.this.f53789d, d0.f53785w, d0.f53785w, TimeUnit.MILLISECONDS);
            }
            return b0Var;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // ug.n
        /* renamed from: q */
        public void g(b0 b0Var) {
            b0Var.m(false);
        }
    }

    static {
        Object obj;
        int e10 = io.grpc.netty.shaded.io.netty.util.internal.c0.e("io.grpc.netty.shaded.io.netty.allocator.directMemoryCacheAlignment", 0);
        int e11 = io.grpc.netty.shaded.io.netty.util.internal.c0.e("io.grpc.netty.shaded.io.netty.allocator.pageSize", 8192);
        Object obj2 = null;
        try {
            W(e11, e10);
            obj = null;
        } catch (Throwable th2) {
            obj = th2;
            e10 = 0;
            e11 = 8192;
        }
        f53779q = e11;
        f53787y = e10;
        int i9 = 11;
        int e12 = io.grpc.netty.shaded.io.netty.util.internal.c0.e("io.grpc.netty.shaded.io.netty.allocator.maxOrder", 11);
        try {
            V(e11, e12);
            i9 = e12;
        } catch (Throwable th3) {
            obj2 = th3;
        }
        f53780r = i9;
        Runtime runtime = Runtime.getRuntime();
        int i10 = f53779q;
        long a10 = io.grpc.netty.shaded.io.netty.util.p.a() * 2;
        long j10 = i10 << i9;
        int max = Math.max(0, io.grpc.netty.shaded.io.netty.util.internal.c0.e("io.grpc.netty.shaded.io.netty.allocator.numHeapArenas", (int) Math.min(a10, ((runtime.maxMemory() / j10) / 2) / 3)));
        f53777o = max;
        int max2 = Math.max(0, io.grpc.netty.shaded.io.netty.util.internal.c0.e("io.grpc.netty.shaded.io.netty.allocator.numDirectArenas", (int) Math.min(a10, ((io.grpc.netty.shaded.io.netty.util.internal.t.m0() / j10) / 2) / 3)));
        f53778p = max2;
        int e13 = io.grpc.netty.shaded.io.netty.util.internal.c0.e("io.grpc.netty.shaded.io.netty.allocator.smallCacheSize", 256);
        f53781s = e13;
        int e14 = io.grpc.netty.shaded.io.netty.util.internal.c0.e("io.grpc.netty.shaded.io.netty.allocator.normalCacheSize", 64);
        f53782t = e14;
        int e15 = io.grpc.netty.shaded.io.netty.util.internal.c0.e("io.grpc.netty.shaded.io.netty.allocator.maxCachedBufferCapacity", 32768);
        f53783u = e15;
        int e16 = io.grpc.netty.shaded.io.netty.util.internal.c0.e("io.grpc.netty.shaded.io.netty.allocator.cacheTrimInterval", 8192);
        f53784v = e16;
        if (io.grpc.netty.shaded.io.netty.util.internal.c0.a("io.grpc.netty.shaded.io.netty.allocation.cacheTrimIntervalMillis")) {
            f53776n.warn("-Dio.netty.allocation.cacheTrimIntervalMillis is deprecated, use -Dio.netty.allocator.cacheTrimIntervalMillis");
            if (io.grpc.netty.shaded.io.netty.util.internal.c0.a("io.grpc.netty.shaded.io.netty.allocator.cacheTrimIntervalMillis")) {
                f53785w = io.grpc.netty.shaded.io.netty.util.internal.c0.f("io.grpc.netty.shaded.io.netty.allocator.cacheTrimIntervalMillis", 0L);
            } else {
                f53785w = io.grpc.netty.shaded.io.netty.util.internal.c0.f("io.grpc.netty.shaded.io.netty.allocation.cacheTrimIntervalMillis", 0L);
            }
        } else {
            f53785w = io.grpc.netty.shaded.io.netty.util.internal.c0.f("io.grpc.netty.shaded.io.netty.allocator.cacheTrimIntervalMillis", 0L);
        }
        boolean d10 = io.grpc.netty.shaded.io.netty.util.internal.c0.d("io.grpc.netty.shaded.io.netty.allocator.useCacheForAllThreads", true);
        f53786x = d10;
        int e17 = io.grpc.netty.shaded.io.netty.util.internal.c0.e("io.grpc.netty.shaded.io.netty.allocator.maxCachedByteBuffersPerChunk", UGCDataReportDef.DR_DAU_EVENT_ID_EDIT_FILTER);
        f53788z = e17;
        io.grpc.netty.shaded.io.netty.util.internal.logging.b bVar = f53776n;
        if (bVar.isDebugEnabled()) {
            bVar.debug("-Dio.netty.allocator.numHeapArenas: {}", Integer.valueOf(max));
            bVar.debug("-Dio.netty.allocator.numDirectArenas: {}", Integer.valueOf(max2));
            if (obj == null) {
                bVar.debug("-Dio.netty.allocator.pageSize: {}", Integer.valueOf(i10));
            } else {
                bVar.debug("-Dio.netty.allocator.pageSize: {}", Integer.valueOf(i10), obj);
            }
            if (obj2 == null) {
                bVar.debug("-Dio.netty.allocator.maxOrder: {}", Integer.valueOf(i9));
            } else {
                bVar.debug("-Dio.netty.allocator.maxOrder: {}", Integer.valueOf(i9), obj2);
            }
            bVar.debug("-Dio.netty.allocator.chunkSize: {}", Integer.valueOf(i10 << i9));
            bVar.debug("-Dio.netty.allocator.smallCacheSize: {}", Integer.valueOf(e13));
            bVar.debug("-Dio.netty.allocator.normalCacheSize: {}", Integer.valueOf(e14));
            bVar.debug("-Dio.netty.allocator.maxCachedBufferCapacity: {}", Integer.valueOf(e15));
            bVar.debug("-Dio.netty.allocator.cacheTrimInterval: {}", Integer.valueOf(e16));
            bVar.debug("-Dio.netty.allocator.cacheTrimIntervalMillis: {}", Long.valueOf(f53785w));
            bVar.debug("-Dio.netty.allocator.useCacheForAllThreads: {}", Boolean.valueOf(d10));
            bVar.debug("-Dio.netty.allocator.maxCachedByteBuffersPerChunk: {}", Integer.valueOf(e17));
        }
        A = new d0(io.grpc.netty.shaded.io.netty.util.internal.t.v());
    }

    public d0() {
        this(false);
    }

    public static int B() {
        return f53780r;
    }

    public static int C() {
        return f53782t;
    }

    public static int D() {
        return f53778p;
    }

    public static int E() {
        return f53777o;
    }

    public static int F() {
        return f53779q;
    }

    public static boolean G() {
        return io.grpc.netty.shaded.io.netty.util.internal.t.v();
    }

    public static int H() {
        return f53781s;
    }

    public static boolean I() {
        return f53786x;
    }

    public static boolean J() {
        return io.grpc.netty.shaded.io.netty.util.internal.t.T();
    }

    private static <T> v<T>[] K(int i9) {
        return new v[i9];
    }

    private static long U(v<?>[] vVarArr) {
        if (vVarArr == null) {
            return -1L;
        }
        long j10 = 0;
        for (v<?> vVar : vVarArr) {
            j10 += vVar.F();
            if (j10 < 0) {
                return Long.MAX_VALUE;
            }
        }
        return j10;
    }

    private static int V(int i9, int i10) {
        if (i10 > 14) {
            throw new IllegalArgumentException("maxOrder: " + i10 + " (expected: 0-14)");
        }
        int i11 = i9;
        for (int i12 = i10; i12 > 0; i12--) {
            if (i11 > 536870912) {
                throw new IllegalArgumentException(String.format("pageSize (%d) << maxOrder (%d) must not exceed %d", Integer.valueOf(i9), Integer.valueOf(i10), Integer.valueOf((int) BasicMeasure.EXACTLY)));
            }
            i11 <<= 1;
        }
        return i11;
    }

    private static int W(int i9, int i10) {
        if (i9 < 4096) {
            throw new IllegalArgumentException("pageSize: " + i9 + " (expected: 4096)");
        } else if (((i9 - 1) & i9) != 0) {
            throw new IllegalArgumentException("pageSize: " + i9 + " (expected: power of 2)");
        } else if (i9 >= i10) {
            return 31 - Integer.numberOfLeadingZeros(i9);
        } else {
            throw new IllegalArgumentException("Alignment cannot be greater than page size. Alignment: " + i10 + ", page size: " + i9 + JwtParser.SEPARATOR_CHAR);
        }
    }

    @Deprecated
    public final int A() {
        return this.f53797l;
    }

    @Deprecated
    public int L() {
        return this.f53793h;
    }

    @Deprecated
    public int M() {
        return this.f53795j.size();
    }

    @Deprecated
    public int N() {
        return this.f53794i.size();
    }

    @Deprecated
    public int O() {
        v[] vVarArr = this.f53790e;
        if (vVarArr == null) {
            vVarArr = this.f53791f;
        }
        if (vVarArr == null) {
            return 0;
        }
        int i9 = 0;
        for (v vVar : vVarArr) {
            i9 += vVar.F.get();
        }
        return i9;
    }

    @Deprecated
    public int P() {
        return this.f53792g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final b0 Q() {
        return this.f53796k.b();
    }

    public boolean R() {
        b0 d10 = this.f53796k.d();
        if (d10 != null) {
            d10.o();
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long S() {
        return U(this.f53791f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long T() {
        return U(this.f53790e);
    }

    @Override // kg.k
    public boolean e() {
        return this.f53791f != null;
    }

    @Override // kg.b
    protected j o(int i9, int i10) {
        j w6;
        b0 b10 = this.f53796k.b();
        v<ByteBuffer> vVar = b10.f53740b;
        if (vVar != null) {
            w6 = vVar.m(b10, i9, i10);
        } else {
            w6 = io.grpc.netty.shaded.io.netty.util.internal.t.T() ? c1.w(this, i9, i10) : new u0(this, i9, i10);
        }
        return kg.b.q(w6);
    }

    @Override // kg.b
    protected j p(int i9, int i10) {
        e z0Var;
        b0 b10 = this.f53796k.b();
        v<byte[]> vVar = b10.f53739a;
        if (vVar != null) {
            z0Var = vVar.m(b10, i9, i10);
        } else {
            z0Var = io.grpc.netty.shaded.io.netty.util.internal.t.T() ? new z0(this, i9, i10) : new w0(this, i9, i10);
        }
        return kg.b.q(z0Var);
    }

    public d0(boolean z10) {
        this(z10, f53777o, f53778p, f53779q, f53780r);
    }

    @Deprecated
    public d0(boolean z10, int i9, int i10, int i11, int i12) {
        this(z10, i9, i10, i11, i12, 0, f53781s, f53782t);
    }

    @Deprecated
    public d0(boolean z10, int i9, int i10, int i11, int i12, int i13, int i14, int i15) {
        this(z10, i9, i10, i11, i12, i14, i15, f53786x, f53787y);
    }

    public d0(boolean z10, int i9, int i10, int i11, int i12, int i13, int i14, boolean z11) {
        this(z10, i9, i10, i11, i12, i13, i14, z11, f53787y);
    }

    public d0(boolean z10, int i9, int i10, int i11, int i12, int i13, int i14, boolean z11, int i15) {
        super(z10);
        int i16;
        int i17;
        this.f53789d = new a();
        this.f53796k = new b(z11);
        this.f53792g = i13;
        this.f53793h = i14;
        if (i15 == 0) {
            i16 = i11;
            i17 = i12;
        } else if (io.grpc.netty.shaded.io.netty.util.internal.t.R()) {
            i17 = i12;
            i16 = (int) io.grpc.netty.shaded.io.netty.util.internal.t.g(i11, i15);
        } else {
            throw new UnsupportedOperationException("Buffer alignment is not supported. Either Unsafe or ByteBuffer.alignSlice() must be available.");
        }
        this.f53797l = V(i16, i17);
        io.grpc.netty.shaded.io.netty.util.internal.s.n(i9, "nHeapArena");
        io.grpc.netty.shaded.io.netty.util.internal.s.n(i10, "nDirectArena");
        io.grpc.netty.shaded.io.netty.util.internal.s.n(i15, "directMemoryCacheAlignment");
        if (i15 > 0 && !J()) {
            throw new IllegalArgumentException("directMemoryCacheAlignment is not supported");
        }
        if (((-i15) & i15) == i15) {
            int W = W(i16, i15);
            if (i9 > 0) {
                v<byte[]>[] K = K(i9);
                this.f53790e = K;
                ArrayList arrayList = new ArrayList(K.length);
                for (int i18 = 0; i18 < this.f53790e.length; i18++) {
                    v.c cVar = new v.c(this, i16, W, this.f53797l, i15);
                    this.f53790e[i18] = cVar;
                    arrayList.add(cVar);
                }
                this.f53794i = Collections.unmodifiableList(arrayList);
            } else {
                this.f53790e = null;
                this.f53794i = Collections.emptyList();
            }
            if (i10 > 0) {
                v<ByteBuffer>[] K2 = K(i10);
                this.f53791f = K2;
                ArrayList arrayList2 = new ArrayList(K2.length);
                for (int i19 = 0; i19 < this.f53791f.length; i19++) {
                    v.b bVar = new v.b(this, i16, W, this.f53797l, i15);
                    this.f53791f[i19] = bVar;
                    arrayList2.add(bVar);
                }
                this.f53795j = Collections.unmodifiableList(arrayList2);
            } else {
                this.f53791f = null;
                this.f53795j = Collections.emptyList();
            }
            this.f53798m = new e0(this);
            return;
        }
        throw new IllegalArgumentException("directMemoryCacheAlignment: " + i15 + " (expected: power of two)");
    }
}
