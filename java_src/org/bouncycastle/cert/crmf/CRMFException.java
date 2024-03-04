package org.bouncycastle.cert.crmf;
/* loaded from: classes7.dex */
public class CRMFException extends Exception {
    private Throwable cause;

    public CRMFException(String str) {
        this(str, null);
    }

    public CRMFException(String str, Throwable th2) {
        super(str);
        this.cause = th2;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}
