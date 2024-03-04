package xg;

import io.grpc.internal.v1;
import java.io.EOFException;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import kotlin.UByte;
import okio.Buffer;
/* loaded from: classes5.dex */
class j extends io.grpc.internal.c {

    /* renamed from: a  reason: collision with root package name */
    private final Buffer f59891a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(Buffer buffer) {
        this.f59891a = buffer;
    }

    private void c() throws EOFException {
    }

    @Override // io.grpc.internal.v1
    public v1 G(int i9) {
        Buffer buffer = new Buffer();
        buffer.write(this.f59891a, i9);
        return new j(buffer);
    }

    @Override // io.grpc.internal.v1
    public void a1(byte[] bArr, int i9, int i10) {
        while (i10 > 0) {
            int read = this.f59891a.read(bArr, i9, i10);
            if (read == -1) {
                throw new IndexOutOfBoundsException("EOF trying to read " + i10 + " bytes");
            }
            i10 -= read;
            i9 += read;
        }
    }

    @Override // io.grpc.internal.c, io.grpc.internal.v1, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f59891a.clear();
    }

    @Override // io.grpc.internal.v1
    public int n() {
        return (int) this.f59891a.size();
    }

    @Override // io.grpc.internal.v1
    public int readUnsignedByte() {
        try {
            c();
            return this.f59891a.readByte() & UByte.MAX_VALUE;
        } catch (EOFException e10) {
            throw new IndexOutOfBoundsException(e10.getMessage());
        }
    }

    @Override // io.grpc.internal.v1
    public void skipBytes(int i9) {
        try {
            this.f59891a.skip(i9);
        } catch (EOFException e10) {
            throw new IndexOutOfBoundsException(e10.getMessage());
        }
    }

    @Override // io.grpc.internal.v1
    public void v0(ByteBuffer byteBuffer) {
        throw new UnsupportedOperationException();
    }

    @Override // io.grpc.internal.v1
    public void x1(OutputStream outputStream, int i9) throws IOException {
        this.f59891a.writeTo(outputStream, i9);
    }
}
