package org.bouncycastle.asn1;

import java.io.IOException;
import java.util.Enumeration;
import java.util.NoSuchElementException;
/* loaded from: classes7.dex */
class w1 implements Enumeration {

    /* renamed from: a  reason: collision with root package name */
    private j f55990a;

    /* renamed from: b  reason: collision with root package name */
    private Object f55991b = a();

    public w1(byte[] bArr) {
        this.f55990a = new j(bArr, true);
    }

    private Object a() {
        try {
            return this.f55990a.o();
        } catch (IOException e10) {
            throw new ASN1ParsingException("malformed DER construction: " + e10, e10);
        }
    }

    @Override // java.util.Enumeration
    public boolean hasMoreElements() {
        return this.f55991b != null;
    }

    @Override // java.util.Enumeration
    public Object nextElement() {
        Object obj = this.f55991b;
        if (obj != null) {
            this.f55991b = a();
            return obj;
        }
        throw new NoSuchElementException();
    }
}
