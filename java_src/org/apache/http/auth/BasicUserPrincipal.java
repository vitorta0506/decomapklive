package org.apache.http.auth;

import java.io.Serializable;
import java.security.Principal;
import vi.a;
import vi.e;
/* loaded from: classes7.dex */
public final class BasicUserPrincipal implements Principal, Serializable {
    private static final long serialVersionUID = -2266305184969850467L;
    private final String username;

    public BasicUserPrincipal(String str) {
        a.g(str, "User name");
        this.username = str;
    }

    @Override // java.security.Principal
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof BasicUserPrincipal) && e.a(this.username, ((BasicUserPrincipal) obj).username);
    }

    @Override // java.security.Principal
    public String getName() {
        return this.username;
    }

    @Override // java.security.Principal
    public int hashCode() {
        return e.d(17, this.username);
    }

    @Override // java.security.Principal
    public String toString() {
        return "[principal: " + this.username + "]";
    }
}
