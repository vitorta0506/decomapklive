package org.apache.http.auth;

import java.io.Serializable;
import java.security.Principal;
import java.util.Locale;
import oi.b;
import vi.a;
import vi.e;
/* loaded from: classes7.dex */
public class NTCredentials implements b, Serializable {
    private static final long serialVersionUID = -7385699315228907265L;
    private final String password;
    private final NTUserPrincipal principal;
    private final String workstation;

    @Deprecated
    public NTCredentials(String str) {
        a.g(str, "Username:password string");
        int indexOf = str.indexOf(58);
        if (indexOf >= 0) {
            String substring = str.substring(0, indexOf);
            this.password = str.substring(indexOf + 1);
            str = substring;
        } else {
            this.password = null;
        }
        int indexOf2 = str.indexOf(47);
        if (indexOf2 >= 0) {
            this.principal = new NTUserPrincipal(str.substring(0, indexOf2).toUpperCase(Locale.ROOT), str.substring(indexOf2 + 1));
        } else {
            this.principal = new NTUserPrincipal(null, str.substring(indexOf2 + 1));
        }
        this.workstation = null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NTCredentials) {
            NTCredentials nTCredentials = (NTCredentials) obj;
            return e.a(this.principal, nTCredentials.principal) && e.a(this.workstation, nTCredentials.workstation);
        }
        return false;
    }

    public String getDomain() {
        return this.principal.getDomain();
    }

    @Override // oi.b
    public String getPassword() {
        return this.password;
    }

    public String getUserName() {
        return this.principal.getUsername();
    }

    @Override // oi.b
    public Principal getUserPrincipal() {
        return this.principal;
    }

    public String getWorkstation() {
        return this.workstation;
    }

    public int hashCode() {
        return e.d(e.d(17, this.principal), this.workstation);
    }

    public String toString() {
        return "[principal: " + this.principal + "][workstation: " + this.workstation + "]";
    }

    public NTCredentials(String str, String str2, String str3, String str4) {
        a.g(str, "User name");
        this.principal = new NTUserPrincipal(str4, str);
        this.password = str2;
        if (str3 != null) {
            this.workstation = str3.toUpperCase(Locale.ROOT);
        } else {
            this.workstation = null;
        }
    }
}
