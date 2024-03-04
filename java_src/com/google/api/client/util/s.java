package com.google.api.client.util;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes2.dex */
public class s extends FilterOutputStream {

    /* renamed from: a  reason: collision with root package name */
    private final q f11173a;

    public s(OutputStream outputStream, Logger logger, Level level, int i9) {
        super(outputStream);
        this.f11173a = new q(logger, level, i9);
    }

    public final q a() {
        return this.f11173a;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f11173a.close();
        super.close();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i9) throws IOException {
        ((FilterOutputStream) this).out.write(i9);
        this.f11173a.write(i9);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i9, int i10) throws IOException {
        ((FilterOutputStream) this).out.write(bArr, i9, i10);
        this.f11173a.write(bArr, i9, i10);
    }
}
