package qe;

import com.squareup.okhttp.Protocol;
import java.io.IOException;
import java.net.ProtocolException;
/* loaded from: classes4.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    public final Protocol f57295a;

    /* renamed from: b  reason: collision with root package name */
    public final int f57296b;

    /* renamed from: c  reason: collision with root package name */
    public final String f57297c;

    public n(Protocol protocol, int i9, String str) {
        this.f57295a = protocol;
        this.f57296b = i9;
        this.f57297c = str;
    }

    public static n a(String str) throws IOException {
        Protocol protocol;
        String str2;
        int i9 = 9;
        if (str.startsWith("HTTP/1.")) {
            if (str.length() >= 9 && str.charAt(8) == ' ') {
                int charAt = str.charAt(7) - '0';
                if (charAt == 0) {
                    protocol = Protocol.HTTP_1_0;
                } else if (charAt == 1) {
                    protocol = Protocol.HTTP_1_1;
                } else {
                    throw new ProtocolException("Unexpected status line: " + str);
                }
            } else {
                throw new ProtocolException("Unexpected status line: " + str);
            }
        } else if (str.startsWith("ICY ")) {
            protocol = Protocol.HTTP_1_0;
            i9 = 4;
        } else {
            throw new ProtocolException("Unexpected status line: " + str);
        }
        int i10 = i9 + 3;
        if (str.length() >= i10) {
            try {
                int parseInt = Integer.parseInt(str.substring(i9, i10));
                if (str.length() <= i10) {
                    str2 = "";
                } else if (str.charAt(i10) == ' ') {
                    str2 = str.substring(i9 + 4);
                } else {
                    throw new ProtocolException("Unexpected status line: " + str);
                }
                return new n(protocol, parseInt, str2);
            } catch (NumberFormatException unused) {
                throw new ProtocolException("Unexpected status line: " + str);
            }
        }
        throw new ProtocolException("Unexpected status line: " + str);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f57295a == Protocol.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1");
        sb2.append(' ');
        sb2.append(this.f57296b);
        if (this.f57297c != null) {
            sb2.append(' ');
            sb2.append(this.f57297c);
        }
        return sb2.toString();
    }
}
