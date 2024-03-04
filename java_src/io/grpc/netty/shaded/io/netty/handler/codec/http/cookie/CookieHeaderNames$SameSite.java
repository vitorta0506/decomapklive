package io.grpc.netty.shaded.io.netty.handler.codec.http.cookie;
/* loaded from: classes5.dex */
public enum CookieHeaderNames$SameSite {
    Lax,
    Strict,
    None;

    static CookieHeaderNames$SameSite of(String str) {
        CookieHeaderNames$SameSite[] cookieHeaderNames$SameSiteArr;
        if (str != null) {
            for (CookieHeaderNames$SameSite cookieHeaderNames$SameSite : (CookieHeaderNames$SameSite[]) CookieHeaderNames$SameSite.class.getEnumConstants()) {
                if (cookieHeaderNames$SameSite.name().equalsIgnoreCase(str)) {
                    return cookieHeaderNames$SameSite;
                }
            }
            return null;
        }
        return null;
    }
}
