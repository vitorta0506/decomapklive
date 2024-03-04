package com.google.android.gms.internal.recaptcha;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2.dex */
public class i3 extends FilterInputStream {
    public i3(InputStream inputStream) {
        super(inputStream);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return ((FilterInputStream) this).in.read(bArr);
    }
}
