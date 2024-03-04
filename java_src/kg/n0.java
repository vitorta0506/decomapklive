package kg;

import java.nio.ByteBuffer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class n0 extends m0 {

    /* renamed from: q  reason: collision with root package name */
    private final long f53851q;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n0(k kVar, ByteBuffer byteBuffer) {
        super(kVar, byteBuffer);
        this.f53851q = io.grpc.netty.shaded.io.netty.util.internal.t.u(this.f53831n);
    }

    private long G3(int i9) {
        return this.f53851q + i9;
    }

    @Override // kg.m0, kg.j
    public j A0(int i9, j jVar, int i10, int i11) {
        f3(i9, i11);
        io.grpc.netty.shaded.io.netty.util.internal.s.h(jVar, "dst");
        if (i10 >= 0 && i10 <= jVar.F() - i11) {
            if (jVar.b1()) {
                io.grpc.netty.shaded.io.netty.util.internal.t.o(G3(i9), i10 + jVar.p1(), i11);
            } else if (jVar.a1()) {
                io.grpc.netty.shaded.io.netty.util.internal.t.p(G3(i9), jVar.y(), jVar.z() + i10, i11);
            } else {
                jVar.a2(i10, this, i9, i11);
            }
            return this;
        }
        throw new IndexOutOfBoundsException("dstIndex: " + i10);
    }

    @Override // kg.m0, kg.j
    public j E0(int i9, byte[] bArr, int i10, int i11) {
        f3(i9, i11);
        io.grpc.netty.shaded.io.netty.util.internal.s.h(bArr, "dst");
        if (i10 < 0 || i10 > bArr.length - i11) {
            throw new IndexOutOfBoundsException(String.format("dstIndex: %d, length: %d (expected: range(0, %d))", Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(bArr.length)));
        }
        if (i11 != 0) {
            io.grpc.netty.shaded.io.netty.util.internal.t.p(G3(i9), bArr, i10, i11);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.m0, kg.a
    public byte M2(int i9) {
        return c1.b(G3(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.m0, kg.a
    public int N2(int i9) {
        return c1.i(G3(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.m0, kg.a
    public long P2(int i9) {
        return c1.m(G3(i9));
    }

    @Override // kg.m0, kg.j
    public j Q(int i9, int i10) {
        f3(i9, i10);
        j i11 = P().i(i10, m1());
        if (i10 != 0) {
            if (i11.b1()) {
                io.grpc.netty.shaded.io.netty.util.internal.t.o(G3(i9), i11.p1(), i10);
                i11.d2(0, i10);
            } else {
                i11.z2(this, i9, i10);
            }
        }
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.m0, kg.a
    public short R2(int i9) {
        return c1.q(G3(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.m0, kg.a
    public int T2(int i9) {
        return c1.u(G3(i9));
    }

    @Override // kg.m0, kg.j
    public boolean b1() {
        return true;
    }

    @Override // kg.m0, kg.j
    public long p1() {
        return this.f53851q;
    }
}
