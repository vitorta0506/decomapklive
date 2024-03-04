package com.google.android.play.core.internal;

import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
/* loaded from: classes2.dex */
final class n1 extends o1 {

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f10589b;

    public n1(X509Certificate x509Certificate, byte[] bArr) {
        super(x509Certificate);
        this.f10589b = bArr;
    }

    @Override // java.security.cert.Certificate
    public final byte[] getEncoded() throws CertificateEncodingException {
        return this.f10589b;
    }
}
