package j7;

import java.io.IOException;
import java.net.UnknownHostException;
import n7.c;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
/* loaded from: classes3.dex */
public class b implements Interceptor {
    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException, UnknownHostException {
        Request request = chain.request();
        Response proceed = chain.proceed(request);
        int i9 = 1;
        while (!proceed.isSuccessful() && i9 < 3) {
            if (!c.c()) {
                return proceed;
            }
            i9++;
            proceed.close();
            proceed = chain.proceed(request);
            if (proceed.code() != 514) {
                if (proceed.code() == 429) {
                    break;
                }
            } else {
                break;
            }
        }
        return proceed;
    }
}
