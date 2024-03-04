package kg;

import io.grpc.netty.shaded.io.netty.util.internal.r;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import kotlin.UByte;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class f0 extends c0<ByteBuffer> {

    /* renamed from: x  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.r<f0> f53809x = io.grpc.netty.shaded.io.netty.util.internal.r.b(new a());

    /* loaded from: classes5.dex */
    static class a implements r.b<f0> {
        a() {
        }

        @Override // io.grpc.netty.shaded.io.netty.util.internal.r.b
        /* renamed from: b */
        public f0 a(r.a<f0> aVar) {
            return new f0(aVar, 0, null);
        }
    }

    /* synthetic */ f0(r.a aVar, int i9, a aVar2) {
        this(aVar, i9);
    }

    private void P3(int i9, OutputStream outputStream, int i10, boolean z10) throws IOException {
        f3(i9, i10);
        if (i10 == 0) {
            return;
        }
        n.D(P(), z10 ? L3() : ((ByteBuffer) this.f53763q).duplicate(), H3(i9), i10, outputStream);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static f0 Q3(int i9) {
        f0 a10 = f53809x.a();
        a10.O3(i9);
        return a10;
    }

    @Override // kg.j
    public j A0(int i9, j jVar, int i10, int i11) {
        d3(i9, i11, i10, jVar.F());
        if (jVar.a1()) {
            E0(i9, jVar.y(), jVar.z() + i10, i11);
        } else if (jVar.s1() > 0) {
            ByteBuffer[] u12 = jVar.u1(i10, i11);
            for (ByteBuffer byteBuffer : u12) {
                int remaining = byteBuffer.remaining();
                y0(i9, byteBuffer);
                i9 += remaining;
            }
        } else {
            jVar.a2(i10, this, i9, i11);
        }
        return this;
    }

    @Override // kg.a, kg.j
    public j A1(OutputStream outputStream, int i9) throws IOException {
        l3(i9);
        P3(this.f53717a, outputStream, i9, true);
        this.f53717a += i9;
        return this;
    }

    @Override // kg.a, kg.j
    public j B1(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        l3(remaining);
        byteBuffer.put(F3(this.f53717a, remaining, false));
        this.f53717a += remaining;
        return this;
    }

    @Override // kg.a, kg.j
    public j D1(byte[] bArr, int i9, int i10) {
        c3(i10, i9, bArr.length);
        F3(this.f53717a, i10, false).get(bArr, i9, i10);
        this.f53717a += i10;
        return this;
    }

    @Override // kg.j
    public j E0(int i9, byte[] bArr, int i10, int i11) {
        d3(i9, i11, i10, bArr.length);
        F3(i9, i11, true).get(bArr, i10, i11);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public byte M2(int i9) {
        return ((ByteBuffer) this.f53763q).get(H3(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public int N2(int i9) {
        return ((ByteBuffer) this.f53763q).getInt(H3(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public int O2(int i9) {
        return n.J(N2(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public long P2(int i9) {
        return ((ByteBuffer) this.f53763q).getLong(H3(i9));
    }

    @Override // kg.j
    public j Q(int i9, int i10) {
        f3(i9, i10);
        return P().i(i10, m1()).z2(this, i9, i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public long Q2(int i9) {
        return n.K(P2(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public short R2(int i9) {
        return ((ByteBuffer) this.f53763q).getShort(H3(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.c0
    /* renamed from: R3 */
    public ByteBuffer M3(ByteBuffer byteBuffer) {
        return byteBuffer.duplicate();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public short S2(int i9) {
        return n.M(R2(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public int T2(int i9) {
        int H3 = H3(i9);
        return (((ByteBuffer) this.f53763q).get(H3 + 2) & UByte.MAX_VALUE) | ((((ByteBuffer) this.f53763q).get(H3) & UByte.MAX_VALUE) << 16) | ((((ByteBuffer) this.f53763q).get(H3 + 1) & UByte.MAX_VALUE) << 8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void U2(int i9, int i10) {
        ((ByteBuffer) this.f53763q).put(H3(i9), (byte) i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void V2(int i9, int i10) {
        ((ByteBuffer) this.f53763q).putInt(H3(i9), i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void W2(int i9, int i10) {
        V2(i9, n.J(i10));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void X2(int i9, long j10) {
        ((ByteBuffer) this.f53763q).putLong(H3(i9), j10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void Y2(int i9, int i10) {
        int H3 = H3(i9);
        ((ByteBuffer) this.f53763q).put(H3, (byte) (i10 >>> 16));
        ((ByteBuffer) this.f53763q).put(H3 + 1, (byte) (i10 >>> 8));
        ((ByteBuffer) this.f53763q).put(H3 + 2, (byte) i10);
    }

    @Override // kg.j
    public j Z1(int i9, ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        f3(i9, remaining);
        ByteBuffer L3 = L3();
        if (byteBuffer == L3) {
            byteBuffer = byteBuffer.duplicate();
        }
        int H3 = H3(i9);
        L3.limit(remaining + H3).position(H3);
        L3.put(byteBuffer);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void Z2(int i9, int i10) {
        ((ByteBuffer) this.f53763q).putShort(H3(i9), (short) i10);
    }

    @Override // kg.j
    public boolean a1() {
        return false;
    }

    @Override // kg.j
    public j a2(int i9, j jVar, int i10, int i11) {
        n3(i9, i11, i10, jVar.F());
        if (jVar.a1()) {
            b2(i9, jVar.y(), jVar.z() + i10, i11);
        } else if (jVar.s1() > 0) {
            ByteBuffer[] u12 = jVar.u1(i10, i11);
            for (ByteBuffer byteBuffer : u12) {
                int remaining = byteBuffer.remaining();
                Z1(i9, byteBuffer);
                i9 += remaining;
            }
        } else {
            jVar.A0(i10, this, i9, i11);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void a3(int i9, int i10) {
        Z2(i9, n.M((short) i10));
    }

    @Override // kg.j
    public boolean b1() {
        return false;
    }

    @Override // kg.j
    public j b2(int i9, byte[] bArr, int i10, int i11) {
        n3(i9, i11, i10, bArr.length);
        F3(i9, i11, false).put(bArr, i10, i11);
        return this;
    }

    @Override // kg.j
    public boolean h1() {
        return true;
    }

    @Override // kg.j
    public long p1() {
        throw new UnsupportedOperationException();
    }

    @Override // kg.j
    public j w0(int i9, OutputStream outputStream, int i10) throws IOException {
        P3(i9, outputStream, i10, false);
        return this;
    }

    @Override // kg.j
    public byte[] y() {
        throw new UnsupportedOperationException("direct buffer");
    }

    @Override // kg.j
    public j y0(int i9, ByteBuffer byteBuffer) {
        byteBuffer.put(G3(i9, byteBuffer.remaining()));
        return this;
    }

    @Override // kg.j
    public int z() {
        throw new UnsupportedOperationException("direct buffer");
    }

    private f0(r.a<f0> aVar, int i9) {
        super(aVar, i9);
    }
}
