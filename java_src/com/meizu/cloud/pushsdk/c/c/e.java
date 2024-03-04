package com.meizu.cloud.pushsdk.c.c;

import android.net.TrafficStats;
import com.meizu.cloud.pushsdk.c.c.k;
import com.meizu.cloud.pushsdk.util.MinSdkChecker;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
/* loaded from: classes4.dex */
public class e implements a {
    private static l a(final HttpURLConnection httpURLConnection) throws IOException {
        if (httpURLConnection.getDoInput()) {
            final com.meizu.cloud.pushsdk.c.g.d a10 = com.meizu.cloud.pushsdk.c.g.g.a(com.meizu.cloud.pushsdk.c.g.g.a(a(httpURLConnection.getResponseCode()) ? httpURLConnection.getInputStream() : httpURLConnection.getErrorStream()));
            return new l() { // from class: com.meizu.cloud.pushsdk.c.c.e.1
                @Override // com.meizu.cloud.pushsdk.c.c.l
                public com.meizu.cloud.pushsdk.c.g.d a() {
                    return a10;
                }
            };
        }
        return null;
    }

    private static void a(HttpURLConnection httpURLConnection, i iVar) throws IOException {
        String str;
        String str2;
        int c10 = iVar.c();
        if (c10 != 0) {
            if (c10 == 1) {
                str2 = "POST";
            } else if (c10 == 2) {
                str2 = "PUT";
            } else if (c10 == 3) {
                str = "DELETE";
            } else if (c10 == 4) {
                str = "HEAD";
            } else if (c10 != 5) {
                throw new IllegalStateException("Unknown method type.");
            } else {
                str2 = "PATCH";
            }
            httpURLConnection.setRequestMethod(str2);
            b(httpURLConnection, iVar);
            return;
        }
        str = "GET";
        httpURLConnection.setRequestMethod(str);
    }

    protected static boolean a(int i9) {
        return i9 >= 200 && i9 < 300;
    }

    private HttpURLConnection b(i iVar) throws IOException {
        URL url = new URL(iVar.a().toString());
        if (MinSdkChecker.isSupportNotificationChannel()) {
            TrafficStats.setThreadStatsTag(2006537699);
        }
        HttpURLConnection a10 = a(url);
        a10.setConnectTimeout(60000);
        a10.setReadTimeout(60000);
        a10.setUseCaches(false);
        a10.setDoInput(true);
        return a10;
    }

    private static void b(HttpURLConnection httpURLConnection, i iVar) throws IOException {
        j e10 = iVar.e();
        if (e10 != null) {
            httpURLConnection.setDoOutput(true);
            httpURLConnection.addRequestProperty("Content-Type", e10.a().toString());
            com.meizu.cloud.pushsdk.c.g.c a10 = com.meizu.cloud.pushsdk.c.g.g.a(com.meizu.cloud.pushsdk.c.g.g.a(httpURLConnection.getOutputStream()));
            e10.a(a10);
            a10.close();
        }
    }

    @Override // com.meizu.cloud.pushsdk.c.c.a
    public k a(i iVar) throws IOException {
        HttpURLConnection b10 = b(iVar);
        for (String str : iVar.d().b()) {
            String a10 = iVar.a(str);
            com.meizu.cloud.pushsdk.c.a.a.b("current header name " + str + " value " + a10);
            b10.addRequestProperty(str, a10);
        }
        a(b10, iVar);
        int responseCode = b10.getResponseCode();
        return new k.a().a(responseCode).a(iVar.d()).a(b10.getResponseMessage()).a(iVar).a(a(b10)).a();
    }

    protected HttpURLConnection a(URL url) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setInstanceFollowRedirects(HttpURLConnection.getFollowRedirects());
        return httpURLConnection;
    }
}
