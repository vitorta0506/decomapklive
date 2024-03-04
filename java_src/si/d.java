package si;

import io.jsonwebtoken.JwtParser;
import org.apache.http.ProtocolVersion;
import org.apache.http.l;
import org.apache.http.m;
import org.apache.http.util.CharArrayBuffer;
import org.light.utils.IOUtils;
/* loaded from: classes7.dex */
public class d {
    @Deprecated

    /* renamed from: a  reason: collision with root package name */
    public static final d f57931a = new d();

    /* renamed from: b  reason: collision with root package name */
    public static final d f57932b = new d();

    public CharArrayBuffer a(CharArrayBuffer charArrayBuffer, ProtocolVersion protocolVersion) {
        vi.a.g(protocolVersion, "Protocol version");
        int e10 = e(protocolVersion);
        if (charArrayBuffer == null) {
            charArrayBuffer = new CharArrayBuffer(e10);
        } else {
            charArrayBuffer.ensureCapacity(e10);
        }
        charArrayBuffer.append(protocolVersion.getProtocol());
        charArrayBuffer.append(IOUtils.DIR_SEPARATOR_UNIX);
        charArrayBuffer.append(Integer.toString(protocolVersion.getMajor()));
        charArrayBuffer.append(JwtParser.SEPARATOR_CHAR);
        charArrayBuffer.append(Integer.toString(protocolVersion.getMinor()));
        return charArrayBuffer;
    }

    protected void b(CharArrayBuffer charArrayBuffer, org.apache.http.c cVar) {
        String name = cVar.getName();
        String value = cVar.getValue();
        int length = name.length() + 2;
        if (value != null) {
            length += value.length();
        }
        charArrayBuffer.ensureCapacity(length);
        charArrayBuffer.append(name);
        charArrayBuffer.append(": ");
        if (value != null) {
            charArrayBuffer.ensureCapacity(charArrayBuffer.length() + value.length());
            for (int i9 = 0; i9 < value.length(); i9++) {
                char charAt = value.charAt(i9);
                if (charAt == '\r' || charAt == '\n' || charAt == '\f' || charAt == 11) {
                    charAt = ' ';
                }
                charArrayBuffer.append(charAt);
            }
        }
    }

    protected void c(CharArrayBuffer charArrayBuffer, l lVar) {
        String method = lVar.getMethod();
        String uri = lVar.getUri();
        charArrayBuffer.ensureCapacity(method.length() + 1 + uri.length() + 1 + e(lVar.getProtocolVersion()));
        charArrayBuffer.append(method);
        charArrayBuffer.append(' ');
        charArrayBuffer.append(uri);
        charArrayBuffer.append(' ');
        a(charArrayBuffer, lVar.getProtocolVersion());
    }

    protected void d(CharArrayBuffer charArrayBuffer, m mVar) {
        int e10 = e(mVar.getProtocolVersion()) + 1 + 3 + 1;
        String reasonPhrase = mVar.getReasonPhrase();
        if (reasonPhrase != null) {
            e10 += reasonPhrase.length();
        }
        charArrayBuffer.ensureCapacity(e10);
        a(charArrayBuffer, mVar.getProtocolVersion());
        charArrayBuffer.append(' ');
        charArrayBuffer.append(Integer.toString(mVar.getStatusCode()));
        charArrayBuffer.append(' ');
        if (reasonPhrase != null) {
            charArrayBuffer.append(reasonPhrase);
        }
    }

    protected int e(ProtocolVersion protocolVersion) {
        return protocolVersion.getProtocol().length() + 4;
    }

    public CharArrayBuffer f(CharArrayBuffer charArrayBuffer, org.apache.http.c cVar) {
        vi.a.g(cVar, "Header");
        if (cVar instanceof org.apache.http.b) {
            return ((org.apache.http.b) cVar).getBuffer();
        }
        CharArrayBuffer i9 = i(charArrayBuffer);
        b(i9, cVar);
        return i9;
    }

    public CharArrayBuffer g(CharArrayBuffer charArrayBuffer, l lVar) {
        vi.a.g(lVar, "Request line");
        CharArrayBuffer i9 = i(charArrayBuffer);
        c(i9, lVar);
        return i9;
    }

    public CharArrayBuffer h(CharArrayBuffer charArrayBuffer, m mVar) {
        vi.a.g(mVar, "Status line");
        CharArrayBuffer i9 = i(charArrayBuffer);
        d(i9, mVar);
        return i9;
    }

    protected CharArrayBuffer i(CharArrayBuffer charArrayBuffer) {
        if (charArrayBuffer != null) {
            charArrayBuffer.clear();
            return charArrayBuffer;
        }
        return new CharArrayBuffer(64);
    }
}
