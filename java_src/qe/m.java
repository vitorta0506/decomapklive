package qe;

import com.facebook.internal.security.CertificateUtil;
import com.squareup.okhttp.Address;
import com.squareup.okhttp.HttpUrl;
import com.squareup.okhttp.Route;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;
/* loaded from: classes4.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    private final Address f57286a;

    /* renamed from: b  reason: collision with root package name */
    private final com.squareup.okhttp.internal.h f57287b;

    /* renamed from: c  reason: collision with root package name */
    private Proxy f57288c;

    /* renamed from: d  reason: collision with root package name */
    private InetSocketAddress f57289d;

    /* renamed from: f  reason: collision with root package name */
    private int f57291f;

    /* renamed from: h  reason: collision with root package name */
    private int f57293h;

    /* renamed from: e  reason: collision with root package name */
    private List<Proxy> f57290e = Collections.emptyList();

    /* renamed from: g  reason: collision with root package name */
    private List<InetSocketAddress> f57292g = Collections.emptyList();

    /* renamed from: i  reason: collision with root package name */
    private final List<Route> f57294i = new ArrayList();

    public m(Address address, com.squareup.okhttp.internal.h hVar) {
        this.f57286a = address;
        this.f57287b = hVar;
        l(address.url(), address.getProxy());
    }

    static String b(InetSocketAddress inetSocketAddress) {
        InetAddress address = inetSocketAddress.getAddress();
        if (address == null) {
            return inetSocketAddress.getHostName();
        }
        return address.getHostAddress();
    }

    private boolean d() {
        return this.f57293h < this.f57292g.size();
    }

    private boolean e() {
        return !this.f57294i.isEmpty();
    }

    private boolean f() {
        return this.f57291f < this.f57290e.size();
    }

    private InetSocketAddress h() throws IOException {
        if (d()) {
            List<InetSocketAddress> list = this.f57292g;
            int i9 = this.f57293h;
            this.f57293h = i9 + 1;
            return list.get(i9);
        }
        throw new SocketException("No route to " + this.f57286a.getUriHost() + "; exhausted inet socket addresses: " + this.f57292g);
    }

    private Route i() {
        return this.f57294i.remove(0);
    }

    private Proxy j() throws IOException {
        if (f()) {
            List<Proxy> list = this.f57290e;
            int i9 = this.f57291f;
            this.f57291f = i9 + 1;
            Proxy proxy = list.get(i9);
            k(proxy);
            return proxy;
        }
        throw new SocketException("No route to " + this.f57286a.getUriHost() + "; exhausted proxy configurations: " + this.f57290e);
    }

    private void k(Proxy proxy) throws IOException {
        String uriHost;
        int uriPort;
        this.f57292g = new ArrayList();
        if (proxy.type() != Proxy.Type.DIRECT && proxy.type() != Proxy.Type.SOCKS) {
            SocketAddress address = proxy.address();
            if (address instanceof InetSocketAddress) {
                InetSocketAddress inetSocketAddress = (InetSocketAddress) address;
                uriHost = b(inetSocketAddress);
                uriPort = inetSocketAddress.getPort();
            } else {
                throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + address.getClass());
            }
        } else {
            uriHost = this.f57286a.getUriHost();
            uriPort = this.f57286a.getUriPort();
        }
        if (uriPort >= 1 && uriPort <= 65535) {
            if (proxy.type() == Proxy.Type.SOCKS) {
                this.f57292g.add(InetSocketAddress.createUnresolved(uriHost, uriPort));
            } else {
                List<InetAddress> lookup = this.f57286a.getDns().lookup(uriHost);
                int size = lookup.size();
                for (int i9 = 0; i9 < size; i9++) {
                    this.f57292g.add(new InetSocketAddress(lookup.get(i9), uriPort));
                }
            }
            this.f57293h = 0;
            return;
        }
        throw new SocketException("No route to " + uriHost + CertificateUtil.DELIMITER + uriPort + "; port is out of range");
    }

    private void l(HttpUrl httpUrl, Proxy proxy) {
        if (proxy != null) {
            this.f57290e = Collections.singletonList(proxy);
        } else {
            this.f57290e = new ArrayList();
            List<Proxy> select = this.f57286a.getProxySelector().select(httpUrl.uri());
            if (select != null) {
                this.f57290e.addAll(select);
            }
            this.f57290e.removeAll(Collections.singleton(Proxy.NO_PROXY));
            this.f57290e.add(Proxy.NO_PROXY);
        }
        this.f57291f = 0;
    }

    public void a(Route route, IOException iOException) {
        if (route.getProxy().type() != Proxy.Type.DIRECT && this.f57286a.getProxySelector() != null) {
            this.f57286a.getProxySelector().connectFailed(this.f57286a.url().uri(), route.getProxy().address(), iOException);
        }
        this.f57287b.b(route);
    }

    public boolean c() {
        return d() || f() || e();
    }

    public Route g() throws IOException {
        if (!d()) {
            if (!f()) {
                if (e()) {
                    return i();
                }
                throw new NoSuchElementException();
            }
            this.f57288c = j();
        }
        InetSocketAddress h10 = h();
        this.f57289d = h10;
        Route route = new Route(this.f57286a, this.f57288c, h10);
        if (this.f57287b.c(route)) {
            this.f57294i.add(route);
            return g();
        }
        return route;
    }
}
