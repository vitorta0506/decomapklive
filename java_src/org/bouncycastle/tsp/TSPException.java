package org.bouncycastle.tsp;
/* loaded from: classes7.dex */
public class TSPException extends Exception {
    Throwable underlyingException;

    public TSPException(String str) {
        super(str);
    }

    public TSPException(String str, Throwable th2) {
        super(str);
        this.underlyingException = th2;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.underlyingException;
    }

    public Exception getUnderlyingException() {
        return (Exception) this.underlyingException;
    }
}
