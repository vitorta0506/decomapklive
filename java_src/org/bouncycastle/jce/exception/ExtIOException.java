package org.bouncycastle.jce.exception;

import java.io.IOException;
/* loaded from: classes7.dex */
public class ExtIOException extends IOException {
    private Throwable cause;

    public ExtIOException(String str, Throwable th2) {
        super(str);
        this.cause = th2;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}
