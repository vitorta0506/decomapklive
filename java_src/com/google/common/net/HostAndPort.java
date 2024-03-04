package com.google.common.net;

import com.google.common.base.l;
import com.google.common.base.o;
import java.io.Serializable;
/* loaded from: classes2.dex */
public final class HostAndPort implements Serializable {
    private static final int NO_PORT = -1;
    private static final long serialVersionUID = 0;
    private final boolean hasBracketlessColons;
    private final String host;
    private final int port;

    private HostAndPort(String str, int i9, boolean z10) {
        this.host = str;
        this.port = i9;
        this.hasBracketlessColons = z10;
    }

    public static HostAndPort fromHost(String str) {
        HostAndPort fromString = fromString(str);
        o.m(!fromString.hasPort(), "Host has a port: %s", str);
        return fromString;
    }

    public static HostAndPort fromParts(String str, int i9) {
        o.h(isValidPort(i9), "Port out of range: %s", i9);
        HostAndPort fromString = fromString(str);
        o.m(!fromString.hasPort(), "Host has a port: %s", str);
        return new HostAndPort(fromString.host, i9, fromString.hasBracketlessColons);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.common.net.HostAndPort fromString(java.lang.String r8) {
        /*
            com.google.common.base.o.s(r8)
            java.lang.String r0 = "["
            boolean r0 = r8.startsWith(r0)
            r1 = -1
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L19
            java.lang.String[] r0 = getHostAndPortFromBracketedHost(r8)
            r4 = r0[r3]
            r0 = r0[r2]
        L16:
            r5 = r4
            r4 = 0
            goto L3c
        L19:
            r0 = 58
            int r4 = r8.indexOf(r0)
            if (r4 < 0) goto L32
            int r5 = r4 + 1
            int r0 = r8.indexOf(r0, r5)
            if (r0 != r1) goto L32
            java.lang.String r4 = r8.substring(r3, r4)
            java.lang.String r0 = r8.substring(r5)
            goto L16
        L32:
            if (r4 < 0) goto L36
            r0 = 1
            goto L37
        L36:
            r0 = 0
        L37:
            r4 = 0
            r5 = r8
            r7 = r4
            r4 = r0
            r0 = r7
        L3c:
            boolean r6 = com.google.common.base.v.b(r0)
            if (r6 != 0) goto L81
            java.lang.String r1 = "+"
            boolean r1 = r0.startsWith(r1)
            if (r1 != 0) goto L55
            com.google.common.base.d r1 = com.google.common.base.d.d()
            boolean r1 = r1.k(r0)
            if (r1 == 0) goto L55
            goto L56
        L55:
            r2 = 0
        L56:
            java.lang.String r1 = "Unparseable port number: %s"
            com.google.common.base.o.m(r2, r1, r8)
            int r1 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.NumberFormatException -> L69
            boolean r0 = isValidPort(r1)
            java.lang.String r2 = "Port number out of range: %s"
            com.google.common.base.o.m(r0, r2, r8)
            goto L81
        L69:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "Unparseable port number: "
            int r2 = r8.length()
            if (r2 == 0) goto L78
            java.lang.String r8 = r1.concat(r8)
            goto L7d
        L78:
            java.lang.String r8 = new java.lang.String
            r8.<init>(r1)
        L7d:
            r0.<init>(r8)
            throw r0
        L81:
            com.google.common.net.HostAndPort r8 = new com.google.common.net.HostAndPort
            r8.<init>(r5, r1, r4)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.net.HostAndPort.fromString(java.lang.String):com.google.common.net.HostAndPort");
    }

    private static String[] getHostAndPortFromBracketedHost(String str) {
        o.m(str.charAt(0) == '[', "Bracketed host-port string must start with a bracket: %s", str);
        int indexOf = str.indexOf(58);
        int lastIndexOf = str.lastIndexOf(93);
        o.m(indexOf > -1 && lastIndexOf > indexOf, "Invalid bracketed host/port: %s", str);
        String substring = str.substring(1, lastIndexOf);
        int i9 = lastIndexOf + 1;
        if (i9 == str.length()) {
            return new String[]{substring, ""};
        }
        o.m(str.charAt(i9) == ':', "Only a colon may follow a close bracket: %s", str);
        int i10 = lastIndexOf + 2;
        for (int i11 = i10; i11 < str.length(); i11++) {
            o.m(Character.isDigit(str.charAt(i11)), "Port must be numeric: %s", str);
        }
        return new String[]{substring, str.substring(i10)};
    }

    private static boolean isValidPort(int i9) {
        return i9 >= 0 && i9 <= 65535;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof HostAndPort) {
            HostAndPort hostAndPort = (HostAndPort) obj;
            return l.a(this.host, hostAndPort.host) && this.port == hostAndPort.port;
        }
        return false;
    }

    public String getHost() {
        return this.host;
    }

    public int getPort() {
        o.z(hasPort());
        return this.port;
    }

    public int getPortOrDefault(int i9) {
        return hasPort() ? this.port : i9;
    }

    public boolean hasPort() {
        return this.port >= 0;
    }

    public int hashCode() {
        return l.b(this.host, Integer.valueOf(this.port));
    }

    public HostAndPort requireBracketsForIPv6() {
        o.m(!this.hasBracketlessColons, "Possible bracketless IPv6 literal: %s", this.host);
        return this;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(this.host.length() + 8);
        if (this.host.indexOf(58) >= 0) {
            sb2.append('[');
            sb2.append(this.host);
            sb2.append(']');
        } else {
            sb2.append(this.host);
        }
        if (hasPort()) {
            sb2.append(':');
            sb2.append(this.port);
        }
        return sb2.toString();
    }

    public HostAndPort withDefaultPort(int i9) {
        o.d(isValidPort(i9));
        return hasPort() ? this : new HostAndPort(this.host, i9, this.hasBracketlessColons);
    }
}
