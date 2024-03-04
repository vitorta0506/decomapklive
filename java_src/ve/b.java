package ve;

import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.Response;
/* loaded from: classes4.dex */
public class b implements Interceptor {
    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Response proceed = chain.proceed(chain.request());
        return proceed.code() == 403 ? proceed.newBuilder().code(401).message("Unauthorized").build() : proceed;
    }
}
