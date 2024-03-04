package cn.jiguang.net;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import android.text.TextUtils;
import cn.jiguang.f.i;
import com.huawei.hms.framework.common.ContainerUtils;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Map;
import okio.Utf8;
/* loaded from: classes.dex */
public class HttpUtils {

    /* renamed from: a  reason: collision with root package name */
    public static final String f2680a = cn.jiguang.s.a.b(new byte[]{32, 0, 14, 41, 38, 38, Utf8.REPLACEMENT_BYTE, 1, 23, 43});

    /* loaded from: classes.dex */
    public static abstract class HttpListener {
        protected void a() {
        }

        protected void a(HttpResponse httpResponse) {
        }
    }

    /* loaded from: classes.dex */
    private static class a extends AsyncTask<HttpRequest, Void, HttpResponse> {

        /* renamed from: a  reason: collision with root package name */
        private HttpListener f2681a;

        /* renamed from: b  reason: collision with root package name */
        private Context f2682b;

        public a(Context context, HttpListener httpListener) {
            this.f2681a = httpListener;
            this.f2682b = context;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public HttpResponse doInBackground(HttpRequest... httpRequestArr) {
            if (httpRequestArr == null || httpRequestArr.length == 0) {
                return null;
            }
            return HttpUtils.httpGet(this.f2682b, httpRequestArr[0]);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public void onPostExecute(HttpResponse httpResponse) {
            HttpListener httpListener = this.f2681a;
            if (httpListener != null) {
                httpListener.a(httpResponse);
            }
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            HttpListener httpListener = this.f2681a;
            if (httpListener != null) {
                httpListener.a();
            }
        }
    }

    /* loaded from: classes.dex */
    private static class b extends AsyncTask<String, Void, HttpResponse> {

        /* renamed from: a  reason: collision with root package name */
        private HttpListener f2683a;

        /* renamed from: b  reason: collision with root package name */
        private Context f2684b;

        public b(HttpListener httpListener, Context context) {
            this.f2683a = httpListener;
            this.f2684b = context;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public HttpResponse doInBackground(String... strArr) {
            if (strArr == null || strArr.length == 0) {
                return null;
            }
            return HttpUtils.httpGet(this.f2684b, strArr[0]);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public void onPostExecute(HttpResponse httpResponse) {
            HttpListener httpListener = this.f2683a;
            if (httpListener != null) {
                httpListener.a(httpResponse);
            }
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            HttpListener httpListener = this.f2683a;
            if (httpListener != null) {
                httpListener.a();
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(16:5|(3:6|7|(4:9|10|11|(5:13|(1:15)|16|(1:18)(1:20)|19)))|(2:22|(15:24|26|27|28|29|30|32|33|(8:36|37|(3:51|52|(1:54))|(1:44)|(1:46)|47|48|49)|59|(3:40|42|44)|(0)|47|48|49))|109|28|29|30|32|33|(8:36|37|(0)|(0)|(0)|47|48|49)|59|(0)|(0)|47|48|49) */
    /* JADX WARN: Can't wrap try/catch for region: R(21:5|6|7|9|10|11|(5:13|(1:15)|16|(1:18)(1:20)|19)|(2:22|(15:24|26|27|28|29|30|32|33|(8:36|37|(3:51|52|(1:54))|(1:44)|(1:46)|47|48|49)|59|(3:40|42|44)|(0)|47|48|49))|109|28|29|30|32|33|(8:36|37|(0)|(0)|(0)|47|48|49)|59|(0)|(0)|47|48|49) */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x023a, code lost:
        if (r11 != null) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x023c, code lost:
        r11.disconnect();
        r3 = r3;
        r9 = r9;
        r11 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00d1, code lost:
        r4 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00d2, code lost:
        cn.jiguang.as.d.c("HttpUtils", "get input stream error:" + r4.getMessage());
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ea, code lost:
        r4 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0138, code lost:
        r10 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0139, code lost:
        r11 = r9;
        r9 = r1;
        r1 = r4;
        r3 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x013d, code lost:
        r10 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x013e, code lost:
        r8 = r1;
        r1 = r9;
        r9 = r8;
        r3 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0143, code lost:
        r10 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0144, code lost:
        r11 = r9;
        r9 = r1;
        r1 = r4;
        r3 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01a4, code lost:
        if (r11 != null) goto L65;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:108:0x024c  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x00f9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x011d A[Catch: all -> 0x0138, IOException -> 0x013d, MalformedURLException -> 0x0143, TryCatch #11 {MalformedURLException -> 0x0143, IOException -> 0x013d, all -> 0x0138, blocks: (B:33:0x00eb, B:47:0x010d, B:49:0x0113, B:51:0x011d, B:52:0x0127), top: B:127:0x00eb }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01bb A[Catch: all -> 0x0207, TryCatch #6 {all -> 0x0207, blocks: (B:82:0x01ae, B:84:0x01bb, B:85:0x01c3, B:92:0x01e0, B:86:0x01c7, B:88:0x01cb, B:89:0x01d4, B:91:0x01d8), top: B:118:0x01ae }] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01c7 A[Catch: all -> 0x0207, TryCatch #6 {all -> 0x0207, blocks: (B:82:0x01ae, B:84:0x01bb, B:85:0x01c3, B:92:0x01e0, B:86:0x01c7, B:88:0x01cb, B:89:0x01d4, B:91:0x01d8), top: B:118:0x01ae }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0203  */
    /* JADX WARN: Type inference failed for: r11v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r11v20 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v35 */
    /* JADX WARN: Type inference failed for: r11v36 */
    /* JADX WARN: Type inference failed for: r11v37 */
    /* JADX WARN: Type inference failed for: r11v5, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v42 */
    /* JADX WARN: Type inference failed for: r3v43 */
    /* JADX WARN: Type inference failed for: r3v44 */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r9v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r9v22 */
    /* JADX WARN: Type inference failed for: r9v23 */
    /* JADX WARN: Type inference failed for: r9v24 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r9v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static cn.jiguang.net.HttpResponse a(android.content.Context r9, cn.jiguang.net.HttpRequest r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 592
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jiguang.net.HttpUtils.a(android.content.Context, cn.jiguang.net.HttpRequest, boolean):cn.jiguang.net.HttpResponse");
    }

    private static void a(HttpRequest httpRequest, HttpURLConnection httpURLConnection) {
        if (httpRequest == null || httpURLConnection == null) {
            return;
        }
        setURLConnection(httpRequest.getRequestProperties(), httpURLConnection);
        if (httpRequest.getConnectTimeout() >= 0) {
            httpURLConnection.setConnectTimeout(httpRequest.getConnectTimeout());
        }
        if (httpRequest.getReadTimeout() >= 0) {
            httpURLConnection.setReadTimeout(httpRequest.getReadTimeout());
        }
    }

    private static void a(HttpURLConnection httpURLConnection, HttpResponse httpResponse) {
        if (httpResponse == null || httpURLConnection == null) {
            return;
        }
        httpResponse.setResponseCode(httpURLConnection.getResponseCode());
        httpResponse.setResponseHeader("expires", httpURLConnection.getHeaderField("Expires"));
        httpResponse.setResponseHeader("cache-control", httpURLConnection.getHeaderField("Cache-Control"));
    }

    public static String appendParaToUrl(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder(str);
        if (str.contains("?")) {
            sb2.append(ContainerUtils.FIELD_DELIMITER);
        } else {
            sb2.append("?");
        }
        sb2.append(str2);
        sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
        sb2.append(str3);
        return sb2.toString();
    }

    public static HttpURLConnection getHttpURLConnectionWithProxy(Context context, String str) {
        NetworkInfo activeNetworkInfo;
        String extraInfo;
        URL url = new URL(str);
        if (context != null) {
            try {
                if (context.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", context.getPackageName()) == 0 && (activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo()) != null && activeNetworkInfo.getType() != 1 && (extraInfo = activeNetworkInfo.getExtraInfo()) != null && (extraInfo.equals("cmwap") || extraInfo.equals("3gwap") || extraInfo.equals("uniwap"))) {
                    return (HttpURLConnection) url.openConnection(new Proxy(Proxy.Type.HTTP, new InetSocketAddress(f2680a, 80)));
                }
            } catch (Throwable unused) {
            }
        }
        return (HttpURLConnection) url.openConnection();
    }

    public static String getUrlWithParas(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        StringBuilder sb2 = new StringBuilder(str);
        String joinParas = joinParas(map);
        if (!TextUtils.isEmpty(joinParas)) {
            sb2.append("?");
            sb2.append(joinParas);
        }
        return sb2.toString();
    }

    public static String getUrlWithValueEncodeParas(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        StringBuilder sb2 = new StringBuilder(str);
        String joinParasWithEncodedValue = joinParasWithEncodedValue(map);
        if (!TextUtils.isEmpty(joinParasWithEncodedValue)) {
            sb2.append("?");
            sb2.append(joinParasWithEncodedValue);
        }
        return sb2.toString();
    }

    public static HttpResponse httpGet(Context context, HttpRequest httpRequest) {
        return a(context, httpRequest, false);
    }

    public static HttpResponse httpGet(Context context, String str) {
        return httpGet(context, new HttpRequest(str));
    }

    public static void httpGet(Context context, HttpRequest httpRequest, HttpListener httpListener) {
        new a(context, httpListener).execute(httpRequest);
    }

    public static void httpGet(Context context, String str, HttpListener httpListener) {
        new b(httpListener, context).execute(str);
    }

    public static String httpGetString(Context context, HttpRequest httpRequest) {
        HttpResponse httpGet = httpGet(context, httpRequest);
        if (httpGet == null) {
            return null;
        }
        return httpGet.getResponseBody();
    }

    public static String httpGetString(Context context, String str) {
        HttpResponse httpGet = httpGet(context, new HttpRequest(str));
        if (httpGet == null) {
            return null;
        }
        return httpGet.getResponseBody();
    }

    public static HttpResponse httpPost(Context context, HttpRequest httpRequest) {
        return a(context, httpRequest, true);
    }

    public static HttpResponse httpPost(Context context, String str) {
        return httpPost(context, new HttpRequest(str));
    }

    public static String httpPostString(Context context, String str) {
        HttpResponse httpPost = httpPost(context, new HttpRequest(str));
        if (httpPost == null) {
            return null;
        }
        return httpPost.getResponseBody();
    }

    public static String httpPostString(Context context, String str, Map<String, String> map) {
        HttpResponse httpPost = httpPost(context, new HttpRequest(str, map));
        if (httpPost == null) {
            return null;
        }
        return httpPost.getResponseBody();
    }

    public static String joinParas(Map<String, String> map) {
        if (map == null || map.size() == 0) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        Iterator<Map.Entry<String, String>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<String, String> next = it.next();
            sb2.append(next.getKey());
            sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
            sb2.append(next.getValue());
            if (it.hasNext()) {
                sb2.append(ContainerUtils.FIELD_DELIMITER);
            }
        }
        return sb2.toString();
    }

    public static String joinParasWithEncodedValue(Map<String, String> map) {
        StringBuilder sb2 = new StringBuilder("");
        if (map != null && map.size() > 0) {
            Iterator<Map.Entry<String, String>> it = map.entrySet().iterator();
            while (it.hasNext()) {
                try {
                    Map.Entry<String, String> next = it.next();
                    sb2.append(next.getKey());
                    sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
                    sb2.append(URLEncoder.encode(next.getValue(), "UTF-8"));
                    if (it.hasNext()) {
                        sb2.append(ContainerUtils.FIELD_DELIMITER);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
        return sb2.toString();
    }

    public static long parseGmtTime(String str) {
        try {
            return cn.jiguang.f.b.a("EEE, d MMM yyyy HH:mm:ss z").parse(str).getTime();
        } catch (Exception e10) {
            e10.printStackTrace();
            return -1L;
        }
    }

    public static byte[] readInputStream(InputStream inputStream) {
        return i.b(inputStream);
    }

    public static void setURLConnection(Map<String, String> map, HttpURLConnection httpURLConnection) {
        if (map == null || map.size() == 0 || httpURLConnection == null) {
            return;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (!TextUtils.isEmpty(entry.getKey())) {
                httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
            }
        }
    }
}
