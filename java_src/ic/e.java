package ic;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
/* loaded from: classes4.dex */
public class e implements Interceptor {

    /* renamed from: a  reason: collision with root package name */
    public static final Map<String, f> f41022a = new HashMap();

    public static void a(String str, f fVar) {
        f41022a.put(str, fVar);
    }

    public static void b(String str) {
        f41022a.remove(str);
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        try {
            Request request = chain.request();
            Response proceed = chain.proceed(request);
            return proceed.newBuilder().body(new g(request.url().toString(), proceed.body())).build();
        } catch (Exception e10) {
            throw new IOException(e10);
        }
    }
}
