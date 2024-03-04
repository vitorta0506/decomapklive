package org.bouncycastle.jce.exception;

import java.security.cert.CertPath;
import java.security.cert.CertPathValidatorException;
/* loaded from: classes7.dex */
public class ExtCertPathValidatorException extends CertPathValidatorException {
    private Throwable cause;

    public ExtCertPathValidatorException(String str) {
        super(str);
    }

    public ExtCertPathValidatorException(String str, Throwable th2) {
        super(str);
        this.cause = th2;
    }

    public ExtCertPathValidatorException(String str, Throwable th2, CertPath certPath, int i9) {
        super(str, th2, certPath, i9);
        this.cause = th2;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}
