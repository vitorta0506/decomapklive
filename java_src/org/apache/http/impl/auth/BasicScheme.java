package org.apache.http.impl.auth;

import com.facebook.internal.security.CertificateUtil;
import java.nio.charset.Charset;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.ChallengeState;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.c;
import org.apache.http.i;
import org.apache.http.message.BufferedHeader;
import org.apache.http.util.CharArrayBuffer;
import vi.d;
/* loaded from: classes7.dex */
public class BasicScheme extends RFC2617Scheme {
    private static final long serialVersionUID = -1931571557597830536L;
    private boolean complete;

    public BasicScheme(Charset charset) {
        super(charset);
        this.complete = false;
    }

    @Override // org.apache.http.impl.auth.RFC2617Scheme, oi.a
    @Deprecated
    public c authenticate(oi.b bVar, i iVar) throws AuthenticationException {
        return authenticate(bVar, iVar, new ti.a());
    }

    @Override // org.apache.http.impl.auth.RFC2617Scheme, oi.a
    public String getSchemeName() {
        return "basic";
    }

    @Override // org.apache.http.impl.auth.RFC2617Scheme
    public boolean isComplete() {
        return this.complete;
    }

    @Override // org.apache.http.impl.auth.RFC2617Scheme
    public boolean isConnectionBased() {
        return false;
    }

    @Override // org.apache.http.impl.auth.a
    public void processChallenge(c cVar) throws MalformedChallengeException {
        super.processChallenge(cVar);
        this.complete = true;
    }

    @Override // org.apache.http.impl.auth.a
    public String toString() {
        return "BASIC [complete=" + this.complete + "]";
    }

    @Override // org.apache.http.impl.auth.a
    public c authenticate(oi.b bVar, i iVar, ti.c cVar) throws AuthenticationException {
        vi.a.g(bVar, "Credentials");
        vi.a.g(iVar, "HTTP request");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(bVar.getUserPrincipal().getName());
        sb2.append(CertificateUtil.DELIMITER);
        sb2.append(bVar.getPassword() == null ? "null" : bVar.getPassword());
        byte[] f10 = new mi.a(0).f(d.b(sb2.toString(), getCredentialsCharset(iVar)));
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(32);
        if (isProxy()) {
            charArrayBuffer.append("Proxy-Authorization");
        } else {
            charArrayBuffer.append("Authorization");
        }
        charArrayBuffer.append(": Basic ");
        charArrayBuffer.append(f10, 0, f10.length);
        return new BufferedHeader(charArrayBuffer);
    }

    @Deprecated
    public BasicScheme(ChallengeState challengeState) {
        super(challengeState);
    }

    public BasicScheme() {
        this(org.apache.http.a.f55874b);
    }

    @Deprecated
    public static c authenticate(oi.b bVar, String str, boolean z10) {
        vi.a.g(bVar, "Credentials");
        vi.a.g(str, "charset");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(bVar.getUserPrincipal().getName());
        sb2.append(CertificateUtil.DELIMITER);
        sb2.append(bVar.getPassword() == null ? "null" : bVar.getPassword());
        byte[] n9 = mi.a.n(d.b(sb2.toString(), str), false);
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(32);
        if (z10) {
            charArrayBuffer.append("Proxy-Authorization");
        } else {
            charArrayBuffer.append("Authorization");
        }
        charArrayBuffer.append(": Basic ");
        charArrayBuffer.append(n9, 0, n9.length);
        return new BufferedHeader(charArrayBuffer);
    }
}
