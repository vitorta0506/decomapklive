package io.jsonwebtoken.impl.compression;

import io.jsonwebtoken.CompressionCodec;
import io.jsonwebtoken.CompressionException;
import io.jsonwebtoken.lang.Assert;
import java.io.IOException;
/* loaded from: classes6.dex */
public abstract class AbstractCompressionCodec implements CompressionCodec {
    @Override // io.jsonwebtoken.CompressionCodec
    public final byte[] compress(byte[] bArr) {
        Assert.notNull(bArr, "payload cannot be null.");
        try {
            return doCompress(bArr);
        } catch (IOException e10) {
            throw new CompressionException("Unable to compress payload.", e10);
        }
    }

    @Override // io.jsonwebtoken.CompressionCodec
    public final byte[] decompress(byte[] bArr) {
        Assert.notNull(bArr, "compressed bytes cannot be null.");
        try {
            return doDecompress(bArr);
        } catch (IOException e10) {
            throw new CompressionException("Unable to decompress bytes.", e10);
        }
    }

    protected abstract byte[] doCompress(byte[] bArr) throws IOException;

    protected abstract byte[] doDecompress(byte[] bArr) throws IOException;
}
