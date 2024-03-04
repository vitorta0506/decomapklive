package io.jsonwebtoken;
/* loaded from: classes5.dex */
public class MissingClaimException extends InvalidClaimException {
    public MissingClaimException(Header header, Claims claims, String str) {
        super(header, claims, str);
    }

    public MissingClaimException(Header header, Claims claims, String str, Throwable th2) {
        super(header, claims, str, th2);
    }
}
