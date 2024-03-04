package com.google.auth.oauth2;

import com.google.auth.oauth2.JwtClaims;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes2.dex */
final class c extends JwtClaims {
    private static final long serialVersionUID = 4974444151019426702L;

    /* renamed from: a  reason: collision with root package name */
    private final String f11616a;

    /* renamed from: b  reason: collision with root package name */
    private final String f11617b;

    /* renamed from: c  reason: collision with root package name */
    private final String f11618c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, String> f11619d;

    /* loaded from: classes2.dex */
    static final class b extends JwtClaims.a {

        /* renamed from: a  reason: collision with root package name */
        private String f11620a;

        /* renamed from: b  reason: collision with root package name */
        private String f11621b;

        /* renamed from: c  reason: collision with root package name */
        private String f11622c;

        /* renamed from: d  reason: collision with root package name */
        private Map<String, String> f11623d;

        @Override // com.google.auth.oauth2.JwtClaims.a
        public JwtClaims a() {
            Map<String, String> map = this.f11623d;
            if (map != null) {
                return new c(this.f11620a, this.f11621b, this.f11622c, map);
            }
            throw new IllegalStateException("Missing required properties: additionalClaims");
        }

        @Override // com.google.auth.oauth2.JwtClaims.a
        public JwtClaims.a b(Map<String, String> map) {
            Objects.requireNonNull(map, "Null additionalClaims");
            this.f11623d = map;
            return this;
        }

        @Override // com.google.auth.oauth2.JwtClaims.a
        public JwtClaims.a c(String str) {
            this.f11620a = str;
            return this;
        }

        @Override // com.google.auth.oauth2.JwtClaims.a
        public JwtClaims.a d(String str) {
            this.f11621b = str;
            return this;
        }

        @Override // com.google.auth.oauth2.JwtClaims.a
        public JwtClaims.a e(String str) {
            this.f11622c = str;
            return this;
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof JwtClaims) {
            JwtClaims jwtClaims = (JwtClaims) obj;
            String str = this.f11616a;
            if (str != null ? str.equals(jwtClaims.getAudience()) : jwtClaims.getAudience() == null) {
                String str2 = this.f11617b;
                if (str2 != null ? str2.equals(jwtClaims.getIssuer()) : jwtClaims.getIssuer() == null) {
                    String str3 = this.f11618c;
                    if (str3 != null ? str3.equals(jwtClaims.getSubject()) : jwtClaims.getSubject() == null) {
                        if (this.f11619d.equals(jwtClaims.getAdditionalClaims())) {
                            return true;
                        }
                    }
                }
            }
            return false;
        }
        return false;
    }

    @Override // com.google.auth.oauth2.JwtClaims
    Map<String, String> getAdditionalClaims() {
        return this.f11619d;
    }

    @Override // com.google.auth.oauth2.JwtClaims
    String getAudience() {
        return this.f11616a;
    }

    @Override // com.google.auth.oauth2.JwtClaims
    String getIssuer() {
        return this.f11617b;
    }

    @Override // com.google.auth.oauth2.JwtClaims
    String getSubject() {
        return this.f11618c;
    }

    public int hashCode() {
        String str = this.f11616a;
        int hashCode = ((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003;
        String str2 = this.f11617b;
        int hashCode2 = (hashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f11618c;
        return ((hashCode2 ^ (str3 != null ? str3.hashCode() : 0)) * 1000003) ^ this.f11619d.hashCode();
    }

    public String toString() {
        return "JwtClaims{audience=" + this.f11616a + ", issuer=" + this.f11617b + ", subject=" + this.f11618c + ", additionalClaims=" + this.f11619d + "}";
    }

    private c(String str, String str2, String str3, Map<String, String> map) {
        this.f11616a = str;
        this.f11617b = str2;
        this.f11618c = str3;
        this.f11619d = map;
    }
}
