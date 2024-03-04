package com.google.auth.oauth2;

import com.google.auth.Credentials;
import i5.a;
import i5.b;
import io.jsonwebtoken.Header;
import java.io.IOException;
import java.net.URI;
import java.security.GeneralSecurityException;
import java.security.PrivateKey;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class JwtCredentials extends Credentials {
    private static final long CLOCK_SKEW = TimeUnit.MINUTES.toSeconds(5);
    private static final String JWT_ACCESS_PREFIX = "Bearer ";
    private static final String JWT_INCOMPLETE_ERROR_MESSAGE = "JWT claims must contain audience, issuer, and subject.";
    transient com.google.api.client.util.i clock;
    private transient Long expiryInSeconds;
    private transient String jwt;
    private final JwtClaims jwtClaims;
    private final Long lifeSpanSeconds;
    private final Object lock;
    private final PrivateKey privateKey;
    private final String privateKeyId;

    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private PrivateKey f11557a;

        /* renamed from: b  reason: collision with root package name */
        private String f11558b;

        /* renamed from: c  reason: collision with root package name */
        private JwtClaims f11559c;

        /* renamed from: d  reason: collision with root package name */
        private com.google.api.client.util.i f11560d = com.google.api.client.util.i.f11120a;

        /* renamed from: e  reason: collision with root package name */
        private Long f11561e = Long.valueOf(TimeUnit.HOURS.toSeconds(1));

        protected b() {
        }

        public JwtCredentials a() {
            return new JwtCredentials(this);
        }

        com.google.api.client.util.i b() {
            return this.f11560d;
        }

        public JwtClaims c() {
            return this.f11559c;
        }

        public Long d() {
            return this.f11561e;
        }

        public PrivateKey e() {
            return this.f11557a;
        }

        public String f() {
            return this.f11558b;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b g(com.google.api.client.util.i iVar) {
            this.f11560d = (com.google.api.client.util.i) com.google.common.base.o.s(iVar);
            return this;
        }

        public b h(JwtClaims jwtClaims) {
            this.f11559c = (JwtClaims) com.google.common.base.o.s(jwtClaims);
            return this;
        }

        public b i(Long l10) {
            this.f11561e = (Long) com.google.common.base.o.s(l10);
            return this;
        }

        public b j(PrivateKey privateKey) {
            this.f11557a = (PrivateKey) com.google.common.base.o.s(privateKey);
            return this;
        }

        public b k(String str) {
            this.f11558b = str;
            return this;
        }
    }

    public static b newBuilder() {
        return new b();
    }

    private boolean shouldRefresh() {
        return this.expiryInSeconds == null || getClock().a() / 1000 > this.expiryInSeconds.longValue() - CLOCK_SKEW;
    }

    public boolean equals(Object obj) {
        if (obj instanceof JwtCredentials) {
            JwtCredentials jwtCredentials = (JwtCredentials) obj;
            return Objects.equals(this.privateKey, jwtCredentials.privateKey) && Objects.equals(this.privateKeyId, jwtCredentials.privateKeyId) && Objects.equals(this.jwtClaims, jwtCredentials.jwtClaims) && Objects.equals(this.lifeSpanSeconds, jwtCredentials.lifeSpanSeconds);
        }
        return false;
    }

    @Override // com.google.auth.Credentials
    public String getAuthenticationType() {
        return Header.JWT_TYPE;
    }

    com.google.api.client.util.i getClock() {
        if (this.clock == null) {
            this.clock = com.google.api.client.util.i.f11120a;
        }
        return this.clock;
    }

    @Override // com.google.auth.Credentials
    public Map<String, List<String>> getRequestMetadata(URI uri) throws IOException {
        Map<String, List<String>> singletonMap;
        synchronized (this.lock) {
            if (shouldRefresh()) {
                refresh();
            }
            singletonMap = Collections.singletonMap("Authorization", Collections.singletonList(JWT_ACCESS_PREFIX + this.jwt));
        }
        return singletonMap;
    }

    @Override // com.google.auth.Credentials
    public boolean hasRequestMetadata() {
        return true;
    }

    @Override // com.google.auth.Credentials
    public boolean hasRequestMetadataOnly() {
        return true;
    }

    public int hashCode() {
        return Objects.hash(this.privateKey, this.privateKeyId, this.jwtClaims, this.lifeSpanSeconds);
    }

    public JwtCredentials jwtWithClaims(JwtClaims jwtClaims) {
        return newBuilder().j(this.privateKey).k(this.privateKeyId).h(this.jwtClaims.merge(jwtClaims)).a();
    }

    @Override // com.google.auth.Credentials
    public void refresh() throws IOException {
        a.C0452a c0452a = new a.C0452a();
        c0452a.o("RS256");
        c0452a.q(Header.JWT_TYPE);
        c0452a.p(this.privateKeyId);
        b.C0453b c0453b = new b.C0453b();
        c0453b.m(this.jwtClaims.getAudience());
        c0453b.p(this.jwtClaims.getIssuer());
        c0453b.q(this.jwtClaims.getSubject());
        long a10 = this.clock.a() / 1000;
        c0453b.o(Long.valueOf(a10));
        c0453b.n(Long.valueOf(a10 + this.lifeSpanSeconds.longValue()));
        c0453b.putAll(this.jwtClaims.getAdditionalClaims());
        synchronized (this.lock) {
            this.expiryInSeconds = c0453b.k();
            try {
                this.jwt = i5.a.f(this.privateKey, n.f11679f, c0452a, c0453b);
            } catch (GeneralSecurityException e10) {
                throw new IOException("Error signing service account JWT access header with private key.", e10);
            }
        }
    }

    private JwtCredentials(b bVar) {
        this.lock = new byte[0];
        this.privateKey = (PrivateKey) com.google.common.base.o.s(bVar.e());
        this.privateKeyId = bVar.f();
        JwtClaims jwtClaims = (JwtClaims) com.google.common.base.o.s(bVar.c());
        this.jwtClaims = jwtClaims;
        com.google.common.base.o.A(jwtClaims.isComplete(), JWT_INCOMPLETE_ERROR_MESSAGE);
        this.lifeSpanSeconds = (Long) com.google.common.base.o.s(bVar.d());
        this.clock = (com.google.api.client.util.i) com.google.common.base.o.s(bVar.b());
    }
}
