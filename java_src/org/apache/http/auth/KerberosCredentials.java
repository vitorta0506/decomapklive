package org.apache.http.auth;

import java.io.Serializable;
import java.security.Principal;
import oi.b;
import org.ietf.jgss.GSSCredential;
/* loaded from: classes7.dex */
public class KerberosCredentials implements b, Serializable {
    private static final long serialVersionUID = 487421613855550713L;
    private final GSSCredential gssCredential;

    public KerberosCredentials(GSSCredential gSSCredential) {
        this.gssCredential = gSSCredential;
    }

    public GSSCredential getGSSCredential() {
        return this.gssCredential;
    }

    @Override // oi.b
    public String getPassword() {
        return null;
    }

    @Override // oi.b
    public Principal getUserPrincipal() {
        return null;
    }
}
