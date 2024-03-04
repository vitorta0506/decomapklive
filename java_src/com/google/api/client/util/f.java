package com.google.api.client.util;

import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes2.dex */
final class f extends OutputStream {

    /* renamed from: a  reason: collision with root package name */
    long f11108a;

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i9, int i10) throws IOException {
        this.f11108a += i10;
    }

    @Override // java.io.OutputStream
    public void write(int i9) throws IOException {
        this.f11108a++;
    }
}
