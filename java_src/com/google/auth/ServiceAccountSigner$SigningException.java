package com.google.auth;

import java.util.Objects;
/* loaded from: classes2.dex */
public class ServiceAccountSigner$SigningException extends RuntimeException {
    private static final long serialVersionUID = -6503954300538947223L;

    public ServiceAccountSigner$SigningException(String str, Exception exc) {
        super(str, exc);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ServiceAccountSigner$SigningException) {
            ServiceAccountSigner$SigningException serviceAccountSigner$SigningException = (ServiceAccountSigner$SigningException) obj;
            return Objects.equals(getCause(), serviceAccountSigner$SigningException.getCause()) && Objects.equals(getMessage(), serviceAccountSigner$SigningException.getMessage());
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(getMessage(), getCause());
    }
}
