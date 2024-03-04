package org.apache.http.conn;

import com.facebook.internal.security.CertificateUtil;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import org.apache.http.HttpHost;
import vi.a;
@Deprecated
/* loaded from: classes7.dex */
public class HttpInetSocketAddress extends InetSocketAddress {
    private static final long serialVersionUID = -6650701828361907957L;
    private final HttpHost httphost;

    public HttpInetSocketAddress(HttpHost httpHost, InetAddress inetAddress, int i9) {
        super(inetAddress, i9);
        a.g(httpHost, "HTTP host");
        this.httphost = httpHost;
    }

    public HttpHost getHttpHost() {
        return this.httphost;
    }

    @Override // java.net.InetSocketAddress
    public String toString() {
        return this.httphost.getHostName() + CertificateUtil.DELIMITER + getPort();
    }
}
