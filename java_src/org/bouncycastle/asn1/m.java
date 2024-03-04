package org.bouncycastle.asn1;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes7.dex */
public abstract class m implements e, org.bouncycastle.util.c {
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof e) {
            return f().F(((e) obj).f());
        }
        return false;
    }

    @Override // org.bouncycastle.asn1.e
    public abstract r f();

    public byte[] getEncoded() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        m(byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public int hashCode() {
        return f().hashCode();
    }

    public void m(OutputStream outputStream) throws IOException {
        q.a(outputStream).s(this);
    }

    public void n(OutputStream outputStream, String str) throws IOException {
        q.b(outputStream, str).s(this);
    }

    public byte[] u(String str) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        n(byteArrayOutputStream, str);
        return byteArrayOutputStream.toByteArray();
    }
}
