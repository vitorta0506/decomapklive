package e5;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
/* loaded from: classes2.dex */
public class b implements a {

    /* renamed from: a  reason: collision with root package name */
    private final Proxy f38457a;

    public b() {
        this(null);
    }

    @Override // e5.a
    public HttpURLConnection a(URL url) throws IOException {
        Proxy proxy = this.f38457a;
        return (HttpURLConnection) (proxy == null ? url.openConnection() : url.openConnection(proxy));
    }

    public b(Proxy proxy) {
        this.f38457a = proxy;
    }
}
