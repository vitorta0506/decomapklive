package ve;

import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.j;
import java.io.IOException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
/* loaded from: classes4.dex */
public class d implements Interceptor {

    /* renamed from: a  reason: collision with root package name */
    final j<? extends TwitterAuthToken> f59142a;

    /* renamed from: b  reason: collision with root package name */
    final TwitterAuthConfig f59143b;

    public d(j<? extends TwitterAuthToken> jVar, TwitterAuthConfig twitterAuthConfig) {
        this.f59142a = jVar;
        this.f59143b = twitterAuthConfig;
    }

    String a(Request request) throws IOException {
        return new com.twitter.sdk.android.core.internal.oauth.b().a(this.f59143b, this.f59142a.a(), null, request.method(), request.url().toString(), b(request));
    }

    Map<String, String> b(Request request) throws IOException {
        HashMap hashMap = new HashMap();
        if ("POST".equals(request.method().toUpperCase(Locale.US))) {
            RequestBody body = request.body();
            if (body instanceof FormBody) {
                FormBody formBody = (FormBody) body;
                for (int i9 = 0; i9 < formBody.size(); i9++) {
                    hashMap.put(formBody.encodedName(i9), formBody.value(i9));
                }
            }
        }
        return hashMap;
    }

    HttpUrl c(HttpUrl httpUrl) {
        HttpUrl.Builder query = httpUrl.newBuilder().query(null);
        int querySize = httpUrl.querySize();
        for (int i9 = 0; i9 < querySize; i9++) {
            query.addEncodedQueryParameter(f.c(httpUrl.queryParameterName(i9)), f.c(httpUrl.queryParameterValue(i9)));
        }
        return query.build();
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Request request = chain.request();
        Request build = request.newBuilder().url(c(request.url())).build();
        return chain.proceed(build.newBuilder().header("Authorization", a(build)).build());
    }
}
