package ie;

import java.io.IOException;
import java.util.UUID;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class h implements Interceptor {

    /* renamed from: a  reason: collision with root package name */
    private final String f41050a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(String str) {
        this.f41050a = str;
    }

    private synchronized String c() {
        return UUID.randomUUID().toString().replaceAll("-", "");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Headers.Builder a() {
        return new Headers.Builder().add("User-Agent", pe.b.d(e.f41041a)).add("X-Snap-SDK-OAuth-Client-Id", this.f41050a).add("X-Cloud-Trace-Context", String.format("%s/0;o=1", c())).add("X-SnapKit-Core-Version", "1.13.2");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Request.Builder b(Interceptor.Chain chain) {
        return chain.request().newBuilder().headers(a().build());
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        return chain.proceed(b(chain).build());
    }
}
