package kg;

import io.grpc.netty.shaded.io.netty.util.internal.r;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class h0 extends c0<byte[]> {

    /* renamed from: x  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.r<h0> f53817x = io.grpc.netty.shaded.io.netty.util.internal.r.b(new a());

    /* loaded from: classes5.dex */
    static class a implements r.b<h0> {
        a() {
        }

        @Override // io.grpc.netty.shaded.io.netty.util.internal.r.b
        /* renamed from: b */
        public h0 a(r.a<h0> aVar) {
            return new h0(aVar, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h0(r.a<? extends h0> aVar, int i9) {
        super(aVar, i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static h0 P3(int i9) {
        h0 a10 = f53817x.a();
        a10.O3(i9);
        return a10;
    }

    @Override // kg.j
    public final j A0(int i9, j jVar, int i10, int i11) {
        d3(i9, i11, i10, jVar.F());
        if (jVar.b1()) {
            io.grpc.netty.shaded.io.netty.util.internal.t.q((byte[]) this.f53763q, H3(i9), i10 + jVar.p1(), i11);
        } else if (jVar.a1()) {
            E0(i9, jVar.y(), jVar.z() + i10, i11);
        } else {
            jVar.b2(i10, (byte[]) this.f53763q, H3(i9), i11);
        }
        return this;
    }

    @Override // kg.j
    public final j E0(int i9, byte[] bArr, int i10, int i11) {
        d3(i9, i11, i10, bArr.length);
        System.arraycopy(this.f53763q, H3(i9), bArr, i10, i11);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // kg.c0
    public final ByteBuffer G3(int i9, int i10) {
        f3(i9, i10);
        return ByteBuffer.wrap((byte[]) this.f53763q, H3(i9), i10).slice();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public byte M2(int i9) {
        return s.a((byte[]) this.f53763q, H3(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public int N2(int i9) {
        return s.b((byte[]) this.f53763q, H3(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public int O2(int i9) {
        return s.c((byte[]) this.f53763q, H3(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public long P2(int i9) {
        return s.d((byte[]) this.f53763q, H3(i9));
    }

    @Override // kg.j
    public final j Q(int i9, int i10) {
        f3(i9, i10);
        return P().f(i10, m1()).B2((byte[]) this.f53763q, H3(i9), i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public long Q2(int i9) {
        return s.e((byte[]) this.f53763q, H3(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.c0
    /* renamed from: Q3 */
    public final ByteBuffer M3(byte[] bArr) {
        return ByteBuffer.wrap(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public short R2(int i9) {
        return s.f((byte[]) this.f53763q, H3(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public short S2(int i9) {
        return s.g((byte[]) this.f53763q, H3(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public int T2(int i9) {
        return s.h((byte[]) this.f53763q, H3(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void U2(int i9, int i10) {
        s.i((byte[]) this.f53763q, H3(i9), i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void V2(int i9, int i10) {
        s.j((byte[]) this.f53763q, H3(i9), i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void W2(int i9, int i10) {
        s.k((byte[]) this.f53763q, H3(i9), i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void X2(int i9, long j10) {
        s.l((byte[]) this.f53763q, H3(i9), j10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void Y2(int i9, int i10) {
        s.m((byte[]) this.f53763q, H3(i9), i10);
    }

    @Override // kg.j
    public final j Z1(int i9, ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        f3(i9, remaining);
        byteBuffer.get((byte[]) this.f53763q, H3(i9), remaining);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void Z2(int i9, int i10) {
        s.n((byte[]) this.f53763q, H3(i9), i10);
    }

    @Override // kg.j
    public final boolean a1() {
        return true;
    }

    @Override // kg.j
    public final j a2(int i9, j jVar, int i10, int i11) {
        n3(i9, i11, i10, jVar.F());
        if (jVar.b1()) {
            io.grpc.netty.shaded.io.netty.util.internal.t.p(jVar.p1() + i10, (byte[]) this.f53763q, H3(i9), i11);
        } else if (jVar.a1()) {
            b2(i9, jVar.y(), jVar.z() + i10, i11);
        } else {
            jVar.E0(i10, (byte[]) this.f53763q, H3(i9), i11);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void a3(int i9, int i10) {
        s.o((byte[]) this.f53763q, H3(i9), i10);
    }

    @Override // kg.j
    public final boolean b1() {
        return false;
    }

    @Override // kg.j
    public final j b2(int i9, byte[] bArr, int i10, int i11) {
        n3(i9, i11, i10, bArr.length);
        System.arraycopy(bArr, i10, this.f53763q, H3(i9), i11);
        return this;
    }

    @Override // kg.j
    public final boolean h1() {
        return false;
    }

    @Override // kg.j
    public final long p1() {
        throw new UnsupportedOperationException();
    }

    @Override // kg.j
    public final j w0(int i9, OutputStream outputStream, int i10) throws IOException {
        f3(i9, i10);
        outputStream.write((byte[]) this.f53763q, H3(i9), i10);
        return this;
    }

    @Override // kg.j
    public final byte[] y() {
        p3();
        return (byte[]) this.f53763q;
    }

    @Override // kg.j
    public final j y0(int i9, ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        f3(i9, remaining);
        byteBuffer.put((byte[]) this.f53763q, H3(i9), remaining);
        return this;
    }

    @Override // kg.j
    public final int z() {
        return this.f53764r;
    }
}
