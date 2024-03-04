package org.bouncycastle.jcajce.provider.symmetric.util;

import java.security.InvalidKeyException;
/* loaded from: classes7.dex */
public class BaseWrapCipher$InvalidKeyOrParametersException extends InvalidKeyException {
    private final Throwable cause;

    BaseWrapCipher$InvalidKeyOrParametersException(String str, Throwable th2) {
        super(str);
        this.cause = th2;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}
