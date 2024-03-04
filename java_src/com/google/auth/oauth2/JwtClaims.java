package com.google.auth.oauth2;

import com.google.auth.oauth2.c;
import com.google.common.collect.ImmutableMap;
import java.io.Serializable;
import java.util.Map;
/* loaded from: classes2.dex */
public abstract class JwtClaims implements Serializable {
    private static final long serialVersionUID = 4974444151019426702L;

    /* loaded from: classes2.dex */
    public static abstract class a {
        public abstract JwtClaims a();

        public abstract a b(Map<String, String> map);

        public abstract a c(String str);

        public abstract a d(String str);

        public abstract a e(String str);
    }

    public static a newBuilder() {
        return new c.b().b(ImmutableMap.of());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract Map<String, String> getAdditionalClaims();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract String getAudience();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract String getIssuer();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract String getSubject();

    public boolean isComplete() {
        return ((getAudience() == null && !(getAdditionalClaims().containsKey("scope") && !getAdditionalClaims().get("scope").isEmpty())) || getIssuer() == null || getSubject() == null) ? false : true;
    }

    public JwtClaims merge(JwtClaims jwtClaims) {
        ImmutableMap.b builder = ImmutableMap.builder();
        builder.k(getAdditionalClaims());
        builder.k(jwtClaims.getAdditionalClaims());
        return newBuilder().c(jwtClaims.getAudience() == null ? getAudience() : jwtClaims.getAudience()).d(jwtClaims.getIssuer() == null ? getIssuer() : jwtClaims.getIssuer()).e(jwtClaims.getSubject() == null ? getSubject() : jwtClaims.getSubject()).b(builder.a()).a();
    }
}
