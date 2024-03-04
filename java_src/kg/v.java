package kg;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class v<T> extends q0 {
    static final boolean G = io.grpc.netty.shaded.io.netty.util.internal.t.T();
    private final io.grpc.netty.shaded.io.netty.util.internal.m A;
    private final io.grpc.netty.shaded.io.netty.util.internal.m B;
    private long C;
    private long D;
    private final io.grpc.netty.shaded.io.netty.util.internal.m E;
    final AtomicInteger F;

    /* renamed from: n  reason: collision with root package name */
    final d0 f53921n;

    /* renamed from: o  reason: collision with root package name */
    final int f53922o;

    /* renamed from: p  reason: collision with root package name */
    final int f53923p;

    /* renamed from: q  reason: collision with root package name */
    private final a0<T>[] f53924q;

    /* renamed from: r  reason: collision with root package name */
    private final x<T> f53925r;

    /* renamed from: s  reason: collision with root package name */
    private final x<T> f53926s;

    /* renamed from: t  reason: collision with root package name */
    private final x<T> f53927t;

    /* renamed from: u  reason: collision with root package name */
    private final x<T> f53928u;

    /* renamed from: v  reason: collision with root package name */
    private final x<T> f53929v;

    /* renamed from: w  reason: collision with root package name */
    private final x<T> f53930w;

    /* renamed from: x  reason: collision with root package name */
    private final List<y> f53931x;

    /* renamed from: y  reason: collision with root package name */
    private long f53932y;

    /* renamed from: z  reason: collision with root package name */
    private final io.grpc.netty.shaded.io.netty.util.internal.m f53933z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f53934a;

        static {
            int[] iArr = new int[d.values().length];
            f53934a = iArr;
            try {
                iArr[d.Normal.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f53934a[d.Small.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes5.dex */
    static final class b extends v<ByteBuffer> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public b(d0 d0Var, int i9, int i10, int i11, int i12) {
            super(d0Var, i9, i10, i11, i12);
        }

        private static ByteBuffer K(int i9) {
            return io.grpc.netty.shaded.io.netty.util.internal.t.X0() ? io.grpc.netty.shaded.io.netty.util.internal.t.i(i9) : ByteBuffer.allocateDirect(i9);
        }

        @Override // kg.v
        protected c0<ByteBuffer> A(int i9) {
            if (v.G) {
                return j0.R3(i9);
            }
            return f0.Q3(i9);
        }

        @Override // kg.v
        protected w<ByteBuffer> B(int i9, int i10, int i11, int i12) {
            int i13 = this.f53923p;
            if (i13 == 0) {
                ByteBuffer K = K(i12);
                return new w<>(this, K, K, i9, i11, i12, i10);
            }
            ByteBuffer K2 = K(i13 + i12);
            return new w<>(this, K2, io.grpc.netty.shaded.io.netty.util.internal.t.h(K2, this.f53923p), i9, i11, i12, i10);
        }

        @Override // kg.v
        protected w<ByteBuffer> E(int i9) {
            int i10 = this.f53923p;
            if (i10 == 0) {
                ByteBuffer K = K(i9);
                return new w<>(this, K, K, i9);
            }
            ByteBuffer K2 = K(i10 + i9);
            return new w<>(this, K2, io.grpc.netty.shaded.io.netty.util.internal.t.h(K2, this.f53923p), i9);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // kg.v
        /* renamed from: L */
        public void z(ByteBuffer byteBuffer, int i9, c0<ByteBuffer> c0Var, int i10) {
            if (i10 == 0) {
                return;
            }
            if (v.G) {
                io.grpc.netty.shaded.io.netty.util.internal.t.o(io.grpc.netty.shaded.io.netty.util.internal.t.u(byteBuffer) + i9, io.grpc.netty.shaded.io.netty.util.internal.t.u(c0Var.f53763q) + c0Var.f53764r, i10);
                return;
            }
            ByteBuffer duplicate = byteBuffer.duplicate();
            ByteBuffer L3 = c0Var.L3();
            duplicate.position(i9).limit(i9 + i10);
            L3.position(c0Var.f53764r);
            L3.put(duplicate);
        }

        @Override // kg.v
        protected void r(w<ByteBuffer> wVar) {
            if (io.grpc.netty.shaded.io.netty.util.internal.t.X0()) {
                io.grpc.netty.shaded.io.netty.util.internal.t.A((ByteBuffer) wVar.f53939b);
            } else {
                io.grpc.netty.shaded.io.netty.util.internal.t.z((ByteBuffer) wVar.f53939b);
            }
        }

        @Override // kg.v
        boolean y() {
            return true;
        }
    }

    /* loaded from: classes5.dex */
    static final class c extends v<byte[]> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public c(d0 d0Var, int i9, int i10, int i11, int i12) {
            super(d0Var, i9, i10, i11, i12);
        }

        private static byte[] L(int i9) {
            return io.grpc.netty.shaded.io.netty.util.internal.t.j(i9);
        }

        @Override // kg.v
        protected c0<byte[]> A(int i9) {
            return v.G ? k0.R3(i9) : h0.P3(i9);
        }

        @Override // kg.v
        protected w<byte[]> B(int i9, int i10, int i11, int i12) {
            return new w<>(this, null, L(i12), i9, i11, i12, i10);
        }

        @Override // kg.v
        protected w<byte[]> E(int i9) {
            return new w<>(this, null, L(i9), i9);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // kg.v
        /* renamed from: K */
        public void z(byte[] bArr, int i9, c0<byte[]> c0Var, int i10) {
            if (i10 == 0) {
                return;
            }
            System.arraycopy(bArr, i9, c0Var.f53763q, c0Var.f53764r, i10);
        }

        @Override // kg.v
        protected void r(w<byte[]> wVar) {
        }

        @Override // kg.v
        boolean y() {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public enum d {
        Small,
        Normal
    }

    protected v(d0 d0Var, int i9, int i10, int i11, int i12) {
        super(i9, i10, i11, i12);
        this.f53933z = io.grpc.netty.shaded.io.netty.util.internal.t.r0();
        this.A = io.grpc.netty.shaded.io.netty.util.internal.t.r0();
        this.B = io.grpc.netty.shaded.io.netty.util.internal.t.r0();
        this.E = io.grpc.netty.shaded.io.netty.util.internal.t.r0();
        this.F = new AtomicInteger();
        this.f53921n = d0Var;
        this.f53923p = i12;
        int i13 = this.f53883f;
        this.f53922o = i13;
        this.f53924q = C(i13);
        int i14 = 0;
        while (true) {
            a0<T>[] a0VarArr = this.f53924q;
            if (i14 < a0VarArr.length) {
                a0VarArr[i14] = D();
                i14++;
            } else {
                x<T> xVar = new x<>(this, null, 100, Integer.MAX_VALUE, i11);
                this.f53930w = xVar;
                x<T> xVar2 = new x<>(this, xVar, 75, 100, i11);
                this.f53929v = xVar2;
                x<T> xVar3 = new x<>(this, xVar2, 50, 100, i11);
                this.f53925r = xVar3;
                x<T> xVar4 = new x<>(this, xVar3, 25, 75, i11);
                this.f53926s = xVar4;
                x<T> xVar5 = new x<>(this, xVar4, 1, 50, i11);
                this.f53927t = xVar5;
                x<T> xVar6 = new x<>(this, xVar5, Integer.MIN_VALUE, 25, i11);
                this.f53928u = xVar6;
                xVar.z(xVar2);
                xVar2.z(xVar3);
                xVar3.z(xVar4);
                xVar4.z(xVar5);
                xVar5.z(null);
                xVar6.z(xVar6);
                ArrayList arrayList = new ArrayList(6);
                arrayList.add(xVar6);
                arrayList.add(xVar5);
                arrayList.add(xVar4);
                arrayList.add(xVar3);
                arrayList.add(xVar2);
                arrayList.add(xVar);
                this.f53931x = Collections.unmodifiableList(arrayList);
                return;
            }
        }
    }

    private a0<T>[] C(int i9) {
        return new a0[i9];
    }

    private a0<T> D() {
        a0<T> a0Var = new a0<>();
        a0Var.f53727f = a0Var;
        a0Var.f53728g = a0Var;
        return a0Var;
    }

    private static d H(long j10) {
        return w.r(j10) ? d.Small : d.Normal;
    }

    private void I(b0 b0Var, c0<T> c0Var, int i9, int i10) {
        if (b0Var.c(this, c0Var, i9, i10)) {
            return;
        }
        synchronized (this) {
            p(c0Var, i9, i10, b0Var);
            this.f53932y++;
        }
    }

    private void J(b0 b0Var, c0<T> c0Var, int i9, int i10) {
        boolean z10;
        if (b0Var.d(this, c0Var, i9, i10)) {
            return;
        }
        a0<T> a0Var = this.f53924q[i10];
        synchronized (a0Var) {
            a0<T> a0Var2 = a0Var.f53728g;
            z10 = a0Var2 == a0Var;
            if (!z10) {
                a0Var2.f53722a.n(c0Var, null, a0Var2.b(), i9, b0Var);
            }
        }
        if (z10) {
            synchronized (this) {
                p(c0Var, i9, i10, b0Var);
            }
        }
        x();
    }

    private void n(b0 b0Var, c0<T> c0Var, int i9) {
        int h10 = h(i9);
        if (h10 <= this.f53885h) {
            J(b0Var, c0Var, i9, h10);
        } else if (h10 < this.f53882e) {
            I(b0Var, c0Var, i9, h10);
        } else {
            if (this.f53923p > 0) {
                i9 = c(i9);
            }
            o(c0Var, i9);
        }
    }

    private void o(c0<T> c0Var, int i9) {
        w<T> E = E(i9);
        this.B.add(E.a());
        c0Var.K3(E, i9);
        this.A.increment();
    }

    private void p(c0<T> c0Var, int i9, int i10, b0 b0Var) {
        if (this.f53925r.f(c0Var, i9, i10, b0Var) || this.f53926s.f(c0Var, i9, i10, b0Var) || this.f53927t.f(c0Var, i9, i10, b0Var) || this.f53928u.f(c0Var, i9, i10, b0Var) || this.f53929v.f(c0Var, i9, i10, b0Var)) {
            return;
        }
        w<T> B = B(this.f53878a, this.f53884g, this.f53879b, this.f53880c);
        B.b(c0Var, i9, i10, b0Var);
        this.f53928u.c(B);
    }

    private static void q(StringBuilder sb2, a0<?>[] a0VarArr) {
        for (int i9 = 0; i9 < a0VarArr.length; i9++) {
            a0<?> a0Var = a0VarArr[i9];
            if (a0Var.f53728g != a0Var) {
                sb2.append(io.grpc.netty.shaded.io.netty.util.internal.b0.f45033a);
                sb2.append(i9);
                sb2.append(": ");
                a0 a0Var2 = a0Var.f53728g;
                do {
                    sb2.append(a0Var2);
                    a0Var2 = a0Var2.f53728g;
                } while (a0Var2 != a0Var);
            }
        }
    }

    private void s(x<T>... xVarArr) {
        for (x<T> xVar : xVarArr) {
            xVar.m(this);
        }
    }

    private static void t(a0<?>[] a0VarArr) {
        for (a0<?> a0Var : a0VarArr) {
            a0Var.c();
        }
    }

    private void x() {
        this.f53933z.increment();
    }

    protected abstract c0<T> A(int i9);

    protected abstract w<T> B(int i9, int i10, int i11, int i12);

    protected abstract w<T> E(int i9);

    public long F() {
        long value = this.B.value();
        synchronized (this) {
            for (int i9 = 0; i9 < this.f53931x.size(); i9++) {
                for (z zVar : this.f53931x.get(i9)) {
                    value += zVar.a();
                }
            }
        }
        return Math.max(0L, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void G(c0<T> c0Var, int i9, boolean z10) {
        int i10 = c0Var.f53765s;
        if (i10 == i9) {
            return;
        }
        w<T> wVar = c0Var.f53761o;
        ByteBuffer byteBuffer = c0Var.f53768v;
        long j10 = c0Var.f53762p;
        T t10 = c0Var.f53763q;
        int i11 = c0Var.f53764r;
        int i12 = c0Var.f53766t;
        n(this.f53921n.Q(), c0Var, i9);
        if (i9 > i10) {
            i9 = i10;
        } else {
            c0Var.z3(i9);
        }
        z(t10, i11, c0Var, i9);
        if (z10) {
            v(wVar, byteBuffer, j10, i12, c0Var.f53767u);
        }
    }

    protected final void finalize() throws Throwable {
        try {
            super.finalize();
            t(this.f53924q);
            s(this.f53928u, this.f53927t, this.f53926s, this.f53925r, this.f53929v, this.f53930w);
        } catch (Throwable th2) {
            t(this.f53924q);
            s(this.f53928u, this.f53927t, this.f53926s, this.f53925r, this.f53929v, this.f53930w);
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c0<T> m(b0 b0Var, int i9, int i10) {
        c0<T> A = A(i10);
        n(b0Var, A, i9);
        return A;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void r(w<T> wVar);

    public synchronized String toString() {
        StringBuilder sb2;
        sb2 = new StringBuilder();
        sb2.append("Chunk(s) at 0~25%:");
        String str = io.grpc.netty.shaded.io.netty.util.internal.b0.f45033a;
        sb2.append(str);
        sb2.append(this.f53928u);
        sb2.append(str);
        sb2.append("Chunk(s) at 0~50%:");
        sb2.append(str);
        sb2.append(this.f53927t);
        sb2.append(str);
        sb2.append("Chunk(s) at 25~75%:");
        sb2.append(str);
        sb2.append(this.f53926s);
        sb2.append(str);
        sb2.append("Chunk(s) at 50~100%:");
        sb2.append(str);
        sb2.append(this.f53925r);
        sb2.append(str);
        sb2.append("Chunk(s) at 75~100%:");
        sb2.append(str);
        sb2.append(this.f53929v);
        sb2.append(str);
        sb2.append("Chunk(s) at 100%:");
        sb2.append(str);
        sb2.append(this.f53930w);
        sb2.append(str);
        sb2.append("small subpages:");
        q(sb2, this.f53924q);
        sb2.append(str);
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a0<T> u(int i9) {
        return this.f53924q[i9];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void v(w<T> wVar, ByteBuffer byteBuffer, long j10, int i9, b0 b0Var) {
        if (wVar.f53941d) {
            int a10 = wVar.a();
            r(wVar);
            this.B.add(-a10);
            this.E.increment();
            return;
        }
        d H = H(j10);
        if (b0Var == null || !b0Var.a(this, wVar, byteBuffer, j10, i9, H)) {
            w(wVar, j10, i9, H, byteBuffer, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void w(w<T> wVar, long j10, int i9, d dVar, ByteBuffer byteBuffer, boolean z10) {
        boolean z11;
        synchronized (this) {
            z11 = true;
            if (!z10) {
                int i10 = a.f53934a[dVar.ordinal()];
                if (i10 == 1) {
                    this.D++;
                } else if (i10 == 2) {
                    this.C++;
                } else {
                    throw new Error();
                }
            }
            if (wVar.f53951n.n(wVar, j10, i9, byteBuffer)) {
                z11 = false;
            }
        }
        if (z11) {
            r(wVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean y();

    protected abstract void z(T t10, int i9, c0<T> c0Var, int i10);
}
