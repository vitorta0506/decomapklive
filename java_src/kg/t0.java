package kg;

import java.nio.ByteBuffer;
/* loaded from: classes5.dex */
public final class t0 extends kg.b {

    /* renamed from: g  reason: collision with root package name */
    public static final t0 f53908g = new t0(io.grpc.netty.shaded.io.netty.util.internal.t.v());

    /* renamed from: d  reason: collision with root package name */
    private final g f53909d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f53910e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f53911f;

    /* loaded from: classes5.dex */
    private static final class b extends u0 {
        b(t0 t0Var, int i9, int i10) {
            super(t0Var, i9, i10);
        }

        @Override // kg.u0
        protected ByteBuffer F3(int i9) {
            ByteBuffer F3 = super.F3(i9);
            ((t0) P()).v(F3.capacity());
            return F3;
        }

        @Override // kg.u0
        protected void G3(ByteBuffer byteBuffer) {
            int capacity = byteBuffer.capacity();
            super.G3(byteBuffer);
            ((t0) P()).t(capacity);
        }
    }

    /* loaded from: classes5.dex */
    private static final class c extends w0 {
        c(t0 t0Var, int i9, int i10) {
            super(t0Var, i9, i10);
        }

        @Override // kg.w0
        protected byte[] F3(int i9) {
            byte[] F3 = super.F3(i9);
            ((t0) P()).w(F3.length);
            return F3;
        }

        @Override // kg.w0
        protected void G3(byte[] bArr) {
            int length = bArr.length;
            super.G3(bArr);
            ((t0) P()).u(length);
        }
    }

    /* loaded from: classes5.dex */
    private static final class d extends y0 {
        d(t0 t0Var, int i9, int i10) {
            super(t0Var, i9, i10);
        }

        @Override // kg.u0
        protected ByteBuffer F3(int i9) {
            ByteBuffer F3 = super.F3(i9);
            ((t0) P()).v(F3.capacity());
            return F3;
        }

        @Override // kg.u0
        protected void G3(ByteBuffer byteBuffer) {
            int capacity = byteBuffer.capacity();
            super.G3(byteBuffer);
            ((t0) P()).t(capacity);
        }
    }

    /* loaded from: classes5.dex */
    private static final class e extends z0 {
        e(t0 t0Var, int i9, int i10) {
            super(t0Var, i9, i10);
        }

        @Override // kg.z0, kg.w0
        protected byte[] F3(int i9) {
            byte[] F3 = super.F3(i9);
            ((t0) P()).w(F3.length);
            return F3;
        }

        @Override // kg.w0
        protected void G3(byte[] bArr) {
            int length = bArr.length;
            super.G3(bArr);
            ((t0) P()).u(length);
        }
    }

    /* loaded from: classes5.dex */
    private static final class f extends a1 {
        f(t0 t0Var, int i9, int i10) {
            super(t0Var, i9, i10);
        }

        @Override // kg.a1, kg.u0
        protected ByteBuffer F3(int i9) {
            ByteBuffer F3 = super.F3(i9);
            ((t0) P()).v(F3.capacity());
            return F3;
        }

        @Override // kg.a1, kg.u0
        protected void G3(ByteBuffer byteBuffer) {
            int capacity = byteBuffer.capacity();
            super.G3(byteBuffer);
            ((t0) P()).t(capacity);
        }

        @Override // kg.a1
        ByteBuffer O3(ByteBuffer byteBuffer, int i9) {
            int capacity = byteBuffer.capacity();
            ByteBuffer O3 = super.O3(byteBuffer, i9);
            ((t0) P()).v(O3.capacity() - capacity);
            return O3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class g {

        /* renamed from: a  reason: collision with root package name */
        final io.grpc.netty.shaded.io.netty.util.internal.m f53912a;

        /* renamed from: b  reason: collision with root package name */
        final io.grpc.netty.shaded.io.netty.util.internal.m f53913b;

        private g() {
            this.f53912a = io.grpc.netty.shaded.io.netty.util.internal.t.r0();
            this.f53913b = io.grpc.netty.shaded.io.netty.util.internal.t.r0();
        }

        public long a() {
            return this.f53912a.value();
        }

        public long b() {
            return this.f53913b.value();
        }

        public String toString() {
            return io.grpc.netty.shaded.io.netty.util.internal.b0.m(this) + "(usedHeapMemory: " + b() + "; usedDirectMemory: " + a() + ')';
        }
    }

    public t0(boolean z10) {
        this(z10, false);
    }

    @Override // kg.b, kg.k
    public o a(int i9) {
        o oVar = new o(this, true, i9);
        return this.f53910e ? oVar : kg.b.r(oVar);
    }

    @Override // kg.k
    public boolean e() {
        return false;
    }

    @Override // kg.b
    public o n(int i9) {
        o oVar = new o(this, false, i9);
        return this.f53910e ? oVar : kg.b.r(oVar);
    }

    @Override // kg.b
    protected j o(int i9, int i10) {
        j bVar;
        if (io.grpc.netty.shaded.io.netty.util.internal.t.T()) {
            bVar = this.f53911f ? new f(this, i9, i10) : new d(this, i9, i10);
        } else {
            bVar = new b(this, i9, i10);
        }
        return this.f53910e ? bVar : kg.b.q(bVar);
    }

    @Override // kg.b
    protected j p(int i9, int i10) {
        return io.grpc.netty.shaded.io.netty.util.internal.t.T() ? new e(this, i9, i10) : new c(this, i9, i10);
    }

    void t(int i9) {
        this.f53909d.f53912a.add(-i9);
    }

    void u(int i9) {
        this.f53909d.f53913b.add(-i9);
    }

    void v(int i9) {
        this.f53909d.f53912a.add(i9);
    }

    void w(int i9) {
        this.f53909d.f53913b.add(i9);
    }

    public t0(boolean z10, boolean z11) {
        this(z10, z11, io.grpc.netty.shaded.io.netty.util.internal.t.X0());
    }

    public t0(boolean z10, boolean z11, boolean z12) {
        super(z10);
        this.f53909d = new g();
        this.f53910e = z11;
        this.f53911f = z12 && io.grpc.netty.shaded.io.netty.util.internal.t.T() && io.grpc.netty.shaded.io.netty.util.internal.t.S();
    }
}
