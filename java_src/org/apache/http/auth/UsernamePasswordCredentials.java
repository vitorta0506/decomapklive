package org.apache.http.auth;

import java.io.Serializable;
import java.security.Principal;
import oi.b;
import vi.a;
import vi.e;
/* loaded from: classes7.dex */
public class UsernamePasswordCredentials implements b, Serializable {
    private static final long serialVersionUID = 243343858802739403L;
    private final String password;
    private final BasicUserPrincipal principal;

    @Deprecated
    public UsernamePasswordCredentials(String str) {
        a.g(str, "Username:password string");
        int indexOf = str.indexOf(58);
        if (indexOf >= 0) {
            this.principal = new BasicUserPrincipal(str.substring(0, indexOf));
            this.password = str.substring(indexOf + 1);
            return;
        }
        this.principal = new BasicUserPrincipal(str);
        this.password = null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof UsernamePasswordCredentials) && e.a(this.principal, ((UsernamePasswordCredentials) obj).principal);
    }

    @Override // oi.b
    public String getPassword() {
        return this.password;
    }

    public String getUserName() {
        return this.principal.getName();
    }

    @Override // oi.b
    public Principal getUserPrincipal() {
        return this.principal;
    }

    public int hashCode() {
        return this.principal.hashCode();
    }

    public String toString() {
        return this.principal.toString();
    }

    public UsernamePasswordCredentials(String str, String str2) {
        a.g(str, "Username");
        this.principal = new BasicUserPrincipal(str);
        this.password = str2;
    }
}
