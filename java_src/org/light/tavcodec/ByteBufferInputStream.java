package org.light.tavcodec;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import kotlin.UByte;
/* loaded from: classes7.dex */
class ByteBufferInputStream extends InputStream {
    ByteBuffer buffer;

    public ByteBufferInputStream(ByteBuffer byteBuffer) {
        this.buffer = byteBuffer;
        byteBuffer.position(0);
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.buffer.hasRemaining()) {
            return this.buffer.get() & UByte.MAX_VALUE;
        }
        return -1;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i9, int i10) throws IOException {
        if (this.buffer.hasRemaining()) {
            int min = Math.min(i10, this.buffer.remaining());
            this.buffer.get(bArr, i9, min);
            return min;
        }
        return -1;
    }
}
