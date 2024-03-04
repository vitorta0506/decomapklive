package io.grpc.netty.shaded.io.netty.handler.ssl;

import com.tencent.xmagic.license.RSAUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.http.conn.ssl.SSLSocketFactory;
/* loaded from: classes5.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f44565a = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(h.class);

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f44566b = Pattern.compile("^(?:TLS|SSL)_((?:(?!_WITH_).)+)_WITH_(.*)_(.*)$");

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f44567c = Pattern.compile("^(?:((?:(?:EXP-)?(?:(?:DHE|EDH|ECDH|ECDHE|SRP|RSA)-(?:DSS|RSA|ECDSA|PSK)|(?:ADH|AECDH|KRB5|PSK|SRP)))|EXP)-)?(.*)-(.*)$");

    /* renamed from: d  reason: collision with root package name */
    private static final Pattern f44568d = Pattern.compile("^(AES)_([0-9]+)_CBC$");

    /* renamed from: e  reason: collision with root package name */
    private static final Pattern f44569e = Pattern.compile("^(AES)_([0-9]+)_(.*)$");

    /* renamed from: f  reason: collision with root package name */
    private static final Pattern f44570f = Pattern.compile("^(AES)([0-9]+)$");

    /* renamed from: g  reason: collision with root package name */
    private static final Pattern f44571g = Pattern.compile("^(AES)([0-9]+)-(.*)$");

    /* renamed from: h  reason: collision with root package name */
    private static final ConcurrentMap<String, String> f44572h = io.grpc.netty.shaded.io.netty.util.internal.t.p0();

    /* renamed from: i  reason: collision with root package name */
    private static final ConcurrentMap<String, Map<String, String>> f44573i = io.grpc.netty.shaded.io.netty.util.internal.t.p0();

    /* renamed from: j  reason: collision with root package name */
    private static final Map<String, String> f44574j;

    /* renamed from: k  reason: collision with root package name */
    private static final Map<String, Map<String, String>> f44575k;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("TLS_AES_128_GCM_SHA256", "AEAD-AES128-GCM-SHA256");
        hashMap.put("TLS_AES_256_GCM_SHA384", "AEAD-AES256-GCM-SHA384");
        hashMap.put("TLS_CHACHA20_POLY1305_SHA256", "AEAD-CHACHA20-POLY1305-SHA256");
        f44574j = Collections.unmodifiableMap(hashMap);
        HashMap hashMap2 = new HashMap();
        hashMap2.put("TLS_AES_128_GCM_SHA256", Collections.singletonMap(SSLSocketFactory.TLS, "TLS_AES_128_GCM_SHA256"));
        hashMap2.put("TLS_AES_256_GCM_SHA384", Collections.singletonMap(SSLSocketFactory.TLS, "TLS_AES_256_GCM_SHA384"));
        hashMap2.put("TLS_CHACHA20_POLY1305_SHA256", Collections.singletonMap(SSLSocketFactory.TLS, "TLS_CHACHA20_POLY1305_SHA256"));
        hashMap2.put("AEAD-AES128-GCM-SHA256", Collections.singletonMap(SSLSocketFactory.TLS, "TLS_AES_128_GCM_SHA256"));
        hashMap2.put("AEAD-AES256-GCM-SHA384", Collections.singletonMap(SSLSocketFactory.TLS, "TLS_AES_256_GCM_SHA384"));
        hashMap2.put("AEAD-CHACHA20-POLY1305-SHA256", Collections.singletonMap(SSLSocketFactory.TLS, "TLS_CHACHA20_POLY1305_SHA256"));
        f44575k = Collections.unmodifiableMap(hashMap2);
    }

    private h() {
    }

    private static String a(String str, boolean z10) {
        String str2 = f44574j.get(str);
        if (str2 != null) {
            return z10 ? str2 : str;
        }
        String m10 = m(str, z10);
        if (m10 == null) {
            return null;
        }
        f44572h.putIfAbsent(str, m10);
        String substring = str.substring(4);
        HashMap hashMap = new HashMap(4);
        hashMap.put("", substring);
        hashMap.put(SSLSocketFactory.SSL, "SSL_" + substring);
        hashMap.put(SSLSocketFactory.TLS, "TLS_" + substring);
        f44573i.put(m10, hashMap);
        f44565a.debug("Cipher suite mapping: {} => {}", str, m10);
        return m10;
    }

    private static Map<String, String> b(String str) {
        Map<String, String> map = f44575k.get(str);
        if (map != null) {
            return map;
        }
        String h10 = h(str, false);
        if (h10 == null) {
            return null;
        }
        String str2 = "SSL_" + h10;
        String str3 = "TLS_" + h10;
        HashMap hashMap = new HashMap(4);
        hashMap.put("", h10);
        hashMap.put(SSLSocketFactory.SSL, str2);
        hashMap.put(SSLSocketFactory.TLS, str3);
        f44573i.putIfAbsent(str, hashMap);
        ConcurrentMap<String, String> concurrentMap = f44572h;
        concurrentMap.putIfAbsent(str3, str);
        concurrentMap.putIfAbsent(str2, str);
        io.grpc.netty.shaded.io.netty.util.internal.logging.b bVar = f44565a;
        bVar.debug("Cipher suite mapping: {} => {}", str3, str);
        bVar.debug("Cipher suite mapping: {} => {}", str2, str);
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(Iterable<String> iterable, StringBuilder sb2, StringBuilder sb3, boolean z10) {
        String next;
        Iterator<String> it = iterable.iterator();
        while (it.hasNext() && (next = it.next()) != null) {
            String i9 = i(next, z10);
            if (i9 == null) {
                i9 = next;
            }
            if (e0.j(i9)) {
                if (!v1.i(i9) && !v1.i(next)) {
                    sb2.append(i9);
                    sb2.append(':');
                } else {
                    sb3.append(i9);
                    sb3.append(':');
                }
            } else {
                throw new IllegalArgumentException("unsupported cipher suite: " + next + '(' + i9 + ')');
            }
        }
        if (sb2.length() == 0 && sb3.length() == 0) {
            throw new IllegalArgumentException("empty cipher suites");
        }
        if (sb2.length() > 0) {
            sb2.setLength(sb2.length() - 1);
        }
        if (sb3.length() > 0) {
            sb3.setLength(sb3.length() - 1);
        }
    }

    public static String d(String str, String str2) {
        Map<String, String> map = f44573i.get(str);
        if (map == null && (map = b(str)) == null) {
            return null;
        }
        String str3 = map.get(str2);
        if (str3 == null) {
            String str4 = map.get("");
            if (str4 == null) {
                return null;
            }
            return str2 + '_' + str4;
        }
        return str3;
    }

    private static String e(String str, boolean z10) {
        if (str.startsWith("AES")) {
            Matcher matcher = f44570f.matcher(str);
            if (matcher.matches()) {
                return matcher.replaceFirst("$1_$2_CBC");
            }
            Matcher matcher2 = f44571g.matcher(str);
            if (matcher2.matches()) {
                return matcher2.replaceFirst("$1_$2_$3");
            }
        }
        if ("DES-CBC3".equals(str)) {
            return "3DES_EDE_CBC";
        }
        if ("RC4".equals(str)) {
            return z10 ? "RC4_40" : "RC4_128";
        } else if ("DES-CBC".equals(str)) {
            return z10 ? "DES_CBC_40" : "DES_CBC";
        } else if ("RC2-CBC".equals(str)) {
            return z10 ? "RC2_CBC_40" : "RC2_CBC";
        } else {
            return str.replace('-', '_');
        }
    }

    private static String f(String str, boolean z10) {
        if (str.isEmpty()) {
            str = RSAUtils.RSA;
        } else if ("ADH".equals(str)) {
            str = "DH_anon";
        } else if ("AECDH".equals(str)) {
            str = "ECDH_anon";
        }
        String replace = str.replace('-', '_');
        if (z10) {
            return replace + "_EXPORT";
        }
        return replace;
    }

    private static String g(String str) {
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String h(java.lang.String r4, boolean r5) {
        /*
            if (r5 == 0) goto L15
            java.util.Map<java.lang.String, java.util.Map<java.lang.String, java.lang.String>> r5 = io.grpc.netty.shaded.io.netty.handler.ssl.h.f44575k
            java.lang.Object r5 = r5.get(r4)
            java.util.Map r5 = (java.util.Map) r5
            if (r5 == 0) goto L15
            java.lang.String r4 = "TLS"
            java.lang.Object r4 = r5.get(r4)
            java.lang.String r4 = (java.lang.String) r4
            return r4
        L15:
            java.util.regex.Pattern r5 = io.grpc.netty.shaded.io.netty.handler.ssl.h.f44567c
            java.util.regex.Matcher r4 = r5.matcher(r4)
            boolean r5 = r4.matches()
            if (r5 != 0) goto L23
            r4 = 0
            return r4
        L23:
            r5 = 1
            java.lang.String r0 = r4.group(r5)
            r1 = 0
            java.lang.String r2 = ""
            if (r0 != 0) goto L30
            r0 = r2
        L2e:
            r5 = 0
            goto L47
        L30:
            java.lang.String r3 = "EXP-"
            boolean r3 = r0.startsWith(r3)
            if (r3 == 0) goto L3e
            r1 = 4
            java.lang.String r0 = r0.substring(r1)
            goto L47
        L3e:
            java.lang.String r3 = "EXP"
            boolean r3 = r3.equals(r0)
            if (r3 == 0) goto L2e
            r0 = r2
        L47:
            java.lang.String r0 = f(r0, r5)
            r1 = 2
            java.lang.String r1 = r4.group(r1)
            java.lang.String r5 = e(r1, r5)
            r1 = 3
            java.lang.String r4 = r4.group(r1)
            java.lang.String r4 = g(r4)
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r0)
            java.lang.String r0 = "_WITH_"
            r1.append(r0)
            r1.append(r5)
            r0 = 95
            r1.append(r0)
            r1.append(r4)
            java.lang.String r4 = r1.toString()
            java.lang.String r0 = "CHACHA20"
            boolean r5 = r5.contains(r0)
            if (r5 == 0) goto L92
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            r5.append(r4)
            java.lang.String r4 = "_SHA256"
            r5.append(r4)
            java.lang.String r4 = r5.toString()
        L92:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.netty.shaded.io.netty.handler.ssl.h.h(java.lang.String, boolean):java.lang.String");
    }

    public static String i(String str, boolean z10) {
        String str2 = f44572h.get(str);
        return str2 != null ? str2 : a(str, z10);
    }

    private static String j(String str) {
        if (str.startsWith("AES_")) {
            Matcher matcher = f44568d.matcher(str);
            if (matcher.matches()) {
                return matcher.replaceFirst("$1$2");
            }
            Matcher matcher2 = f44569e.matcher(str);
            if (matcher2.matches()) {
                return matcher2.replaceFirst("$1$2-$3");
            }
        }
        return "3DES_EDE_CBC".equals(str) ? "DES-CBC3" : ("RC4_128".equals(str) || "RC4_40".equals(str)) ? "RC4" : ("DES40_CBC".equals(str) || "DES_CBC_40".equals(str)) ? "DES-CBC" : "RC2_CBC_40".equals(str) ? "RC2-CBC" : str.replace('_', '-');
    }

    private static String k(String str) {
        boolean endsWith = str.endsWith("_EXPORT");
        if (endsWith) {
            str = str.substring(0, str.length() - 7);
        }
        if (RSAUtils.RSA.equals(str)) {
            str = "";
        } else if (str.endsWith("_anon")) {
            str = 'A' + str.substring(0, str.length() - 5);
        }
        if (endsWith) {
            if (str.isEmpty()) {
                str = "EXP";
            } else {
                str = "EXP-" + str;
            }
        }
        return str.replace('_', '-');
    }

    private static String l(String str) {
        return str;
    }

    static String m(String str, boolean z10) {
        String str2 = f44574j.get(str);
        if (str2 != null) {
            return z10 ? str2 : str;
        }
        Matcher matcher = f44566b.matcher(str);
        if (matcher.matches()) {
            String k10 = k(matcher.group(1));
            String j10 = j(matcher.group(2));
            String l10 = l(matcher.group(3));
            if (k10.isEmpty()) {
                return j10 + '-' + l10;
            } else if (j10.contains("CHACHA20")) {
                return k10 + '-' + j10;
            } else {
                return k10 + '-' + j10 + '-' + l10;
            }
        }
        return null;
    }
}
