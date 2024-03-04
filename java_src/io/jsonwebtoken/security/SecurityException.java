package io.jsonwebtoken.security;

import io.jsonwebtoken.JwtException;
/* loaded from: classes6.dex */
public class SecurityException extends JwtException {
    public SecurityException(String str) {
        super(str);
    }

    public SecurityException(String str, Throwable th2) {
        super(str, th2);
    }
}
