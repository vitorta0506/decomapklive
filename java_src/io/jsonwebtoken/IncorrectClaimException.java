package io.jsonwebtoken;
/* loaded from: classes5.dex */
public class IncorrectClaimException extends InvalidClaimException {
    public IncorrectClaimException(Header header, Claims claims, String str) {
        super(header, claims, str);
    }

    public IncorrectClaimException(Header header, Claims claims, String str, Throwable th2) {
        super(header, claims, str, th2);
    }
}
