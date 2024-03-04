package com.google.android.gms.internal.recaptcha;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes2.dex */
public class k3 extends FilterOutputStream {
    public k3(OutputStream outputStream) {
        super(outputStream);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        ((FilterOutputStream) this).out.write(bArr);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i9, int i10) throws IOException {
        ((FilterOutputStream) this).out.write(bArr, i9, i10);
    }
}
