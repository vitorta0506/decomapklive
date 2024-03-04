package qe;

import com.squareup.okhttp.HttpUrl;
import com.squareup.okhttp.Request;
import java.net.Proxy;
/* loaded from: classes4.dex */
public final class k {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(Request request, Proxy.Type type) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(request.method());
        sb2.append(' ');
        if (b(request, type)) {
            sb2.append(request.httpUrl());
        } else {
            sb2.append(c(request.httpUrl()));
        }
        sb2.append(" HTTP/1.1");
        return sb2.toString();
    }

    private static boolean b(Request request, Proxy.Type type) {
        return !request.isHttps() && type == Proxy.Type.HTTP;
    }

    public static String c(HttpUrl httpUrl) {
        String encodedPath = httpUrl.encodedPath();
        String encodedQuery = httpUrl.encodedQuery();
        if (encodedQuery != null) {
            return encodedPath + '?' + encodedQuery;
        }
        return encodedPath;
    }
}
