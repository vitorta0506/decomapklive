package io.grpc.internal;

import androidx.webkit.ProxyConfig;
import com.facebook.internal.security.CertificateUtil;
import io.grpc.HttpConnectProxiedSocketAddress;
import io.grpc.ProxiedSocketAddress;
import java.io.IOException;
import java.net.Authenticator;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.PasswordAuthentication;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes5.dex */
class u1 implements io.grpc.z0 {

    /* renamed from: d  reason: collision with root package name */
    private static final Logger f43081d = Logger.getLogger(u1.class.getName());

    /* renamed from: e  reason: collision with root package name */
    private static final c f43082e = new a();

    /* renamed from: f  reason: collision with root package name */
    private static final com.google.common.base.w<ProxySelector> f43083f = new b();

    /* renamed from: a  reason: collision with root package name */
    private final com.google.common.base.w<ProxySelector> f43084a;

    /* renamed from: b  reason: collision with root package name */
    private final c f43085b;

    /* renamed from: c  reason: collision with root package name */
    private final InetSocketAddress f43086c;

    /* loaded from: classes5.dex */
    class a implements c {
        a() {
        }

        @Override // io.grpc.internal.u1.c
        public PasswordAuthentication a(String str, InetAddress inetAddress, int i9, String str2, String str3, String str4) {
            URL url;
            try {
                url = new URL(str2, str, i9, "");
            } catch (MalformedURLException unused) {
                u1.f43081d.log(Level.WARNING, String.format("failed to create URL for Authenticator: %s %s", str2, str));
                url = null;
            }
            return Authenticator.requestPasswordAuthentication(str, inetAddress, i9, str2, str3, str4, url, Authenticator.RequestorType.PROXY);
        }
    }

    /* loaded from: classes5.dex */
    class b implements com.google.common.base.w<ProxySelector> {
        b() {
        }

        @Override // com.google.common.base.w, java.util.function.Supplier
        /* renamed from: a */
        public ProxySelector get() {
            return ProxySelector.getDefault();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface c {
        PasswordAuthentication a(String str, InetAddress inetAddress, int i9, String str2, String str3, String str4);
    }

    public u1() {
        this(f43083f, f43082e, System.getenv("GRPC_PROXY_EXP"));
    }

    private ProxiedSocketAddress c(InetSocketAddress inetSocketAddress) throws IOException {
        try {
            try {
                URI uri = new URI(ProxyConfig.MATCH_HTTPS, null, GrpcUtil.j(inetSocketAddress), inetSocketAddress.getPort(), null, null, null);
                ProxySelector proxySelector = this.f43084a.get();
                if (proxySelector == null) {
                    f43081d.log(Level.FINE, "proxy selector is null, so continuing without proxy lookup");
                    return null;
                }
                List<Proxy> select = proxySelector.select(uri);
                if (select.size() > 1) {
                    f43081d.warning("More than 1 proxy detected, gRPC will select the first one");
                }
                Proxy proxy = select.get(0);
                if (proxy.type() == Proxy.Type.DIRECT) {
                    return null;
                }
                InetSocketAddress inetSocketAddress2 = (InetSocketAddress) proxy.address();
                PasswordAuthentication a10 = this.f43085b.a(GrpcUtil.j(inetSocketAddress2), inetSocketAddress2.getAddress(), inetSocketAddress2.getPort(), ProxyConfig.MATCH_HTTPS, "", null);
                if (inetSocketAddress2.isUnresolved()) {
                    inetSocketAddress2 = new InetSocketAddress(InetAddress.getByName(inetSocketAddress2.getHostName()), inetSocketAddress2.getPort());
                }
                HttpConnectProxiedSocketAddress.b c10 = HttpConnectProxiedSocketAddress.newBuilder().d(inetSocketAddress).c(inetSocketAddress2);
                if (a10 == null) {
                    return c10.a();
                }
                return c10.e(a10.getUserName()).b(a10.getPassword() != null ? new String(a10.getPassword()) : null).a();
            } catch (URISyntaxException e10) {
                f43081d.log(Level.WARNING, "Failed to construct URI for proxy lookup, proceeding without proxy", (Throwable) e10);
                return null;
            }
        } catch (Throwable th2) {
            f43081d.log(Level.WARNING, "Failed to get host for proxy lookup, proceeding without proxy", th2);
            return null;
        }
    }

    private static InetSocketAddress d(String str) {
        if (str == null) {
            return null;
        }
        String[] split = str.split(CertificateUtil.DELIMITER, 2);
        int parseInt = split.length > 1 ? Integer.parseInt(split[1]) : 80;
        f43081d.warning("Detected GRPC_PROXY_EXP and will honor it, but this feature will be removed in a future release. Use the JVM flags \"-Dhttps.proxyHost=HOST -Dhttps.proxyPort=PORT\" to set the https proxy for this JVM.");
        return new InetSocketAddress(split[0], parseInt);
    }

    @Override // io.grpc.z0
    public ProxiedSocketAddress a(SocketAddress socketAddress) throws IOException {
        if (socketAddress instanceof InetSocketAddress) {
            if (this.f43086c != null) {
                return HttpConnectProxiedSocketAddress.newBuilder().c(this.f43086c).d((InetSocketAddress) socketAddress).a();
            }
            return c((InetSocketAddress) socketAddress);
        }
        return null;
    }

    u1(com.google.common.base.w<ProxySelector> wVar, c cVar, String str) {
        this.f43084a = (com.google.common.base.w) com.google.common.base.o.s(wVar);
        this.f43085b = (c) com.google.common.base.o.s(cVar);
        if (str != null) {
            this.f43086c = d(str);
        } else {
            this.f43086c = null;
        }
    }
}
