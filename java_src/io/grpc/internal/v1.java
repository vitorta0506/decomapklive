package io.grpc.internal;

import java.io.Closeable;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
/* loaded from: classes5.dex */
public interface v1 extends Closeable {
    v1 G(int i9);

    void a1(byte[] bArr, int i9, int i10);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    void k1();

    boolean markSupported();

    int n();

    int readUnsignedByte();

    void reset();

    void skipBytes(int i9);

    void v0(ByteBuffer byteBuffer);

    void x1(OutputStream outputStream, int i9) throws IOException;
}
