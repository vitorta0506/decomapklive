package org.apache.http.impl.auth;

import java.util.Locale;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.ChallengeState;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.c;
import org.apache.http.i;
import org.apache.http.util.CharArrayBuffer;
/* loaded from: classes7.dex */
public abstract class a implements oi.a {
    protected ChallengeState challengeState;

    @Deprecated
    public a(ChallengeState challengeState) {
        this.challengeState = challengeState;
    }

    public c authenticate(oi.b bVar, i iVar, ti.c cVar) throws AuthenticationException {
        return authenticate(bVar, iVar);
    }

    public ChallengeState getChallengeState() {
        return this.challengeState;
    }

    public boolean isProxy() {
        ChallengeState challengeState = this.challengeState;
        return challengeState != null && challengeState == ChallengeState.PROXY;
    }

    protected abstract void parseChallenge(CharArrayBuffer charArrayBuffer, int i9, int i10) throws MalformedChallengeException;

    public void processChallenge(c cVar) throws MalformedChallengeException {
        CharArrayBuffer charArrayBuffer;
        int i9;
        vi.a.g(cVar, "Header");
        String name = cVar.getName();
        if (name.equalsIgnoreCase("WWW-Authenticate")) {
            this.challengeState = ChallengeState.TARGET;
        } else if (name.equalsIgnoreCase("Proxy-Authenticate")) {
            this.challengeState = ChallengeState.PROXY;
        } else {
            throw new MalformedChallengeException("Unexpected header name: " + name);
        }
        if (cVar instanceof org.apache.http.b) {
            org.apache.http.b bVar = (org.apache.http.b) cVar;
            charArrayBuffer = bVar.getBuffer();
            i9 = bVar.getValuePos();
        } else {
            String value = cVar.getValue();
            if (value != null) {
                charArrayBuffer = new CharArrayBuffer(value.length());
                charArrayBuffer.append(value);
                i9 = 0;
            } else {
                throw new MalformedChallengeException("Header value is null");
            }
        }
        while (i9 < charArrayBuffer.length() && ti.b.a(charArrayBuffer.charAt(i9))) {
            i9++;
        }
        int i10 = i9;
        while (i10 < charArrayBuffer.length() && !ti.b.a(charArrayBuffer.charAt(i10))) {
            i10++;
        }
        String substring = charArrayBuffer.substring(i9, i10);
        if (substring.equalsIgnoreCase(getSchemeName())) {
            parseChallenge(charArrayBuffer, i10, charArrayBuffer.length());
            return;
        }
        throw new MalformedChallengeException("Invalid scheme identifier: " + substring);
    }

    public String toString() {
        String schemeName = getSchemeName();
        return schemeName != null ? schemeName.toUpperCase(Locale.ROOT) : super.toString();
    }

    public a() {
    }
}
