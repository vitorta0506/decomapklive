package io.jsonwebtoken;
/* loaded from: classes5.dex */
public class PrematureJwtException extends ClaimJwtException {
    public PrematureJwtException(Header header, Claims claims, String str) {
        super(header, claims, str);
    }

    public PrematureJwtException(Header header, Claims claims, String str, Throwable th2) {
        super(header, claims, str, th2);
    }
}
