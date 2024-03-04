package kg;

import io.grpc.netty.shaded.io.netty.util.internal.r;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class k0 extends h0 {

    /* renamed from: y  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.r<k0> f53823y = io.grpc.netty.shaded.io.netty.util.internal.r.b(new a());

    /* loaded from: classes5.dex */
    static class a implements r.b<k0> {
        a() {
        }

        @Override // io.grpc.netty.shaded.io.netty.util.internal.r.b
        /* renamed from: b */
        public k0 a(r.a<k0> aVar) {
            return new k0(aVar, 0, null);
        }
    }

    /* synthetic */ k0(r.a aVar, int i9, a aVar2) {
        this(aVar, i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static k0 R3(int i9) {
        k0 a10 = f53823y.a();
        a10.O3(i9);
        return a10;
    }

    @Override // kg.a, kg.j
    public j J2(int i9) {
        if (io.grpc.netty.shaded.io.netty.util.internal.t.l0() >= 7) {
            n0(i9);
            int i10 = this.f53718b;
            c1.Q((byte[]) this.f53763q, H3(i10), i9);
            this.f53718b = i10 + i9;
            return this;
        }
        return super.J2(i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.h0, kg.a
    public byte M2(int i9) {
        return c1.c((byte[]) this.f53763q, H3(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.h0, kg.a
    public int N2(int i9) {
        return c1.j((byte[]) this.f53763q, H3(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.h0, kg.a
    public int O2(int i9) {
        return c1.l((byte[]) this.f53763q, H3(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.h0, kg.a
    public long P2(int i9) {
        return c1.n((byte[]) this.f53763q, H3(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.h0, kg.a
    public long Q2(int i9) {
        return c1.p((byte[]) this.f53763q, H3(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.h0, kg.a
    public short R2(int i9) {
        return c1.r((byte[]) this.f53763q, H3(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.h0, kg.a
    public short S2(int i9) {
        return c1.t((byte[]) this.f53763q, H3(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.h0, kg.a
    public int T2(int i9) {
        return c1.v((byte[]) this.f53763q, H3(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.h0, kg.a
    public void U2(int i9, int i10) {
        c1.y((byte[]) this.f53763q, H3(i9), i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.h0, kg.a
    public void V2(int i9, int i10) {
        c1.D((byte[]) this.f53763q, H3(i9), i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.h0, kg.a
    public void W2(int i9, int i10) {
        c1.F((byte[]) this.f53763q, H3(i9), i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.h0, kg.a
    public void X2(int i9, long j10) {
        c1.H((byte[]) this.f53763q, H3(i9), j10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.h0, kg.a
    public void Y2(int i9, int i10) {
        c1.J((byte[]) this.f53763q, H3(i9), i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.h0, kg.a
    public void Z2(int i9, int i10) {
        c1.L((byte[]) this.f53763q, H3(i9), i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.h0, kg.a
    public void a3(int i9, int i10) {
        c1.N((byte[]) this.f53763q, H3(i9), i10);
    }

    @Override // kg.a, kg.j
    public j k2(int i9, int i10) {
        if (io.grpc.netty.shaded.io.netty.util.internal.t.l0() >= 7) {
            f3(i9, i10);
            c1.Q((byte[]) this.f53763q, H3(i9), i10);
            return this;
        }
        return super.k2(i9, i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    @Deprecated
    public r0 u3() {
        if (io.grpc.netty.shaded.io.netty.util.internal.t.i0()) {
            return new e1(this);
        }
        return super.u3();
    }

    private k0(r.a<k0> aVar, int i9) {
        super(aVar, i9);
    }
}
