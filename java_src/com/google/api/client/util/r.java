package com.google.api.client.util;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes2.dex */
public class r extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private final q f11172a;

    public r(InputStream inputStream, Logger logger, Level level, int i9) {
        super(inputStream);
        this.f11172a = new q(logger, level, i9);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f11172a.close();
        super.close();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read = super.read();
        this.f11172a.write(read);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i9, int i10) throws IOException {
        int read = super.read(bArr, i9, i10);
        if (read > 0) {
            this.f11172a.write(bArr, i9, read);
        }
        return read;
    }
}
