package com.xiaomi.push;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes5.dex */
public class t2 extends v2 {

    /* renamed from: a  reason: collision with root package name */
    protected InputStream f37450a = null;

    /* renamed from: b  reason: collision with root package name */
    protected OutputStream f37451b;

    public t2(OutputStream outputStream) {
        this.f37451b = outputStream;
    }

    @Override // com.xiaomi.push.v2
    public int b(byte[] bArr, int i9, int i10) {
        InputStream inputStream = this.f37450a;
        if (inputStream != null) {
            try {
                int read = inputStream.read(bArr, i9, i10);
                if (read >= 0) {
                    return read;
                }
                throw new ez(4);
            } catch (IOException e10) {
                throw new ez(0, e10);
            }
        }
        throw new ez(1, "Cannot read from null inputStream");
    }

    @Override // com.xiaomi.push.v2
    public void d(byte[] bArr, int i9, int i10) {
        OutputStream outputStream = this.f37451b;
        if (outputStream == null) {
            throw new ez(1, "Cannot write to null outputStream");
        }
        try {
            outputStream.write(bArr, i9, i10);
        } catch (IOException e10) {
            throw new ez(0, e10);
        }
    }
}
