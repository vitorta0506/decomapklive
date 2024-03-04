package xc;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.linecorp.linesdk.LineApiError;
import com.linecorp.linesdk.LineApiResponseCode;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import javax.net.ssl.HttpsURLConnection;
import yc.f;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: e  reason: collision with root package name */
    private static final byte[] f59673e = new byte[0];
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final e f59674a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final d f59675b;

    /* renamed from: c  reason: collision with root package name */
    private int f59676c;

    /* renamed from: d  reason: collision with root package name */
    private int f59677d;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: xc.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public enum EnumC0689a {
        POST,
        GET,
        DELETE,
        PUT
    }

    public a(@NonNull Context context, @NonNull String str) {
        this(new e(context, str));
    }

    @NonNull
    private static byte[] a(@NonNull Map<String, String> map) {
        if (map.isEmpty()) {
            return f59673e;
        }
        try {
            return f.c("", map).getEncodedQuery().getBytes("UTF-8");
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException(e10);
        }
    }

    @NonNull
    private static <T> qc.c<T> c(@NonNull HttpURLConnection httpURLConnection, @Nullable c<T> cVar, @NonNull c<String> cVar2) throws IOException {
        InputStream d10 = d(httpURLConnection);
        int responseCode = httpURLConnection.getResponseCode();
        try {
            if (responseCode == 200 || responseCode == 204) {
                if (cVar == null) {
                    return qc.c.b(null);
                }
                return qc.c.b(cVar.a(d10));
            }
            return qc.c.a(LineApiResponseCode.SERVER_ERROR, LineApiError.a(responseCode, cVar2.a(d10)));
        } catch (IOException e10) {
            return qc.c.a(LineApiResponseCode.INTERNAL_ERROR, new LineApiError(e10, LineApiError.ErrorCode.HTTP_RESPONSE_PARSE_ERROR));
        }
    }

    @NonNull
    private static InputStream d(@NonNull HttpURLConnection httpURLConnection) throws IOException {
        InputStream errorStream;
        if (httpURLConnection.getResponseCode() < 400) {
            errorStream = httpURLConnection.getInputStream();
        } else {
            errorStream = httpURLConnection.getErrorStream();
        }
        return e(httpURLConnection) ? new GZIPInputStream(errorStream) : errorStream;
    }

    private static boolean e(@NonNull HttpURLConnection httpURLConnection) {
        List<String> list = httpURLConnection.getHeaderFields().get("Content-Encoding");
        if (list != null && !list.isEmpty()) {
            for (int i9 = 0; i9 < list.size(); i9++) {
                if (list.get(i9).equalsIgnoreCase("gzip")) {
                    return true;
                }
            }
        }
        return false;
    }

    private static void f(@NonNull qc.c<?> cVar, @NonNull Exception exc) {
    }

    @NonNull
    private HttpURLConnection g(@NonNull Uri uri, int i9, EnumC0689a enumC0689a) throws IOException {
        HttpURLConnection i10 = i(uri);
        i10.setInstanceFollowRedirects(true);
        i10.setRequestProperty("User-Agent", this.f59674a.b());
        i10.setRequestProperty("Accept-Encoding", "gzip");
        i10.setRequestProperty("Content-Type", "application/json");
        i10.setRequestProperty("Content-Length", String.valueOf(i9));
        i10.setConnectTimeout(this.f59676c);
        i10.setReadTimeout(this.f59677d);
        i10.setRequestMethod(enumC0689a.name());
        i10.setDoOutput(true);
        return i10;
    }

    @NonNull
    private HttpURLConnection h(@NonNull Uri uri) throws IOException {
        HttpURLConnection i9 = i(uri);
        i9.setInstanceFollowRedirects(true);
        i9.setRequestProperty("User-Agent", this.f59674a.b());
        i9.setRequestProperty("Accept-Encoding", "gzip");
        i9.setConnectTimeout(this.f59676c);
        i9.setReadTimeout(this.f59677d);
        i9.setRequestMethod(EnumC0689a.GET.name());
        return i9;
    }

    @NonNull
    private HttpURLConnection j(@NonNull Uri uri, int i9) throws IOException {
        HttpURLConnection i10 = i(uri);
        i10.setInstanceFollowRedirects(true);
        i10.setRequestProperty("User-Agent", this.f59674a.b());
        i10.setRequestProperty("Accept-Encoding", "gzip");
        i10.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
        i10.setRequestProperty("Content-Length", String.valueOf(i9));
        i10.setConnectTimeout(this.f59676c);
        i10.setReadTimeout(this.f59677d);
        i10.setRequestMethod(EnumC0689a.POST.name());
        i10.setDoOutput(true);
        return i10;
    }

    @NonNull
    @WorkerThread
    private <T> qc.c<T> m(@NonNull EnumC0689a enumC0689a, @NonNull Uri uri, @NonNull Map<String, String> map, @NonNull String str, @Nullable c<T> cVar) {
        byte[] bytes = str.getBytes();
        HttpURLConnection httpURLConnection = null;
        try {
            try {
                httpURLConnection = g(uri, bytes.length, enumC0689a);
                n(httpURLConnection, map);
                httpURLConnection.connect();
                OutputStream outputStream = httpURLConnection.getOutputStream();
                outputStream.write(bytes);
                outputStream.flush();
                qc.c<T> c10 = c(httpURLConnection, cVar, this.f59675b);
                httpURLConnection.disconnect();
                return c10;
            } catch (IOException e10) {
                qc.c<T> a10 = qc.c.a(LineApiResponseCode.NETWORK_ERROR, new LineApiError(e10));
                f(a10, e10);
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                return a10;
            }
        } catch (Throwable th2) {
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            throw th2;
        }
    }

    private static void n(@NonNull HttpURLConnection httpURLConnection, @NonNull Map<String, String> map) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
        }
    }

    @NonNull
    @WorkerThread
    public <T> qc.c<T> b(@NonNull Uri uri, @NonNull Map<String, String> map, @NonNull Map<String, String> map2, @Nullable c<T> cVar) {
        Uri b10 = f.b(uri, map2);
        HttpURLConnection httpURLConnection = null;
        try {
            try {
                httpURLConnection = h(b10);
                n(httpURLConnection, map);
                httpURLConnection.connect();
                qc.c<T> c10 = c(httpURLConnection, cVar, this.f59675b);
                httpURLConnection.disconnect();
                return c10;
            } catch (IOException e10) {
                qc.c<T> a10 = qc.c.a(LineApiResponseCode.NETWORK_ERROR, new LineApiError(e10));
                f(a10, e10);
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                return a10;
            }
        } catch (Throwable th2) {
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            throw th2;
        }
    }

    @NonNull
    @VisibleForTesting
    protected HttpURLConnection i(@NonNull Uri uri) throws IOException {
        URLConnection openConnection = new URL(uri.toString()).openConnection();
        if (openConnection instanceof HttpsURLConnection) {
            if (Build.VERSION.SDK_INT >= 24) {
                return (HttpURLConnection) openConnection;
            }
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) openConnection;
            httpsURLConnection.setSSLSocketFactory(new oc.a(httpsURLConnection.getSSLSocketFactory()));
            return httpsURLConnection;
        }
        throw new IllegalArgumentException("The scheme of the server url must be https." + uri);
    }

    @NonNull
    @WorkerThread
    public <T> qc.c<T> k(@NonNull Uri uri, @NonNull Map<String, String> map, @NonNull Map<String, String> map2, @NonNull c<T> cVar) {
        byte[] a10 = a(map2);
        HttpURLConnection httpURLConnection = null;
        try {
            try {
                httpURLConnection = j(uri, a10.length);
                n(httpURLConnection, map);
                httpURLConnection.connect();
                OutputStream outputStream = httpURLConnection.getOutputStream();
                outputStream.write(a10);
                outputStream.flush();
                qc.c<T> c10 = c(httpURLConnection, cVar, this.f59675b);
                httpURLConnection.disconnect();
                return c10;
            } catch (IOException e10) {
                qc.c<T> a11 = qc.c.a(LineApiResponseCode.NETWORK_ERROR, new LineApiError(e10));
                f(a11, e10);
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                return a11;
            }
        } catch (Throwable th2) {
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            throw th2;
        }
    }

    @NonNull
    @WorkerThread
    public <T> qc.c<T> l(@NonNull Uri uri, @NonNull Map<String, String> map, @NonNull String str, @NonNull c<T> cVar) {
        return m(EnumC0689a.POST, uri, map, str, cVar);
    }

    @VisibleForTesting
    protected a(@NonNull e eVar) {
        this.f59674a = eVar;
        this.f59675b = new d("UTF-8");
        this.f59676c = 90000;
        this.f59677d = 90000;
    }
}
