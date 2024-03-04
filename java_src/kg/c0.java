package kg;

import io.grpc.netty.shaded.io.netty.util.internal.r;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class c0<T> extends e {

    /* renamed from: n  reason: collision with root package name */
    private final r.a<c0<T>> f53760n;

    /* renamed from: o  reason: collision with root package name */
    protected w<T> f53761o;

    /* renamed from: p  reason: collision with root package name */
    protected long f53762p;

    /* renamed from: q  reason: collision with root package name */
    protected T f53763q;

    /* renamed from: r  reason: collision with root package name */
    protected int f53764r;

    /* renamed from: s  reason: collision with root package name */
    protected int f53765s;

    /* renamed from: t  reason: collision with root package name */
    int f53766t;

    /* renamed from: u  reason: collision with root package name */
    b0 f53767u;

    /* renamed from: v  reason: collision with root package name */
    ByteBuffer f53768v;

    /* renamed from: w  reason: collision with root package name */
    private k f53769w;

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    public c0(r.a<? extends c0<T>> aVar, int i9) {
        super(i9);
        this.f53760n = aVar;
    }

    private void J3(w<T> wVar, ByteBuffer byteBuffer, long j10, int i9, int i10, int i11, b0 b0Var) {
        this.f53761o = wVar;
        this.f53763q = wVar.f53940c;
        this.f53768v = byteBuffer;
        this.f53769w = wVar.f53938a.f53921n;
        this.f53767u = b0Var;
        this.f53762p = j10;
        this.f53764r = i9;
        this.f53765s = i10;
        this.f53766t = i11;
    }

    private void N3() {
        this.f53760n.a(this);
    }

    @Override // kg.e
    protected final void C3() {
        long j10 = this.f53762p;
        if (j10 >= 0) {
            this.f53762p = -1L;
            this.f53763q = null;
            w<T> wVar = this.f53761o;
            wVar.f53938a.v(wVar, this.f53768v, j10, this.f53766t, this.f53767u);
            this.f53768v = null;
            this.f53761o = null;
            N3();
        }
    }

    @Override // kg.j
    public final int F() {
        return this.f53765s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ByteBuffer F3(int i9, int i10, boolean z10) {
        int H3 = H3(i9);
        ByteBuffer M3 = z10 ? M3(this.f53763q) : L3();
        M3.limit(i10 + H3).position(H3);
        return M3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ByteBuffer G3(int i9, int i10) {
        f3(i9, i10);
        return F3(i9, i10, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int H3(int i9) {
        return this.f53764r + i9;
    }

    @Override // kg.j
    public final j I(int i9) {
        if (i9 == this.f53765s) {
            p3();
            return this;
        }
        i3(i9);
        w<T> wVar = this.f53761o;
        if (!wVar.f53941d) {
            if (i9 > this.f53765s) {
                if (i9 <= this.f53766t) {
                    this.f53765s = i9;
                    return this;
                }
            } else {
                int i10 = this.f53766t;
                if (i9 > (i10 >>> 1) && (i10 > 512 || i9 > i10 - 16)) {
                    this.f53765s = i9;
                    z3(i9);
                    return this;
                }
            }
        }
        wVar.f53938a.G(this, i9, true);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void I3(w<T> wVar, ByteBuffer byteBuffer, long j10, int i9, int i10, int i11, b0 b0Var) {
        J3(wVar, byteBuffer, j10, i9, i10, i11, b0Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void K3(w<T> wVar, int i9) {
        J3(wVar, null, 0L, 0, i9, i9, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ByteBuffer L3() {
        ByteBuffer byteBuffer = this.f53768v;
        if (byteBuffer == null) {
            ByteBuffer M3 = M3(this.f53763q);
            this.f53768v = M3;
            return M3;
        }
        byteBuffer.clear();
        return byteBuffer;
    }

    protected abstract ByteBuffer M3(T t10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void O3(int i9) {
        t3(i9);
        E3();
        y3(0, 0);
        o3();
    }

    @Override // kg.j
    public final k P() {
        return this.f53769w;
    }

    @Override // kg.a, kg.j
    public final j V1() {
        return g0.J3(this, this, Q1(), K2());
    }

    @Override // kg.a, kg.j
    public final j W1() {
        int Q1 = Q1();
        return v3(Q1, K2() - Q1);
    }

    @Override // kg.j
    public final int Y1(int i9, ScatteringByteChannel scatteringByteChannel, int i10) throws IOException {
        try {
            return scatteringByteChannel.read(e1(i9, i10));
        } catch (ClosedChannelException unused) {
            return -1;
        }
    }

    @Override // kg.j
    public final ByteBuffer e1(int i9, int i10) {
        f3(i9, i10);
        return F3(i9, i10, false);
    }

    @Override // kg.j
    public final boolean g1() {
        return true;
    }

    @Override // kg.j
    public int n1() {
        return Math.min(this.f53766t, m1()) - this.f53718b;
    }

    @Override // kg.j
    public final ByteBuffer r1(int i9, int i10) {
        return G3(i9, i10).slice();
    }

    @Override // kg.j
    public final int s1() {
        return 1;
    }

    @Override // kg.j
    public final j s2() {
        return null;
    }

    @Override // kg.j
    public final ByteBuffer[] u1(int i9, int i10) {
        return new ByteBuffer[]{r1(i9, i10)};
    }

    @Override // kg.j
    public final int v0(int i9, GatheringByteChannel gatheringByteChannel, int i10) throws IOException {
        return gatheringByteChannel.write(G3(i9, i10));
    }

    @Override // kg.j
    public final ByteOrder v1() {
        return ByteOrder.BIG_ENDIAN;
    }

    @Override // kg.a
    public final j v3(int i9, int i10) {
        return i0.K3(this, this, i9, i10);
    }

    @Override // kg.a, kg.j
    public final int y1(GatheringByteChannel gatheringByteChannel, int i9) throws IOException {
        l3(i9);
        int write = gatheringByteChannel.write(F3(this.f53717a, i9, false));
        this.f53717a += write;
        return write;
    }
}
