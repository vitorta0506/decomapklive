package org.bouncycastle.jce.exception;

import java.security.cert.CertificateEncodingException;
/* loaded from: classes7.dex */
public class ExtCertificateEncodingException extends CertificateEncodingException {
    private Throwable cause;

    public ExtCertificateEncodingException(String str, Throwable th2) {
        super(str);
        this.cause = th2;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}
