package ve;

import com.twitter.sdk.android.core.internal.oauth.GuestAuthToken;
import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
/* loaded from: classes4.dex */
public class a implements Interceptor {

    /* renamed from: a  reason: collision with root package name */
    final com.twitter.sdk.android.core.e f59140a;

    public a(com.twitter.sdk.android.core.e eVar) {
        this.f59140a = eVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Request.Builder builder, GuestAuthToken guestAuthToken) {
        builder.header("Authorization", guestAuthToken.b() + " " + guestAuthToken.a());
        builder.header(GuestAuthToken.HEADER_GUEST_TOKEN, guestAuthToken.c());
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Request request = chain.request();
        com.twitter.sdk.android.core.d b10 = this.f59140a.b();
        GuestAuthToken a10 = b10 == null ? null : b10.a();
        if (a10 != null) {
            Request.Builder newBuilder = request.newBuilder();
            a(newBuilder, a10);
            return chain.proceed(newBuilder.build());
        }
        return chain.proceed(request);
    }
}
