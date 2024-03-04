package qe;

import androidx.webkit.ProxyConfig;
import com.squareup.okhttp.Authenticator;
import com.squareup.okhttp.Challenge;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import java.io.IOException;
import java.net.Proxy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
/* loaded from: classes4.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private static final Comparator<String> f57275a = new a();

    /* renamed from: b  reason: collision with root package name */
    static final String f57276b;

    /* renamed from: c  reason: collision with root package name */
    public static final String f57277c;

    /* renamed from: d  reason: collision with root package name */
    public static final String f57278d;

    /* renamed from: e  reason: collision with root package name */
    public static final String f57279e;

    /* renamed from: f  reason: collision with root package name */
    public static final String f57280f;

    /* loaded from: classes4.dex */
    static class a implements Comparator<String> {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(String str, String str2) {
            if (str == str2) {
                return 0;
            }
            if (str == null) {
                return -1;
            }
            if (str2 == null) {
                return 1;
            }
            return String.CASE_INSENSITIVE_ORDER.compare(str, str2);
        }
    }

    static {
        String g10 = com.squareup.okhttp.internal.g.f().g();
        f57276b = g10;
        f57277c = g10 + "-Sent-Millis";
        f57278d = g10 + "-Received-Millis";
        f57279e = g10 + "-Selected-Protocol";
        f57280f = g10 + "-Response-Source";
    }

    public static void a(Request.Builder builder, Map<String, List<String>> map) {
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            String key = entry.getKey();
            if ("Cookie".equalsIgnoreCase(key) || "Cookie2".equalsIgnoreCase(key)) {
                if (!entry.getValue().isEmpty()) {
                    builder.addHeader(key, b(entry.getValue()));
                }
            }
        }
    }

    private static String b(List<String> list) {
        if (list.size() == 1) {
            return list.get(0);
        }
        StringBuilder sb2 = new StringBuilder();
        int size = list.size();
        for (int i9 = 0; i9 < size; i9++) {
            if (i9 > 0) {
                sb2.append("; ");
            }
            sb2.append(list.get(i9));
        }
        return sb2.toString();
    }

    public static long c(Headers headers) {
        return k(headers.get("Content-Length"));
    }

    public static long d(Request request) {
        return c(request.headers());
    }

    public static long e(Response response) {
        return c(response.headers());
    }

    public static boolean f(Headers headers) {
        return m(headers).contains(ProxyConfig.MATCH_ALL_SCHEMES);
    }

    public static boolean g(Response response) {
        return f(response.headers());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean h(String str) {
        return ("Connection".equalsIgnoreCase(str) || "Keep-Alive".equalsIgnoreCase(str) || "Proxy-Authenticate".equalsIgnoreCase(str) || "Proxy-Authorization".equalsIgnoreCase(str) || "TE".equalsIgnoreCase(str) || "Trailers".equalsIgnoreCase(str) || "Transfer-Encoding".equalsIgnoreCase(str) || "Upgrade".equalsIgnoreCase(str)) ? false : true;
    }

    public static List<Challenge> i(Headers headers, String str) {
        ArrayList arrayList = new ArrayList();
        int size = headers.size();
        for (int i9 = 0; i9 < size; i9++) {
            if (str.equalsIgnoreCase(headers.name(i9))) {
                String value = headers.value(i9);
                int i10 = 0;
                while (i10 < value.length()) {
                    int b10 = c.b(value, i10, " ");
                    String trim = value.substring(i10, b10).trim();
                    int c10 = c.c(value, b10);
                    if (!value.regionMatches(true, c10, "realm=\"", 0, 7)) {
                        break;
                    }
                    int i11 = c10 + 7;
                    int b11 = c.b(value, i11, "\"");
                    String substring = value.substring(i11, b11);
                    i10 = c.c(value, c.b(value, b11 + 1, ",") + 1);
                    arrayList.add(new Challenge(trim, substring));
                }
            }
        }
        return arrayList;
    }

    public static Request j(Authenticator authenticator, Response response, Proxy proxy) throws IOException {
        return response.code() == 407 ? authenticator.authenticateProxy(proxy, response) : authenticator.authenticate(proxy, response);
    }

    private static long k(String str) {
        if (str == null) {
            return -1L;
        }
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    public static Map<String, List<String>> l(Headers headers, String str) {
        TreeMap treeMap = new TreeMap(f57275a);
        int size = headers.size();
        for (int i9 = 0; i9 < size; i9++) {
            String name = headers.name(i9);
            String value = headers.value(i9);
            ArrayList arrayList = new ArrayList();
            List list = (List) treeMap.get(name);
            if (list != null) {
                arrayList.addAll(list);
            }
            arrayList.add(value);
            treeMap.put(name, Collections.unmodifiableList(arrayList));
        }
        if (str != null) {
            treeMap.put(null, Collections.unmodifiableList(Collections.singletonList(str)));
        }
        return Collections.unmodifiableMap(treeMap);
    }

    public static Set<String> m(Headers headers) {
        Set<String> emptySet = Collections.emptySet();
        int size = headers.size();
        for (int i9 = 0; i9 < size; i9++) {
            if ("Vary".equalsIgnoreCase(headers.name(i9))) {
                String value = headers.value(i9);
                if (emptySet.isEmpty()) {
                    emptySet = new TreeSet<>(String.CASE_INSENSITIVE_ORDER);
                }
                for (String str : value.split(",")) {
                    emptySet.add(str.trim());
                }
            }
        }
        return emptySet;
    }

    private static Set<String> n(Response response) {
        return m(response.headers());
    }

    public static Headers o(Headers headers, Headers headers2) {
        Set<String> m10 = m(headers2);
        if (m10.isEmpty()) {
            return new Headers.Builder().build();
        }
        Headers.Builder builder = new Headers.Builder();
        int size = headers.size();
        for (int i9 = 0; i9 < size; i9++) {
            String name = headers.name(i9);
            if (m10.contains(name)) {
                builder.add(name, headers.value(i9));
            }
        }
        return builder.build();
    }

    public static Headers p(Response response) {
        return o(response.networkResponse().request().headers(), response.headers());
    }

    public static boolean q(Response response, Headers headers, Request request) {
        for (String str : n(response)) {
            if (!com.squareup.okhttp.internal.i.h(headers.values(str), request.headers(str))) {
                return false;
            }
        }
        return true;
    }
}
