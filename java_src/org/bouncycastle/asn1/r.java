package org.bouncycastle.asn1;

import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes7.dex */
public abstract class r extends m {
    public static r G(byte[] bArr) throws IOException {
        j jVar = new j(bArr);
        try {
            r o10 = jVar.o();
            if (jVar.available() == 0) {
                return o10;
            }
            throw new IOException("Extra data detected in stream");
        } catch (ClassCastException unused) {
            throw new IOException("cannot recognise object in stream");
        }
    }

    public final boolean B(e eVar) {
        return this == eVar || (eVar != null && x(eVar.f()));
    }

    public final boolean F(r rVar) {
        return this == rVar || x(rVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean H();

    /* JADX INFO: Access modifiers changed from: package-private */
    public r I() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public r J() {
        return this;
    }

    @Override // org.bouncycastle.asn1.m
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof e) && x(((e) obj).f());
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public final r f() {
        return this;
    }

    @Override // org.bouncycastle.asn1.m
    public abstract int hashCode();

    @Override // org.bouncycastle.asn1.m
    public void m(OutputStream outputStream) throws IOException {
        q.a(outputStream).t(this);
    }

    @Override // org.bouncycastle.asn1.m
    public void n(OutputStream outputStream, String str) throws IOException {
        q.b(outputStream, str).t(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean x(r rVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void y(q qVar, boolean z10) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int z() throws IOException;
}
