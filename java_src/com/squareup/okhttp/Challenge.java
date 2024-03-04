package com.squareup.okhttp;

import com.squareup.okhttp.internal.i;
/* loaded from: classes4.dex */
public final class Challenge {
    private final String realm;
    private final String scheme;

    public Challenge(String str, String str2) {
        this.scheme = str;
        this.realm = str2;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Challenge) {
            Challenge challenge = (Challenge) obj;
            if (i.h(this.scheme, challenge.scheme) && i.h(this.realm, challenge.realm)) {
                return true;
            }
        }
        return false;
    }

    public String getRealm() {
        return this.realm;
    }

    public String getScheme() {
        return this.scheme;
    }

    public int hashCode() {
        String str = this.realm;
        int hashCode = (899 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.scheme;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return this.scheme + " realm=\"" + this.realm + "\"";
    }
}
