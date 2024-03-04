package io.grpc.internal;
/* loaded from: classes5.dex */
public abstract class c implements v1 {
    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(int i9) {
        if (n() < i9) {
            throw new IndexOutOfBoundsException();
        }
    }

    @Override // io.grpc.internal.v1, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // io.grpc.internal.v1
    public void k1() {
    }

    @Override // io.grpc.internal.v1
    public boolean markSupported() {
        return false;
    }

    public final int readInt() {
        a(4);
        return (readUnsignedByte() << 24) | (readUnsignedByte() << 16) | (readUnsignedByte() << 8) | readUnsignedByte();
    }

    @Override // io.grpc.internal.v1
    public void reset() {
        throw new UnsupportedOperationException();
    }
}
