package ig;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
/* loaded from: classes5.dex */
class b0 extends io.grpc.internal.c {

    /* renamed from: a  reason: collision with root package name */
    private final kg.j f41139a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f41140b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b0(kg.j jVar) {
        this.f41139a = (kg.j) com.google.common.base.o.t(jVar, "buffer");
    }

    @Override // io.grpc.internal.v1
    public void a1(byte[] bArr, int i9, int i10) {
        this.f41139a.D1(bArr, i9, i10);
    }

    @Override // io.grpc.internal.v1
    /* renamed from: b */
    public b0 G(int i9) {
        return new b0(this.f41139a.I1(i9));
    }

    @Override // io.grpc.internal.c, io.grpc.internal.v1, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f41140b) {
            return;
        }
        this.f41140b = true;
        this.f41139a.release();
    }

    @Override // io.grpc.internal.c, io.grpc.internal.v1
    public void k1() {
        this.f41139a.l1();
    }

    @Override // io.grpc.internal.c, io.grpc.internal.v1
    public boolean markSupported() {
        return true;
    }

    @Override // io.grpc.internal.v1
    public int n() {
        return this.f41139a.P1();
    }

    @Override // io.grpc.internal.v1
    public int readUnsignedByte() {
        return this.f41139a.L1();
    }

    @Override // io.grpc.internal.c, io.grpc.internal.v1
    public void reset() {
        this.f41139a.S1();
    }

    @Override // io.grpc.internal.v1
    public void skipBytes(int i9) {
        this.f41139a.l2(i9);
    }

    @Override // io.grpc.internal.v1
    public void v0(ByteBuffer byteBuffer) {
        this.f41139a.B1(byteBuffer);
    }

    @Override // io.grpc.internal.v1
    public void x1(OutputStream outputStream, int i9) {
        try {
            this.f41139a.A1(outputStream, i9);
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }
}
