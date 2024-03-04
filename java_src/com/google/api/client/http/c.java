package com.google.api.client.http;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2.dex */
final class c extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private boolean f10986a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(InputStream inputStream) {
        super(inputStream);
        this.f10986a = false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f10986a || ((FilterInputStream) this).in == null) {
            return;
        }
        try {
            com.google.common.io.c.d(this);
            ((FilterInputStream) this).in.close();
        } finally {
            this.f10986a = true;
        }
    }
}
