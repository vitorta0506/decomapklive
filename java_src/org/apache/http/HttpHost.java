package org.apache.http;

import com.facebook.internal.security.CertificateUtil;
import java.io.Serializable;
import java.net.InetAddress;
import java.util.Locale;
/* loaded from: classes7.dex */
public final class HttpHost implements Cloneable, Serializable {
    public static final String DEFAULT_SCHEME_NAME = "http";
    private static final long serialVersionUID = -7529410654042457626L;
    protected final InetAddress address;
    protected final String hostname;
    protected final String lcHostname;
    protected final int port;
    protected final String schemeName;

    public HttpHost(String str, int i9, String str2) {
        this.hostname = (String) vi.a.c(str, "Host name");
        Locale locale = Locale.ROOT;
        this.lcHostname = str.toLowerCase(locale);
        if (str2 != null) {
            this.schemeName = str2.toLowerCase(locale);
        } else {
            this.schemeName = "http";
        }
        this.port = i9;
        this.address = null;
    }

    public static HttpHost create(String str) {
        String str2;
        vi.a.c(str, "HTTP Host");
        int indexOf = str.indexOf("://");
        if (indexOf > 0) {
            str2 = str.substring(0, indexOf);
            str = str.substring(indexOf + 3);
        } else {
            str2 = null;
        }
        int i9 = -1;
        int lastIndexOf = str.lastIndexOf(CertificateUtil.DELIMITER);
        if (lastIndexOf > 0) {
            try {
                i9 = Integer.parseInt(str.substring(lastIndexOf + 1));
                str = str.substring(0, lastIndexOf);
            } catch (NumberFormatException unused) {
                throw new IllegalArgumentException("Invalid HTTP host: " + str);
            }
        }
        return new HttpHost(str, i9, str2);
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof HttpHost) {
            HttpHost httpHost = (HttpHost) obj;
            if (this.lcHostname.equals(httpHost.lcHostname) && this.port == httpHost.port && this.schemeName.equals(httpHost.schemeName)) {
                InetAddress inetAddress = this.address;
                InetAddress inetAddress2 = httpHost.address;
                if (inetAddress == null) {
                    if (inetAddress2 == null) {
                        return true;
                    }
                } else if (inetAddress.equals(inetAddress2)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public InetAddress getAddress() {
        return this.address;
    }

    public String getHostName() {
        return this.hostname;
    }

    public int getPort() {
        return this.port;
    }

    public String getSchemeName() {
        return this.schemeName;
    }

    public int hashCode() {
        int d10 = vi.e.d(vi.e.c(vi.e.d(17, this.lcHostname), this.port), this.schemeName);
        InetAddress inetAddress = this.address;
        return inetAddress != null ? vi.e.d(d10, inetAddress) : d10;
    }

    public String toHostString() {
        if (this.port != -1) {
            StringBuilder sb2 = new StringBuilder(this.hostname.length() + 6);
            sb2.append(this.hostname);
            sb2.append(CertificateUtil.DELIMITER);
            sb2.append(Integer.toString(this.port));
            return sb2.toString();
        }
        return this.hostname;
    }

    public String toString() {
        return toURI();
    }

    public String toURI() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.schemeName);
        sb2.append("://");
        sb2.append(this.hostname);
        if (this.port != -1) {
            sb2.append(':');
            sb2.append(Integer.toString(this.port));
        }
        return sb2.toString();
    }

    public HttpHost(String str, int i9) {
        this(str, i9, (String) null);
    }

    public HttpHost(String str) {
        this(str, -1, (String) null);
    }

    public HttpHost(InetAddress inetAddress, int i9, String str) {
        this((InetAddress) vi.a.g(inetAddress, "Inet address"), inetAddress.getHostName(), i9, str);
    }

    public HttpHost(InetAddress inetAddress, String str, int i9, String str2) {
        this.address = (InetAddress) vi.a.g(inetAddress, "Inet address");
        String str3 = (String) vi.a.g(str, "Hostname");
        this.hostname = str3;
        Locale locale = Locale.ROOT;
        this.lcHostname = str3.toLowerCase(locale);
        if (str2 != null) {
            this.schemeName = str2.toLowerCase(locale);
        } else {
            this.schemeName = "http";
        }
        this.port = i9;
    }

    public HttpHost(InetAddress inetAddress, int i9) {
        this(inetAddress, i9, (String) null);
    }

    public HttpHost(InetAddress inetAddress) {
        this(inetAddress, -1, (String) null);
    }

    public HttpHost(HttpHost httpHost) {
        vi.a.g(httpHost, "HTTP host");
        this.hostname = httpHost.hostname;
        this.lcHostname = httpHost.lcHostname;
        this.schemeName = httpHost.schemeName;
        this.port = httpHost.port;
        this.address = httpHost.address;
    }
}
